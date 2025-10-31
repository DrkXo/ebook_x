import 'package:ebook_x/models/ebook/ebook.dart';

/// A controller for managing ebook reading state, including chapter navigation and pagination.
class EbookXController {
  final Ebook ebook;
  int _currentChapterIndex = 0;
  int _currentPageIndex = 0;
  final int charactersPerPage;

  EbookXController(this.ebook, {this.charactersPerPage = 1000});

  Chapter get currentChapter => ebook.chapters[_currentChapterIndex];
  int get currentChapterIndex => _currentChapterIndex;
  int get currentPageIndex => _currentPageIndex;
  int get totalChapters => ebook.chapters.length;

  String getFullChapterContent() {
    return currentChapter.content.map((c) => c.when(
      text: (value) => value,
      html: (value) => value,
      image: (src, alt, title) => '[IMAGE: $src${alt != null ? ' alt="$alt"' : ''}]',
    )).join('');
  }

  int get totalPagesInChapter =>
      (getFullChapterContent().length / charactersPerPage).ceil();

  String getCurrentPageContent() {
    final content = getFullChapterContent();
    final start = _currentPageIndex * charactersPerPage;
    final end = start + charactersPerPage;
    return content.substring(
      start,
      end > content.length ? content.length : end,
    );
  }

  bool nextPage() {
    if (_currentPageIndex < totalPagesInChapter - 1) {
      _currentPageIndex++;
      return true;
    } else if (_currentChapterIndex < totalChapters - 1) {
      _currentChapterIndex++;
      _currentPageIndex = 0;
      return true;
    }
    return false;
  }

  bool previousPage() {
    if (_currentPageIndex > 0) {
      _currentPageIndex--;
      return true;
    } else if (_currentChapterIndex > 0) {
      _currentChapterIndex--;
      _currentPageIndex = totalPagesInChapter - 1;
      return true;
    }
    return false;
  }

  void goToChapter(int index) {
    if (index >= 0 && index < totalChapters) {
      _currentChapterIndex = index;
      _currentPageIndex = 0;
    }
  }
}
