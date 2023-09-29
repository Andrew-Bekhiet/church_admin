import 'package:church_admin/church_admin.dart';

class FieldMetadata<T> {
  final Type type;
  final Set<Operator> operators;

  T get dummyInstance =>
      AdvancedQueriesMetadata.dummyInstanceForType[type] as T;

  bool get isNestabale {
    final _instance = dummyInstance;

    return _instance is ViewableWithID && _instance is! UserPermission;
  }

  const FieldMetadata({
    required this.type,
    this.operators = const {},
  });
}
