import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';
import 'package:letsread/domain/value_objects/Failure.dart';

class PublishedDate extends Equatable {
  final String _value;

  const PublishedDate._(this._value);

  static Either<Failure, PublishedDate> create(String value) {
    final formatter = DateFormat('yyyy-MM-dd');
    try {
      formatter.parseStrict(value);
    } catch (e) {
      return const Left(Failure(message: 'Incorrect date format [yyyy-mm-dd]'));
    }
    return Right(PublishedDate._(value));
  }

  DateTime toDate() => DateTime.parse(_value);

  @override
  List<Object?> get props => [_value];
}
