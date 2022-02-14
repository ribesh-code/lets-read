import 'package:letsread/application/boundaries/add_book/add_book_input_dto.dart';
import 'package:letsread/application/boundaries/add_book/add_book_output_dto.dart';
import 'package:letsread/application/boundaries/i_usecase.dart';

abstract class IAddbookUsecase
    extends IUseCase<AddBookInputDto, AddBookOutputDto> {}
