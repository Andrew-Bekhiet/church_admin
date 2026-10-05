import 'package:meta/meta_meta.dart';

@Target({TargetKind.field})
final class QueryableField {
  final Type? manyToManyRelType;
  final String? manyToManyRelSelectField;
  final String? renameTo;

  const QueryableField({
    this.manyToManyRelType,
    this.manyToManyRelSelectField,
    this.renameTo,
  });
}
