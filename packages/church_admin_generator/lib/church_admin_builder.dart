import 'package:build/build.dart';
import 'package:church_admin_generator/src/queryable_fields_generator.dart';
import 'package:church_admin_generator/src/queryables_registry_generator.dart';
import 'package:source_gen/source_gen.dart';

final class ChurchAdminBuilder {
  static Builder builder(BuilderOptions _) {
    return SharedPartBuilder(
      [
        const QueryableFieldsGenerator(),
        const QueryablesRegistryGenerator(),
      ],
      'church_admin_generator',
    );
  }
}
