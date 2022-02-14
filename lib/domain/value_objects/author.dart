import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:letsread/domain/value_objects/Failure.dart';

class Author extends Equatable {
  final String value;

  const Author._(this.value);

  static Either<Failure, Author> create(String value) {
    if (value.isEmpty) {
      return const Left(Failure(message: 'author cannot be empty'));
    } else {
      return Right(Author._(value));
    }
  }

  @override
  List<Object?> get props => [value];
}
