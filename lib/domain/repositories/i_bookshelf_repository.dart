import 'package:letsread/domain/entities/book_shelf.dart';
import 'package:letsread/domain/value_objects/identity.dart';

abstract class IBookShelfRepository {
  add({required BookShelf bookShelf});
  update({required BookShelf bookShelf});
  find({required Identity shelfId});
}
