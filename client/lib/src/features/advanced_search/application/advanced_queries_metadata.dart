import 'package:church_admin/annotations.dart';
import 'package:church_admin/annotations/generate_queryables_registery.dart';
import 'package:church_admin/church_admin.dart';

part 'advanced_queries_metadata.g.dart';

@GenerateQueryablesRegistery()
final class AdvancedQueriesMetadata extends _$AdvancedQueriesMetadata {
  static final _instance = AdvancedQueriesMetadata._();

  @override
  List<QueryableType<Object>> get allQueryables => {
    person,
    service,
    $class,
    group,
    family,
    store,
    street,
    area,
    user,
    ...super.allQueryables,
  }.toList();

  factory AdvancedQueriesMetadata() => _instance;

  AdvancedQueriesMetadata._();
}
