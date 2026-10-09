import 'package:church_admin_generator/src/model/field_metadata_spec.dart';
import 'package:church_admin_generator/src/model/queryable_class.dart';
import 'package:church_admin_generator/src/model/queryable_field.dart';
import 'package:code_builder/code_builder.dart';

final class FieldsClassBuilder {
  static final _fieldMetadataOfObject = _fieldMetadataType('Object');

  static TypeReference _fieldMetadataType(String typeName) => TypeReference(
    (t) => t
      ..symbol = 'FieldMetadata'
      ..types.add(refer(typeName)),
  );

  final QueryableClass _queryable;

  const FieldsClassBuilder(this._queryable);

  Class build() {
    final className = _queryable.fieldsClassName;
    final isSingleton = !_queryable.isExtensible;

    return Class(
      (c) => c
        ..name = className
        ..fields.addAll([
          if (isSingleton)
            Field(
              (f) => f
                ..static = true
                ..modifier = FieldModifier.final$
                ..type = refer(className)
                ..name = '_instance'
                ..assignment = refer(className).newInstanceNamed('_', []).code,
            ),
          ..._queryable.fields.expand(_fieldMembers),
          _allFields(),
          _allFieldsByName(),
        ])
        ..constructors.addAll([
          if (isSingleton)
            Constructor(
              (k) => k
                ..factory = true
                ..lambda = true
                ..body = refer('_instance').code,
            ),
          Constructor((k) => k..name = isSingleton ? '_' : null),
        ]),
    );
  }

  Iterable<Field> _fieldMembers(QueryableField field) => switch (field) {
    DirectField(:final metadata) => [
      _metadataField(
        memberName: field.memberName,
        getterName: field.memberName,
        name: field.name,
        metadata: metadata,
      ),
    ],
    ManyToManyField(:final through) => [
      _metadataField(
        memberName: field.throughMemberName,
        getterName: field.memberName,
        name: field.name,
        metadata: through,
      ),
      _redirectField(field),
    ],
  };

  Field _metadataField({
    required String memberName,
    required String getterName,
    required String name,
    required FieldMetadataSpec metadata,
  }) {
    final type = _fieldMetadataType(metadata.typeName);
    final parentType = _queryable.typeName;
    final getValue = Method(
      (m) => m
        ..requiredParameters.add(Parameter((p) => p..name = 'obj'))
        ..lambda = true
        ..body = Code('obj is $parentType ? obj.$getterName : null'),
    ).closure;

    return Field(
      (f) => f
        ..modifier = FieldModifier.final$
        ..type = type
        ..name = memberName
        ..assignment = type.call([], {
          'getValue': getValue,
          'parentType': refer(parentType),
          'name': literalString(name),
          'label': literalString(metadata.label),
          'isCodeOnly': literalBool(metadata.isCodeOnly),
          if (!metadata.isOrderable) 'isOrderable': literalFalse,
          if (_operators(metadata) case final operators?)
            'operators': operators,
        }).code,
    );
  }

  Expression? _operators(FieldMetadataSpec metadata) {
    final family = metadata.operatorFamily;

    if (family == null) return null;

    return literalSet([
      for (final operatorEnum in family.operatorEnums)
        refer(operatorEnum).property('values').spread,
      if (metadata.isNullable) ...[
        refer('PrimitiveOperator').property('isNull'),
        refer('PrimitiveOperator').property('isNotNull'),
      ],
    ]);
  }

  Field _redirectField(ManyToManyField field) => Field(
    (f) => f
      ..late = true
      ..modifier = FieldModifier.final$
      ..type = _fieldMetadataType(field.targetTypeName)
      ..name = field.memberName
      ..assignment = refer(field.throughMemberName)
          .property('redirectTo')
          .call(
            [
              refer(
                '${field.throughTypeName}Fields',
              ).call([]).property(field.targetMemberName),
            ],
            {
              'isExpandable': literalFalse,
              'isOrderable': literalFalse,
              if (field.label case final label?) 'label': literalString(label),
            },
          )
          .code,
  );

  Field _allFields() => Field(
    (f) => f
      ..late = true
      ..modifier = FieldModifier.final$
      ..type = TypeReference(
        (t) => t
          ..symbol = 'List'
          ..types.add(_fieldMetadataOfObject),
      )
      ..name = 'allFields'
      ..assignment = literalList(
        _queryable.fields.map((field) => refer(field.memberName)),
      ).code,
  );

  Field _allFieldsByName() => Field(
    (f) => f
      ..late = true
      ..modifier = FieldModifier.final$
      ..type = TypeReference(
        (t) => t
          ..symbol = 'Map'
          ..types.addAll([refer('String'), _fieldMetadataOfObject]),
      )
      ..name = 'allFieldsByName'
      ..assignment = literalMap({
        for (final field in _queryable.fields)
          literalString(field.name): refer(field.memberName),
      }).code,
  );
}
