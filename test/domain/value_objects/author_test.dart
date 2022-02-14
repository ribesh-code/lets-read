import 'package:flutter_test/flutter_test.dart';
import 'package:letsread/domain/value_objects/Failure.dart';
import 'package:letsread/domain/value_objects/author.dart';
import 'package:matcher/matcher.dart' as matcher;

void main() {
  group('Author', () {
    test('should return failure if author is empty', () {
      var author = Author.create('').fold((l) => l, (r) => r);

      expect(author, const matcher.TypeMatcher<Failure>());
    });

    test('should create author when value is not empty', () {
      Author? a;
      var authorName = 'Ribesh';
      var author = Author.create(authorName).getOrElse(() => a!);
      expect(author.value, authorName);
    });
  });
}
