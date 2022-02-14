import 'package:dartz/dartz.dart';
import 'package:letsread/domain/value_objects/failure.dart';

abstract class IUseCase<TUseCaseInput, TUseCaseOutPut> {
  Future<Either<Failure, TUseCaseOutPut>> execute(TUseCaseInput input);
}
