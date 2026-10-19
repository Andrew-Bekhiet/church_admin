import 'package:church_admin/church_admin.dart';

class AshMultiSelectFilter {
  static const List<String> _fallbackKeyPath = ['id'];

  const AshMultiSelectFilter();

  Json translate(
    FieldMetadata field,
    MultiSelectOperator operator,
    List<Object>? values,
  ) {
    final valuePath = _valuePath(field);
    final hasValue = valuePath.wrap({'isNil': false});

    switch (operator) {
      case MultiSelectOperator.isNotEmpty:
        return hasValue;
      case MultiSelectOperator.isEmpty:
        return {
          'not': [hasValue],
        };
      case MultiSelectOperator.anyOf:
      case MultiSelectOperator.noneOf:
        if (values == null) return hasValue;

        final membership = valuePath.wrap({
          'in': _identifiers(field, values),
        });

        return operator == MultiSelectOperator.anyOf
            ? membership
            : {
                'not': [membership],
              };
    }
  }

  AshFieldPath _valuePath(FieldMetadata field) {
    final path = AshFieldPath.forFilter(field);
    final queryable = field.fieldQueryableType;
    if (queryable == null || queryable.isEnum) return path;
    if (field.type == LastRecordedByInfo) return path.recordedTime;

    final key = queryable.keyField;
    if (key == null) return path.append(_fallbackKeyPath);
    if (_leafOf(field) == key) return path;

    return path.append(AshFieldPath.forFilter(key).segments);
  }

  FieldMetadata _leafOf(FieldMetadata field) => switch (field) {
    RedirectingFieldMetadata(:final targetField) => _leafOf(targetField),
    _ => field,
  };

  List<Object> _identifiers(FieldMetadata field, List<Object> values) {
    final key = field.fieldQueryableType?.keyField;

    return values.map((value) {
      final identifier = switch (value) {
        ViewableEnumWithID(:final id) => id,
        final String id => id,
        _ when key != null => key.getValue(value),
        ID(:final id) => id,
        _ => null,
      };

      return identifier ??
          (throw ArgumentError.value(
            value,
            'values',
            'Cannot identify the selected value of ${field.name}',
          ));
    }).toList();
  }
}
