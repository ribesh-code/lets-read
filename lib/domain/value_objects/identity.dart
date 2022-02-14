import 'package:equatable/equatable.dart';

class Identity extends Equatable {
  final String id;

  factory Identity.fromString(String id) {
    return Identity._internal(id);
  }

  const Identity._internal(this.id);

  @override
  List<Object?> get props => [id];
}
