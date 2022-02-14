import 'package:flutter_test/flutter_test.dart';
import 'package:letsread/application/boundaries/add_book/add_book_input_dto.dart';
import 'package:letsread/application/usecases/add_book_usecase.dart';
import 'package:letsread/domain/factories/i_entity_factory.dart';
import 'package:letsread/domain/repositories/i_book_repository.dart';
import 'package:letsread/domain/repositories/i_bookshelf_repository.dart';
import 'package:letsread/domain/value_objects/author.dart';
import 'package:letsread/domain/value_objects/identity.dart';
import 'package:letsread/domain/value_objects/isbn.dart';
import 'package:letsread/domain/value_objects/published_date.dart';
import 'package:letsread/domain/value_objects/title.dart';
import 'package:mockito/mockito.dart';

class MockShelfRepository extends Mock implements IBookShelfRepository {}

class MockBookRepository extends Mock implements IBookRepository {}

class MockEntityFactory extends Mock implements IEntityFactory {}

void main() {
  AddBookUseCase? sut;
  MockShelfRepository? mockShelfRepository;
  MockBookRepository? mockBookRepository;
  MockEntityFactory? mockEntityFactory;

  setUp(() {
    mockBookRepository = MockBookRepository();
    mockEntityFactory = MockEntityFactory();
    mockShelfRepository = MockShelfRepository();
    sut = AddBookUseCase(
      bookShelfRepository: mockShelfRepository!,
      bookRepository: mockBookRepository!,
      entityFactory: mockEntityFactory!,
    );
  });

  group('AddBookUsecase', () {
    Title? t;
    Author? a;
    Isbn? i;
    PublishedDate? pd;
    var title = Title.create('Programming is fun!!!!').getOrElse(() => t!);
    var author = Author.create('Ribesh Basnet').getOrElse(() => a!);
    var isbn = Isbn.create('ISBN-10: 0-596-52068-9').getOrElse(() => i!);
    var publishedDate = PublishedDate.create('2020-01-20').getOrElse(() => pd!);
    var input = AddBookInputDto(
      shelfId: Identity.fromString('add'),
      title: title,
      author: author,
      isbn: isbn,
      publishedDate: publishedDate,
    );
    test('should return a failure when bookshelf does not exist', () async {
      // arrange
      when(mockShelfRepository?.find(
        shelfId: input.shelfId,
      )).thenAnswer((_) => null);

      // act
      var result = await sut?.execute(input);

      //assert
      expect(result?.isLeft(), true);
    });
  });
}
