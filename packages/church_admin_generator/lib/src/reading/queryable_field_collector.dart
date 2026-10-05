import 'dart:collection';

import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/dart/element/visitor2.dart';
import 'package:church_admin_generator/src/model/field_metadata_spec.dart';
import 'package:church_admin_generator/src/model/operator_family.dart';
import 'package:church_admin_generator/src/model/queryable_field.dart';
import 'package:church_admin_generator/src/reading/annotation_checkers.dart';
import 'package:church_admin_generator/src/reading/default_field_labels.dart';
import 'package:church_admin_generator/src/reading/iterable_element_type_visitor.dart';
import 'package:church_admin_generator/src/reading/operator_family_visitor.dart';
import 'package:church_admin_generator/src/reading/queryable_options.dart';
import 'package:source_gen/source_gen.dart';

final class QueryableFieldCollector extends SimpleElementVisitor2<void> {
  static const _neverQueryable = {
    'copyWith',
    'hashCode',
    'typeName',
    'imageInfo',
  };

  static String _nonNullableDisplayName(DartType type) =>
      type.getDisplayString().replaceAll('?', '');

  final QueryableOptions _options;
  final InterfaceType _parentType;
  final List<QueryableField> _fields = [];

  List<QueryableField> get fields => UnmodifiableListView(_fields);

  QueryableFieldCollector(this._options, this._parentType);

  @override
  void visitClassElement(ClassElement element) => element.visitChildren(this);

  @override
  void visitFieldElement(FieldElement element) {
    final declaredName = element.displayName;

    if (_neverQueryable.contains(declaredName) ||
        _options.isIgnored(declaredName)) {
      return;
    }

    _fields.add(_toQueryableField(element));
  }

  QueryableField _toQueryableField(FieldElement element) {
    final annotation = switch (AnnotationCheckers.queryableField
        .annotationsOf(element)
        .singleOrNull) {
      final value? => ConstantReader(value),
      null => null,
    };
    final name =
        annotation?.peek('renameTo')?.stringValue ?? element.displayName;

    if (name == 'id') {
      return DirectField(
        name: name,
        metadata: _metadata(name, _parentType, label: _label(name)),
      );
    }

    final elementType = element.type.accept(const IterableElementTypeVisitor());

    if (elementType == null) return _scalarField(name, element.type);

    return _iterableField(name, elementType, annotation);
  }

  QueryableField _iterableField(
    String name,
    DartType elementType,
    ConstantReader? annotation,
  ) {
    final throughType = annotation?.peek('manyToManyRelType')?.typeValue;

    if (throughType == null) {
      return DirectField(
        name: name,
        metadata: _metadata(
          name,
          elementType,
          label: _label(name),
          isOrderable: false,
        ),
      );
    }

    final defaultTargetMember = _nonNullableDisplayName(
      elementType,
    ).toLowerCase();

    return ManyToManyField(
      name: name,
      through: _metadata(
        name,
        throughType,
        label: name,
        isCodeOnly: true,
        isOrderable: false,
      ),
      throughTypeName: _nonNullableDisplayName(throughType),
      targetTypeName: _metadataTypeName(elementType),
      targetMemberName:
          annotation?.peek('manyToManyRelSelectField')?.stringValue ??
          (defaultTargetMember == 'class' ? r'class$' : defaultTargetMember),
    );
  }

  DirectField _scalarField(String name, DartType type) {
    final isAggregate = name.endsWith('Aggregate');

    return DirectField(
      name: name,
      metadata: _metadata(
        name,
        type,
        label: isAggregate ? name : _label(name),
        isCodeOnly: isAggregate,
      ),
    );
  }

  FieldMetadataSpec _metadata(
    String name,
    DartType type, {
    required String label,
    bool isCodeOnly = false,
    bool isOrderable = true,
  }) => FieldMetadataSpec(
    typeName: _metadataTypeName(type),
    label: label,
    isCodeOnly: isCodeOnly,
    isOrderable: isOrderable && !name.endsWith('History'),
    operatorFamily: name == 'birthday'
        ? OperatorFamily.birthday
        : type.accept(const OperatorFamilyVisitor()),
    isNullable: type.nullabilitySuffix == NullabilitySuffix.question,
  );

  String _label(String name) =>
      _options.labelsOverrides[name] ??
      DefaultFieldLabels.byName[name.replaceAll('Aggregate', '')] ??
      name;

  String _metadataTypeName(DartType type) =>
      _nonNullableDisplayName(type).replaceFirst(RegExp('^History'), '');
}
