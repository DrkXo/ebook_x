import 'package:ebook_x/ebook_x.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('EbookMetadata', () {
    test('fromJson and toJson', () {
      final metadata = EbookMetadata(
        title: 'Test Book',
        author: 'Test Author',
        description: 'Test Description',
        language: 'en',
      );

      final json = metadata.toJson();
      final fromJson = EbookMetadata.fromJson(json);

      expect(fromJson.title, metadata.title);
      expect(fromJson.author, metadata.author);
      expect(fromJson.description, metadata.description);
      expect(fromJson.language, metadata.language);
    });
  });

  group('Chapter', () {
    test('fromJson and toJson', () {
      final chapter = Chapter(
        id: 'ch1',
        title: 'Chapter 1',
        content: [ChapterContent.text('This is the content.')],
        order: 1,
      );

      final json = chapter.toJson();
      final fromJson = Chapter.fromJson(json);

      expect(fromJson.id, chapter.id);
      expect(fromJson.title, chapter.title);
      expect(fromJson.content, chapter.content);
      expect(fromJson.order, chapter.order);
    });
  });

  group('Ebook', () {
    test('creation', () {
      final metadata = EbookMetadata(title: 'Test', author: 'Author');
      final chapter = Chapter(id: '1', title: 'Ch1', content: [ChapterContent.text('Content')]);
      final ebook = Ebook(
        metadata: metadata,
        chapters: [chapter],
        format: 'epub',
      );

      expect(ebook.metadata.title, 'Test');
      expect(ebook.chapters.length, 1);
      expect(ebook.format, 'epub');
    });
  });

  group('EbookXController', () {
    late Ebook testEbook;
    late EbookXController controller;

    setUp(() {
      final metadata = EbookMetadata(title: 'Test Book', author: 'Author');
      final chapters = [
        Chapter(
          id: 'ch1',
          title: 'Chapter 1',
          content: [ChapterContent.text(('A ' * 500).trim())],
          order: 0,
        ),
        Chapter(
          id: 'ch2',
          title: 'Chapter 2',
          content: [ChapterContent.text(('B ' * 750).trim())],
          order: 1,
        ),
        Chapter(id: 'ch3', title: 'Chapter 3', content: [ChapterContent.text(('C ' * 250).trim())], order: 2),
      ];
      testEbook = Ebook(metadata: metadata, chapters: chapters, format: 'epub');
      controller = EbookXController(testEbook, wordsPerPage: 250);
    });

    test('initial state', () {
      expect(controller.currentChapterIndex, 0);
      expect(controller.currentPageIndex, 0);
      expect(controller.totalChapters, 3);
      expect(controller.totalPagesInChapter, 2); // 500 words / 250 = 2
      final page = controller.getCurrentPageContent();
      expect(page.startOffset, 0);
      expect(page.content.length, 1);
    });

    test('nextPage within chapter', () {
      // Chapter 2 has 750 words, so 3 pages
      controller.goToChapter(1);
      expect(controller.nextPage(), true);
      expect(controller.currentPageIndex, 1);
      final page = controller.getCurrentPageContent();
      expect(page.startOffset, greaterThan(0));
    });

    test('nextPage to next chapter', () {
      expect(controller.nextPage(), true);
      expect(controller.currentChapterIndex, 1);
      expect(controller.currentPageIndex, 0);
    });

    test('nextPage at end', () {
      controller.goToChapter(2); // Last chapter, 500 chars, 1 page
      expect(controller.nextPage(), false);
    });

    test('previousPage within chapter', () {
      controller.goToChapter(1);
      controller.nextPage(); // Go to page 1 of chapter 1 (index 1)
      expect(controller.previousPage(), true);
      expect(controller.currentPageIndex, 0);
    });

    test('previousPage to previous chapter', () {
      controller.goToChapter(1);
      expect(controller.previousPage(), true);
      expect(controller.currentChapterIndex, 0);
      expect(controller.currentPageIndex, 0);
    });

    test('previousPage at start', () {
      expect(controller.previousPage(), false);
    });

    test('goToChapter', () {
      controller.goToChapter(2);
      expect(controller.currentChapterIndex, 2);
      expect(controller.currentPageIndex, 0);
    });

    test('goToChapter out of bounds', () {
      expect(() => controller.goToChapter(10), throwsRangeError);
    });
  });

  group('EbookX', () {
    late EbookX reader;

    setUp(() {
      reader = EbookX();
    });

    test('read throws on empty path', () async {
      expect(
        () async => await reader.read(''),
        throwsA(isA<InvalidEbookException>()),
      );
    });

    test('read throws on non-existent file', () async {
      expect(
        () async => await reader.read('nonexistent.epub'),
        throwsA(isA<FileNotFoundException>()),
      );
    });

    // Note: For full parsing tests, would need sample EPUB files
    // This covers basic error handling
  });
}
