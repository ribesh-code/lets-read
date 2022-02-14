import 'package:letsread/domain/domain_exception.dart';
import 'package:letsread/domain/entities/book.dart';
import 'package:letsread/domain/value_objects/identity.dart';

class BookShelf {
  static const maxCapacity = 10;

  Identity id;
  List<Book>? _books;
  List<Book> get books => _books!;

  BookShelf({
    required this.id,
  }) {
    _books = [];
  }

  addBook({required Book book}) {
    if (_books?.length == maxCapacity) {
      throw DomainException(message: 'Book Shelf has reached maximum capacity');
    } else {
      book.shelfId = id;
      _books?.add(book);
    }
  }
}
