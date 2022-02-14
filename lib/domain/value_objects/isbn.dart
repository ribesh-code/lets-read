import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:letsread/domain/value_objects/Failure.dart';

class Isbn extends Equatable {
  final String value;

  const Isbn._(this.value);

  static Either<Failure, Isbn> create(String value) {
    bool isOkay = _isValid(value);
    if (!isOkay) {
      return const Left(
        Failure(message: 'invalid isbn number'),
      );
    } else {
      return Right(Isbn._(value));
    }
  }

  static bool _isValid(String value) {
    var regex =
        r'^(?:ISBN(?:-1[03])?:? )?(?=[0-9X]{10}$|(?=(?:[0-9]+[- ]){3})[- 0-9X]{13}$|97[89][0-9]{10}$|(?=(?:[0-9]+[- ]){4})[- 0-9]{17}$)(?:97[89][- ]?)?[0-9]{1,5}[- ]?[0-9]+[- ]?[0-9]+[- ]?[0-9X]$';
    RegExp exp = RegExp(regex);

    return exp.hasMatch(value);
  }

  @override
  List<Object?> get props => [value];
}
