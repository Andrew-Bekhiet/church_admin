import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';

/// Represents a filter condition for advanced search queries
class Filter<T extends Object> with EquatableMixin {
  static const _undefined = Object();

  final FieldMetadata<T> field;
  final Operator operator;
  final Object? value;

  String get fieldLabel => field.label;

  const Filter(this.field, this.operator, this.value);

  factory Filter.fromJson(Json json) {
    final field = FieldMetadata.fromJson(json['field']);

    if (field is! FieldMetadata<T>) {
      throw ArgumentError(
        'Field type mismatch: expected $T, got ${field.runtimeType}',
      );
    }

    final operator = field.operators
        .firstWhereOrNull((o) => o.serializationId == json['operator']);

    if (operator == null) {
      throw ArgumentError(
        'Operator not found: ${json['operator']} for field ${field.name}',
      );
    }

    final value = operator.deserializeValue(json['value']);

    return Filter<T>(field, operator, value);
  }

  @override
  List<Object?> get props => [field, operator, value];

  Filter copyWith({
    Object? field = _undefined,
    Object? operator = _undefined,
    Object? value = _undefined,
  }) {
    return Filter<T>(
      field is FieldMetadata<T> && field != _undefined ? field : this.field,
      operator is Operator && operator != _undefined ? operator : this.operator,
      value != _undefined ? value : this.value,
    );
  }

  Json queryToJson() {
    return operator.queryToJson(field, value);
  }

  Json toJson() {
    return {
      'field': field.toJson(),
      'operator': operator.serializationId,
      'value': operator.serializeValue(value),
    };
  }
}
