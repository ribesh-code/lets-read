import 'package:letsread/application/boundaries/add_book/add_book_output_dto.dart';
import 'package:letsread/application/boundaries/add_book/add_book_input_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:letsread/application/boundaries/add_book/i_add_book_usecase.dart';
import 'package:letsread/domain/factories/i_entity_factory.dart';
import 'package:letsread/domain/repositories/i_book_repository.dart';
import 'package:letsread/domain/repositories/i_bookshelf_repository.dart';
import 'package:letsread/domain/value_objects/failure.dart';

class AddBookUseCase implements IAddbookUsecase {
  final IBookShelfRepository _bookShelfRepository;
  final IBookRepository _bookRepository;
  final IEntityFactory _entityFactory;

  AddBookUseCase({
    required IBookShelfRepository bookShelfRepository,
    required IBookRepository bookRepository,
    required IEntityFactory entityFactory,
  })  : _bookShelfRepository = bookShelfRepository,
        _bookRepository = bookRepository,
        _entityFactory = entityFactory;

  @override
  Future<Either<Failure, AddBookOutputDto>> execute(
      AddBookInputDto input) async {
    return const Left(Failure(message: 'There was an error adding book'));
  }
}
