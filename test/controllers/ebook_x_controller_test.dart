import 'package:flutter_test/flutter_test.dart';
import 'package:ebook_x/controllers/ebook_x_controller.dart';
import 'package:ebook_x/models/ebook/ebook.dart';
import 'package:ebook_x/models/page.dart';
import 'package:ebook_x/models/bookmark.dart';

void main() {
  late Ebook sampleEbook;
  late EbookXController controller;

  setUp(() {
    // Create sample ebook data
    final chapter1 = Chapter(
      id: '1',
      title: 'Chapter 1',
      content: [
        ChapterContent.text('This is the first chapter with some text. ' * 50), // Make it longer
        ChapterContent.html('<p>HTML content here.</p>'),
        ChapterContent.image('image1.png', alt: 'Alt text'),
      ],
    );
    final chapter2 = Chapter(
      id: '2',
      title: 'Chapter 2',
      content: [
        ChapterContent.text('Second chapter content.'),
      ],
    );
    final metadata = EbookMetadata(title: 'Test Book', author: 'Author');
    sampleEbook = Ebook(
      metadata: metadata,
      chapters: [chapter1, chapter2],
      format: 'epub',
    );
    controller = EbookXController(sampleEbook);
  });

  tearDown(() {
    controller.dispose();
  });

  group('Initialization', () {
    test('should initialize with correct defaults', () {
      expect(controller.currentChapterIndex, 0);
      expect(controller.currentPageIndex, 0);
      expect(controller.totalChapters, 2);
      expect(controller.wordsPerPage, 200);
    });

    test('should compute pages on initialization', () {
      expect(controller.totalPagesInChapter, greaterThan(0));
    });
  });

  group('Navigation', () {
    test('nextPage should advance page', () {
      final initialPage = controller.currentPageIndex;
      final result = controller.nextPage();
      expect(result, true);
      expect(controller.currentPageIndex, initialPage + 1);
    });

    test('nextPage should go to next chapter when at last page', () {
      // Go to last page of first chapter
      while (controller.nextPage()) {}
      expect(controller.currentChapterIndex, 1);
      expect(controller.currentPageIndex, 0);
    });

    test('previousPage should go back', () {
      controller.nextPage();
      final result = controller.previousPage();
      expect(result, true);
      expect(controller.currentPageIndex, 0);
    });

    test('goToChapter should change chapter', () {
      controller.goToChapter(1);
      expect(controller.currentChapterIndex, 1);
      expect(controller.currentPageIndex, 0);
    });

    test('goToPage should change page', () {
      if (controller.totalPagesInChapter > 1) {
        controller.goToPage(1);
        expect(controller.currentPageIndex, 1);
      } else {
        controller.goToPage(0);
        expect(controller.currentPageIndex, 0);
      }
    });
  });

  group('Getters', () {
    test('currentChapter should return correct chapter', () {
      expect(controller.currentChapter.title, 'Chapter 1');
    });

    test('getCurrentPageTitle should return formatted title', () {
      expect(controller.getCurrentPageTitle(), 'Chapter 1 - Page 1');
    });

    test('currentPageOffset should return offset', () {
      expect(controller.currentPageOffset, 0);
    });

    test('getProgress should return percentage', () {
      final progress = controller.getProgress();
      expect(progress, greaterThanOrEqualTo(0));
      expect(progress, lessThanOrEqualTo(100));
    });

    test('getCurrentPageText should return page text', () {
      final text = controller.getCurrentPageText();
      expect(text, isA<String>());
      expect(text.isNotEmpty, true);
    });

    test('getPageText should return text for specific page', () {
      final text = controller.getPageText(0, 0);
      expect(text, isA<String>());
      expect(text.isNotEmpty, true);
    });

    test('getChapterInfos should return chapter info list', () {
      final infos = controller.getChapterInfos();
      expect(infos.length, 2);
      expect(infos[0]['title'], 'Chapter 1');
      expect(infos[0]['pageCount'], greaterThan(0));
      expect(infos[1]['title'], 'Chapter 2');
    });

    test('getProgressString should return formatted progress', () {
      final progressStr = controller.getProgressString();
      expect(progressStr, endsWith('%'));
      expect(double.tryParse(progressStr.replaceAll('%', '')), isNotNull);
    });
  });

  group('Content Handling', () {
    test('getCurrentPageContent should return Page object', () {
      final page = controller.getCurrentPageContent();
      expect(page, isA<Page>());
      expect(page.startOffset, 0);
    });

    test('getFullChapterContent should cache content', () {
      final content1 = controller.getFullChapterContent();
      final content2 = controller.getFullChapterContent();
      expect(content1, content2); // Cached
    });
  });

  group('Bookmarks', () {
    test('addBookmark should add bookmark', () {
      controller.addBookmark('Test Bookmark');
      expect(controller.bookmarks.length, 1);
      expect(controller.bookmarks[0].title, 'Test Bookmark');
    });

    test('removeBookmark should remove bookmark', () {
      controller.addBookmark('Test');
      controller.removeBookmark(0);
      expect(controller.bookmarks.length, 0);
    });

    test('goToBookmark should navigate to bookmark', () {
      controller.addBookmark('Test');
      controller.goToChapter(1);
      controller.goToBookmark(0);
      expect(controller.currentChapterIndex, 0);
    });
  });

  group('Search', () {
    test('searchInChapter should find matches', () {
      final results = controller.searchInChapter('chapter');
      expect(results, isNotEmpty);
    });
  });

  group('Error Handling', () {
    test('goToChapter with invalid index should throw RangeError', () {
      expect(() => controller.goToChapter(-1), throwsRangeError);
      expect(() => controller.goToChapter(10), throwsRangeError);
    });

    test('goToPage with invalid index should throw RangeError', () {
      expect(() => controller.goToPage(-1), throwsRangeError);
    });

    test('removeBookmark with invalid index should throw RangeError', () {
      expect(() => controller.removeBookmark(-1), throwsRangeError);
      expect(() => controller.removeBookmark(10), throwsRangeError);
    });

    test('goToBookmark with invalid index should throw RangeError', () {
      expect(() => controller.goToBookmark(-1), throwsRangeError);
      expect(() => controller.goToBookmark(10), throwsRangeError);
    });

    test('getPageText with invalid chapter index should throw RangeError', () {
      expect(() => controller.getPageText(-1, 0), throwsRangeError);
      expect(() => controller.getPageText(10, 0), throwsRangeError);
    });

    test('getPageText with invalid page index should throw RangeError', () {
      expect(() => controller.getPageText(0, -1), throwsRangeError);
      expect(() => controller.getPageText(0, 100), throwsRangeError);
    });
  });
}