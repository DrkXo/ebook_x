import 'package:ebook_x/models/bookmark.dart';
import 'package:ebook_x/models/ebook/ebook.dart';
import 'package:ebook_x/models/page.dart';
import 'package:flutter/foundation.dart';

/// A controller for managing ebook reading state, including chapter navigation and pagination.
class EbookXController with ChangeNotifier {
  final Ebook ebook;
  int _currentChapterIndex = 0;
  int _currentPageIndex = 0;
  final int wordsPerPage;
  final Map<int, String> _cachedFullContent = {};
  final Map<int, int> _chapterPageCounts = {};
  final Map<int, List<Page>> _pages = {};
  final List<Bookmark> _bookmarks = [];
  int? _totalPages;

  EbookXController(this.ebook, {this.wordsPerPage = 200}) {
    // Precompute pages for all chapters
    for (int i = 0; i < totalChapters; i++) {
      _currentChapterIndex = i;
      _computePages();
    }
    _currentChapterIndex = 0; // Reset to first chapter
    _totalPages = _chapterPageCounts.values.fold<int>(
      0,
      (sum, count) => sum + count,
    );
  }

  Chapter get currentChapter => ebook.chapters[_currentChapterIndex];
  int get currentChapterIndex => _currentChapterIndex;
  int get currentPageIndex => _currentPageIndex;
  int get totalChapters => ebook.chapters.length;
  List<Bookmark> get bookmarks => _bookmarks;

  int get currentPageOffset =>
      _pages[_currentChapterIndex]?.isNotEmpty == true &&
          _currentPageIndex < _pages[_currentChapterIndex]!.length
      ? _pages[_currentChapterIndex]![_currentPageIndex].startOffset
      : 0;

  int get _totalPagesInBook => _totalPages ?? 0;

  double getProgress() {
    final totalPages = _totalPagesInBook;
    int pagesBefore = 0;
    for (int i = 0; i < _currentChapterIndex; i++) {
      pagesBefore += _chapterPageCounts[i] ?? 0;
    }
    final currentGlobalPage =
        pagesBefore + _currentPageIndex + 1; // +1 for 1-based
    return totalPages > 0 ? (currentGlobalPage / totalPages) * 100 : 0;
  }

  String getCurrentPageTitle() {
    return '${currentChapter.title} - Page ${_currentPageIndex + 1}';
  }

  String getCurrentPageText() {
    final page = getCurrentPageContent();
    return getFullChapterContent().substring(page.startOffset, page.endOffset);
  }

  String getPageText(int chapterIndex, int pageIndex) {
    if (chapterIndex < 0 || chapterIndex >= totalChapters) {
      throw RangeError('Invalid chapter index: $chapterIndex');
    }
    final chapterPages = _pages[chapterIndex];
    if (chapterPages == null ||
        pageIndex < 0 ||
        pageIndex >= chapterPages.length) {
      throw RangeError('Invalid page index: $pageIndex');
    }
    final fullContent = _getFullContentForChapter(chapterIndex);
    final page = chapterPages[pageIndex];
    return fullContent.substring(page.startOffset, page.endOffset);
  }

  String _getFullContentForChapter(int chapterIndex) {
    if (_cachedFullContent.containsKey(chapterIndex)) {
      return _cachedFullContent[chapterIndex]!;
    }
    final chapter = ebook.chapters[chapterIndex];
    final content = chapter.content
        .map(
          (c) => c.when(
            text: (value) => value,
            html: (value) => value,
            image: (src, alt, title) =>
                '[IMAGE: $src${alt != null ? ' alt="$alt"' : ''}]',
          ),
        )
        .join(' ');
    _cachedFullContent[chapterIndex] = content;
    return content;
  }

  List<Map<String, dynamic>> getChapterInfos() {
    return List.generate(
      totalChapters,
      (index) => {
        'title': ebook.chapters[index].title,
        'pageCount': _chapterPageCounts[index] ?? 0,
      },
    );
  }

  String getProgressString() {
    return '${getProgress().toStringAsFixed(1)}%';
  }

  String getFullChapterContent() {
    if (_cachedFullContent.containsKey(_currentChapterIndex)) {
      return _cachedFullContent[_currentChapterIndex]!;
    }
    final content = currentChapter.content
        .map(
          (c) => c.when(
            text: (value) => value,
            html: (value) => value,
            image: (src, alt, title) =>
                '[IMAGE: $src${alt != null ? ' alt="$alt"' : ''}]',
          ),
        )
        .join(' ');
    _cachedFullContent[_currentChapterIndex] = content;
    return content;
  }

  List<String> getChapterWords() {
    return getFullChapterContent()
        .split(RegExp(r'\s+'))
        .where((w) => w.isNotEmpty)
        .toList();
  }

  void _computePages() {
    final words = getChapterWords();
    _pages[_currentChapterIndex] = [];
    for (int i = 0; i < words.length; i += wordsPerPage) {
      final end = (i + wordsPerPage < words.length)
          ? i + wordsPerPage
          : words.length;
      // Calculate accurate offsets based on word positions in the full content
      int startOffset = 0;
      for (int j = 0; j < i; j++) {
        startOffset += words[j].length + 1; // +1 for space
      }
      int endOffset = startOffset;
      for (int j = i; j < end; j++) {
        endOffset += words[j].length;
        if (j < end - 1) endOffset += 1; // space between words
      }
      _pages[_currentChapterIndex]!.add(
        Page(
          startOffset: startOffset,
          endOffset: endOffset,
          content: currentChapter.content,
        ),
      );
    }
    _chapterPageCounts[_currentChapterIndex] =
        _pages[_currentChapterIndex]!.length;
  }

  int get totalPagesInChapter => _pages[_currentChapterIndex]?.length ?? 0;

  Page getCurrentPageContent() {
    final chapterPages = _pages[_currentChapterIndex];
    return chapterPages != null && _currentPageIndex < chapterPages.length
        ? chapterPages[_currentPageIndex]
        : Page(startOffset: 0, endOffset: 0, content: []);
  }

  bool nextPage() {
    if (_currentPageIndex < totalPagesInChapter - 1) {
      _currentPageIndex++;
      notifyListeners();
      return true;
    } else if (_currentChapterIndex < totalChapters - 1) {
      _changeChapter(_currentChapterIndex + 1);
      return true;
    }
    return false;
  }

  bool previousPage() {
    if (_currentPageIndex > 0) {
      _currentPageIndex--;
      notifyListeners();
      return true;
    } else if (_currentChapterIndex > 0) {
      _changeChapter(_currentChapterIndex - 1);
      _currentPageIndex = totalPagesInChapter - 1;
      notifyListeners();
      return true;
    }
    return false;
  }

  void _changeChapter(int newIndex) {
    _currentChapterIndex = newIndex;
    _currentPageIndex = 0;
    notifyListeners();
  }

  void goToChapter(int index) {
    if (index < 0 || index >= totalChapters) {
      throw RangeError('Invalid chapter index: $index');
    }
    _changeChapter(index);
  }

  void goToPage(int pageIndex) {
    if (pageIndex < 0 || pageIndex >= totalPagesInChapter) {
      throw RangeError('Invalid page index: $pageIndex');
    }
    _currentPageIndex = pageIndex;
    notifyListeners();
  }

  void addBookmark(String title) {
    _bookmarks.add(
      Bookmark(
        chapterIndex: _currentChapterIndex,
        pageIndex: _currentPageIndex,
        title: title,
      ),
    );
    notifyListeners();
  }

  void removeBookmark(int index) {
    if (index < 0 || index >= _bookmarks.length) {
      throw RangeError('Invalid bookmark index: $index');
    }
    _bookmarks.removeAt(index);
    notifyListeners();
  }

  void goToBookmark(int index) {
    if (index < 0 || index >= _bookmarks.length) {
      throw RangeError('Invalid bookmark index: $index');
    }
    final bookmark = _bookmarks[index];
    goToChapter(bookmark.chapterIndex);
    goToPage(bookmark.pageIndex);
  }

  List<int> searchInChapter(String query) {
    final content = getFullChapterContent().toLowerCase();
    final queryLower = query.toLowerCase();
    List<int> pageIndices = [];
    final chapterPages = _pages[_currentChapterIndex];
    if (chapterPages != null) {
      for (int i = 0; i < chapterPages.length; i++) {
        final pageContent = content.substring(
          chapterPages[i].startOffset,
          chapterPages[i].endOffset,
        );
        if (pageContent.contains(queryLower)) {
          pageIndices.add(i);
        }
      }
    }
    return pageIndices;
  }
}
