import 'package:flutter_test/flutter_test.dart';
import 'package:letsread/domain/value_objects/Failure.dart';
import 'package:letsread/domain/value_objects/published_date.dart';
import 'package:matcher/matcher.dart' as matcher;

void main() {
  group('Published Date', () {
    test('should return failure when date is not formmated correctly', () {
      var date = PublishedDate.create('2022.01.20').fold((l) => l, (r) => r);

      expect(date, const matcher.TypeMatcher<Failure>());
    });

    test('should set date when date is valid', () {
      PublishedDate? d; // dependency
      var dateStr = '2022-01-20';
      var date = PublishedDate.create(dateStr).getOrElse(() => d!);
      expect(date.toDate(), DateTime(2022, 01, 20));
    });
  });
}
