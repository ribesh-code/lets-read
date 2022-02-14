import 'package:flutter_test/flutter_test.dart';
import 'package:letsread/domain/value_objects/failure.dart';
import 'package:letsread/domain/value_objects/title.dart';
import 'package:matcher/matcher.dart' as matcher;

void main() {
  group('Title', () {
    test('Should return failure when value is empty', () {
      // arrange
      var title = Title.create('').fold((err) => err, (title) => title);
      // assert
      expect(title, const matcher.TypeMatcher<Failure>());
    });

    test('Should create title when value is not empty', () {
      // arrange
      Title? s;
      String str = 'Programming';
      Title title = Title.create(str).getOrElse(() => s!);
      // assert
      expect(title.value, str);
    });
  });
}
