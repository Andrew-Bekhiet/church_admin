import 'package:build/build.dart';
import 'package:church_admin_generator/src/church_admin_generator.dart';
import 'package:church_admin_generator/src/models/church_admin_options.dart';
import 'package:source_gen/source_gen.dart';

final class ChurchAdminBuilder {
  static Builder builder(BuilderOptions options) {
    return SharedPartBuilder(
      [
        const ChurchAdminGenerator(ChurchAdminOptions()),
      ],
      'church_admin_generator',
    );
  }
}
