import 'package:letsread/domain/value_objects/author.dart';
import 'package:letsread/domain/value_objects/identity.dart';
import 'package:letsread/domain/value_objects/isbn.dart';
import 'package:letsread/domain/value_objects/published_date.dart';
import 'package:letsread/domain/value_objects/title.dart';

class AddBookOutputDto {
  final Identity bookId;
  final Identity shelfId;
  final Title title;
  final Author author;
  final Isbn isbn;
  final PublishedDate publishedDate;

  const AddBookOutputDto({
    required this.bookId,
    required this.shelfId,
    required this.title,
    required this.author,
    required this.isbn,
    required this.publishedDate,
  });
}
