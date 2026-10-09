import 'package:church_admin_generator/src/model/registry_entry.dart';
import 'package:code_builder/code_builder.dart';

final class RegistryClassBuilder {
  static final _queryableTypeOfObject = _queryableType('Object');

  static TypeReference _queryableType(String typeName) => TypeReference(
    (t) => t
      ..symbol = 'QueryableType'
      ..types.add(refer(typeName)),
  );

  final String _registryName;
  final List<RegistryEntry> _entries;

  const RegistryClassBuilder(this._registryName, this._entries);

  Class build() {
    final className = '_\$$_registryName';

    return Class(
      (c) => c
        ..abstract = true
        ..modifier = ClassModifier.final$
        ..name = className
        ..fields.addAll([
          ..._entries.map(_entryField),
          Field(
            (f) => f
              ..late = true
              ..modifier = FieldModifier.final$
              ..name = 'allQueryables'
              ..assignment = literalList(
                _entries.map((e) => refer(e.memberName)),
                _queryableTypeOfObject,
              ).code,
          ),
          Field(
            (f) => f
              ..late = true
              ..modifier = FieldModifier.final$
              ..name = 'allQueryablesByType'
              ..assignment = literalMap(
                {
                  for (final entry in _entries)
                    refer(entry.typeName): refer(entry.memberName),
                },
                refer('Type'),
                _queryableTypeOfObject,
              ).code,
          ),
        ])
        ..constructors.add(Constructor()),
    );
  }

  Field _entryField(RegistryEntry entry) {
    final type = refer(entry.typeName);
    final queryableType = _queryableType(entry.typeName);
    final nameAndLabel = {
      'name': literalString(entry.typeName),
      'label': literalString(entry.label),
    };

    return Field(
      (f) => f
        ..modifier = FieldModifier.final$
        ..name = entry.memberName
        ..assignment =
            (entry.isEnum
                    ? queryableType.newInstanceNamed(r'enum$', [], {
                        ...nameAndLabel,
                        'byName': type.property('byName'),
                        'enumValues': type.property('values'),
                      })
                    : queryableType.newInstance([], {
                        ...nameAndLabel,
                        'fieldsMetadata': _fieldsOf(
                          entry,
                        ).property('allFields'),
                        'fieldsMetadataByName': _fieldsOf(
                          entry,
                        ).property('allFieldsByName'),
                        'fromJson': type.property('fromJson'),
                      }))
                .code,
    );
  }

  Expression _fieldsOf(RegistryEntry entry) =>
      refer('${entry.typeName}Fields').call([]);
}
