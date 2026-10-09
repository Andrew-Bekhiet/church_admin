import 'package:church_admin_generator/src/model/queryable_field.dart';

final class QueryableClass {
  final String name;
  final String typeName;
  final bool isExtensible;
  final List<QueryableField> fields;

  String get fieldsClassName => '${isExtensible ? '_' : ''}${name}Fields';

  const QueryableClass({
    required this.name,
    required this.typeName,
    required this.isExtensible,
    required this.fields,
  });
}
