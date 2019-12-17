import 'document.dart';

abstract class Reference<D extends Document> {
  Reference(this.document, this.converter) : ref = document.path();

  final String ref;
  final D document;
  final Converter<D> converter;

  void save() {
    print(ref);
  }

  @override
  String toString() => 'ref path is $ref';
}
