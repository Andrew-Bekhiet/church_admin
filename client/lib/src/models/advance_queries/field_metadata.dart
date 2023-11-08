import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class FieldMetadata<T> with EquatableMixin {
  final Type? _type;
  final String name;
  final String label;
  final bool isOrderable;
  final Set<Operator> operators;

  Type get type => _type ?? T;

  T get dummyInstance =>
      AdvancedQueriesMetadata.dummyInstanceForType[type] as T;

  QueryableType<T>? get queryableType =>
      AdvancedQueriesMetadata.queryableTypes[type] as QueryableType<T>?;

  bool get isNestabale {
    final _instance = dummyInstance;

    return _instance is ViewableWithID &&
            _instance is! UserPermission &&
            name != 'id' ||
        _instance is HistoryAggregateData ||
        _instance is AggregateData;
  }

  @override
  List<Object?> get props => [name, label, operators];

  const FieldMetadata({
    required this.name,
    required this.label,
    this.isOrderable = true,
    Type? type,
    this.operators = const {},
  }) : _type = type;
}
