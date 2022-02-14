import 'package:flutter_test/flutter_test.dart';
import 'package:letsread/domain/value_objects/Failure.dart';

import 'package:letsread/domain/value_objects/isbn.dart';
import 'package:matcher/matcher.dart' as matcher;

void main() {
  group('ISBN', () {
    test('should return failure when invalid isbn', () {
      //arrange
      var isbn = Isbn.create('').fold((err) => err, (isbn) => isbn);
      //arrange
      expect(isbn, const matcher.TypeMatcher<Failure>());
    });

    test('should return isbn when value is valid isbn-10', () {
      // arrange
      Isbn? isb; // dependency
      String str = 'ISBN-10: 0-596-52068-9';
      var isbn = Isbn.create(str).getOrElse(() => isb!);

      // assert
      expect(isbn.value, str);
    });

    test('should return isbn when value is valid isbn-13', () {
      // arrange
      Isbn? isb; // dependency
      String str = 'ISBN-13: 978-0-596-52068-7';
      var isbn = Isbn.create(str).getOrElse(() => isb!);

      // assert
      expect(isbn.value, str);
    });
  });
}
