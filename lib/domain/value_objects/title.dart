import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:letsread/domain/value_objects/failure.dart';

class Title extends Equatable {
  final String value;

  const Title._(this.value);

  static Either<Failure, Title> create(String? value) {
    if (value!.isEmpty) {
      return const Left(
        Failure(message: 'Title cannot be empty'),
      );
    } else {
      return Right(
        Title._(value),
      );
    }
  }

  @override
  List<Object?> get props => [value];
}
