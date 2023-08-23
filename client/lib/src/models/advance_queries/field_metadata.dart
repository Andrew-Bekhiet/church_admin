import 'package:church_admin/church_admin.dart';

class FieldMetadata<T> {
  final Type type;
  final bool isList;

  T get dummyInstance =>
      AdvancedQueriesMetadata.dummyInstanceForType[type] as T;

  const FieldMetadata({
    required this.type,
    this.isList = false,
  });
}
