import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/schools/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/schools/__generated__/subscriptions.gql.dart';

class SchoolsDAO extends DAOBase<School>
    with LegacyStreamableDAO<School>, LegacyCreatableDAO<School> {
  @override
  LegacyStreamAllConfig<School> get baseStreamAllConfig =>
      const LegacyStreamAllConfig(
        document: documentNodeSubscriptionwatchAllSchools,
      );
  @override
  LegacyStreamSingleByIdConfig<School> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  LegacyCreateObjectConfig<School> get baseCreateObjectConfig =>
      LegacyCreateObjectConfig(
        document: documentNodeMutationcreateSchool,
        varsConstructor: _createSchoolVarsConstructor,
        parserFn: db.parser.singleParser(fromJson),
      );

  SchoolsDAO({
    required super.db,
  }) : super(fromJson: School.fromJson);

  Json _createSchoolVarsConstructor({required School newObject}) => {
    'object': {'name': newObject.name},
  };
}
