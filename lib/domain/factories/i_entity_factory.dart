import 'package:letsread/domain/entities/book.dart';
import 'package:letsread/domain/entities/book_shelf.dart';
import 'package:letsread/domain/value_objects/author.dart';
import 'package:letsread/domain/value_objects/isbn.dart';
import 'package:letsread/domain/value_objects/published_date.dart';
import 'package:letsread/domain/value_objects/title.dart';

abstract class IEntityFactory {
  Book newBook({
    required Title tile,
    required Author author,
    required Isbn isbn,
    required PublishedDate publishedDate,
  });

  BookShelf newBookShelf();
}
