import 'package:build/build.dart';
import 'package:church_admin_generator/src/queryable_fields_generator.dart';
import 'package:church_admin_generator/src/queryable_registery_generator.dart';
import 'package:source_gen/source_gen.dart';

final class ChurchAdminBuilder {
  static Builder builder(BuilderOptions options) {
    return SharedPartBuilder(
      [
        const QueryableFieldsGenerator(),
        const QueryableRegisteryGenerator(),
      ],
      'church_admin_generator',
    );
  }
}
