import 'dart:collection';

import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/dart/element/visitor2.dart';
import 'package:church_admin_generator/src/model/field_metadata_spec.dart';
import 'package:church_admin_generator/src/model/operator_family.dart';
import 'package:church_admin_generator/src/model/queryable_field.dart';
import 'package:church_admin_generator/src/reading/iterable_element_type_visitor.dart';
import 'package:church_admin_generator/src/reading/operator_family_visitor.dart';
import 'package:church_admin_generator/src/reading/queryable_field_annotation.dart';
import 'package:source_gen/source_gen.dart';

final class QueryableFieldCollector extends SimpleElementVisitor2<void> {
  static String _nonNullableDisplayName(DartType type) =>
      type.getDisplayString().replaceAll('?', '');

  final InterfaceType _parentType;
  final List<QueryableField> _fields = [];

  List<QueryableField> get fields => UnmodifiableListView(_fields);

  QueryableFieldCollector(this._parentType);

  @override
  void visitClassElement(ClassElement element) => element.visitChildren(this);

  @override
  void visitFieldElement(FieldElement element) {
    if (QueryableFieldAnnotation.of(element) case final annotation?) {
      _fields.add(_toQueryableField(element, annotation));
    }
  }

  QueryableField _toQueryableField(
    FieldElement element,
    QueryableFieldAnnotation annotation,
  ) {
    final memberName = element.displayName;
    final name = annotation.graphqlName ?? memberName;

    if (annotation.representsParent) {
      return DirectField(
        name: name,
        memberName: memberName,
        metadata: _metadata(annotation, _parentType, name: name),
      );
    }

    final elementType = element.type.accept(const IterableElementTypeVisitor());

    if (annotation.through case final through?) {
      return _manyToManyField(
        element,
        annotation,
        name: name,
        through: through,
        elementType:
            elementType ??
            (throw InvalidGenerationSourceError(
              '@QueryableField.manyToMany needs a collection field',
              element: element,
            )),
      );
    }

    return DirectField(
      name: name,
      memberName: memberName,
      metadata: _metadata(
        annotation,
        elementType ?? element.type,
        name: name,
        isCollection: elementType != null,
      ),
    );
  }

  ManyToManyField _manyToManyField(
    FieldElement element,
    QueryableFieldAnnotation annotation, {
    required String name,
    required DartType through,
    required DartType elementType,
  }) {
    final defaultTargetMember = _nonNullableDisplayName(
      elementType,
    ).toLowerCase();

    return ManyToManyField(
      name: name,
      memberName: element.displayName,
      label: annotation.label,
      through: FieldMetadataSpec(
        typeName: _nonNullableDisplayName(through),
        label: name,
        operatorFamily: through.accept(const OperatorFamilyVisitor()),
        isNullable: false,
        isCodeOnly: true,
        isOrderable: false,
      ),
      throughTypeName: _nonNullableDisplayName(through),
      targetTypeName: _nonNullableDisplayName(elementType),
      targetMemberName:
          annotation.select ??
          (defaultTargetMember == 'class' ? r'class$' : defaultTargetMember),
    );
  }

  FieldMetadataSpec _metadata(
    QueryableFieldAnnotation annotation,
    DartType type, {
    required String name,
    bool isCollection = false,
  }) => FieldMetadataSpec(
    typeName: _nonNullableDisplayName(annotation.type ?? type),
    label: annotation.label ?? name,
    isCodeOnly: annotation.isCodeOnly,
    isOrderable: annotation.isOrderable && !isCollection,
    operatorFamily: annotation.usesBirthdayOperators
        ? OperatorFamily.birthday
        : type.accept(const OperatorFamilyVisitor()),
    isNullable: type.nullabilitySuffix == NullabilitySuffix.question,
  );
}
