import 'package:letsread/domain/value_objects/author.dart';
import 'package:letsread/domain/value_objects/identity.dart';
import 'package:letsread/domain/value_objects/isbn.dart';
import 'package:letsread/domain/value_objects/published_date.dart';
import 'package:letsread/domain/value_objects/title.dart';

class Book {
  Identity? id;
  Identity? shelfId;
  Title? title;
  Author? author;
  Isbn? isbn;
  PublishedDate? publishedDate;

  Book({
    this.id,
    this.shelfId,
    this.title,
    this.author,
    this.isbn,
    this.publishedDate,
  });
}
