import 'entity.dart';

abstract class Document<E extends Entity> {
  const Document(this.id, this.entity);

  final String id;
  final E entity;

  String path() {
    throw UnimplementedError('path() is not implemented');
  }
}

abstract class Converter<D extends Document> {
  D fromJson(Map<String, dynamic> json);
}
