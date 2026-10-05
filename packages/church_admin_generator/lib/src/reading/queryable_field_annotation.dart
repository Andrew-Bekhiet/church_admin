import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:church_admin_generator/src/reading/annotation_checkers.dart';
import 'package:source_gen/source_gen.dart';

final class QueryableFieldAnnotation {
  static QueryableFieldAnnotation? of(FieldElement field) {
    final annotation =
        AnnotationCheckers.queryableField.firstAnnotationOf(field) ??
        switch (field.getter) {
          final getter? => AnnotationCheckers.queryableField.firstAnnotationOf(
            getter,
          ),
          null => null,
        };

    return annotation == null
        ? null
        : QueryableFieldAnnotation._(ConstantReader(annotation));
  }

  final ConstantReader _reader;

  String? get label => _reader.peek('label')?.stringValue;
  String? get graphqlName => _reader.peek('graphqlName')?.stringValue;
  bool get isCodeOnly => _reader.read('codeOnly').boolValue;
  bool get isOrderable => _reader.read('orderable').boolValue;
  bool get representsParent => _reader.read('representsParent').boolValue;
  bool get usesBirthdayOperators =>
      _reader.read('usesBirthdayOperators').boolValue;
  DartType? get type => _reader.peek('type')?.typeValue;
  DartType? get through => _reader.peek('through')?.typeValue;
  String? get select => _reader.peek('select')?.stringValue;

  QueryableFieldAnnotation._(this._reader);
}
