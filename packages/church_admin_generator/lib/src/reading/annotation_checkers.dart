import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:source_gen/source_gen.dart';

abstract final class AnnotationCheckers {
  static const _package = 'church_admin_annotations';

  static const queryable = TypeChecker.typeNamed(
    Queryable,
    inPackage: _package,
    inSdk: false,
  );

  static const queryableField = TypeChecker.typeNamed(
    QueryableField,
    inPackage: _package,
    inSdk: false,
  );

  static const queryablesRegistry = TypeChecker.typeNamed(
    GenerateQueryablesRegistery,
    inPackage: _package,
    inSdk: false,
  );
}
