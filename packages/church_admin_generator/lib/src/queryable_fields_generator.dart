import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:church_admin_generator/src/emitting/fields_class_builder.dart';
import 'package:church_admin_generator/src/reading/annotation_checkers.dart';
import 'package:church_admin_generator/src/reading/queryable_class_reader.dart';
import 'package:code_builder/code_builder.dart';
import 'package:source_gen/source_gen.dart';

final class QueryableFieldsGenerator extends GeneratorForAnnotation<Queryable> {
  @override
  TypeChecker get typeChecker => AnnotationCheckers.queryable;

  const QueryableFieldsGenerator();

  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) => switch (element) {
    ClassElement() => FieldsClassBuilder(
      QueryableClassReader.read(element, annotation),
    ).build().accept(DartEmitter(useNullSafetySyntax: true)).toString(),
    EnumElement() => '',
    _ => throw InvalidGenerationSourceError(
      '@Queryable can only be used on classes or enums',
      element: element,
    ),
  };
}
