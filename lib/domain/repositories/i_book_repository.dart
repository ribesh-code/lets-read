import 'package:letsread/domain/entities/book.dart';
import 'package:letsread/domain/value_objects/identity.dart';

abstract class IBookRepository {
  add({required Book book});
  update({required Book book});
  delete({required Identity bookId});
  find({required Identity bookId});
  finaAll();
}
