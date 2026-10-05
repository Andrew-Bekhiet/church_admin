import 'package:analyzer/dart/element/element.dart';
import 'package:church_admin_generator/src/model/queryable_class.dart';
import 'package:church_admin_generator/src/reading/queryable_field_collector.dart';
import 'package:church_admin_generator/src/reading/queryable_options.dart';
import 'package:source_gen/source_gen.dart';

abstract final class QueryableClassReader {
  static QueryableClass read(ClassElement element, ConstantReader annotation) {
    final options = QueryableOptions.fromAnnotation(annotation);
    final collector = QueryableFieldCollector(options, element.thisType);

    element.accept(collector);

    return QueryableClass(
      name: element.displayName,
      typeName: element.thisType.getDisplayString(),
      isExtensible: options.isExtensible,
      fields: collector.fields,
    );
  }
}
