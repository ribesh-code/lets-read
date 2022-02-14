import 'package:flutter_test/flutter_test.dart';
import 'package:letsread/domain/domain_exception.dart';
import 'package:letsread/domain/entities/book.dart';
import 'package:letsread/domain/entities/book_shelf.dart';
import 'package:letsread/domain/value_objects/identity.dart';
import 'package:matcher/matcher.dart' as matcher;

void main() {
  BookShelf? sut; // system under test

  setUp(() {
    sut = BookShelf(id: Identity.fromString('aaa'));
  });

  group('BookShelf', () {
    test(
        'addBook should throw and DomainException when the book shelf exceed its capacity',
        () {
      // arrange
      for (var i = 0; i < 10; i++) {
        sut?.addBook(book: Book());
      }
      // assert
      expect(() => sut?.addBook(book: Book()),
          throwsA(const matcher.TypeMatcher<DomainException>()));
    });

    test('addBook should add book to shelf', () {
      // arrange
      var book = Book();
      // act
      sut?.addBook(book: book);
      // assert
      expect(sut?.books.length, 1);
    });
  });
}
