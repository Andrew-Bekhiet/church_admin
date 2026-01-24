import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/schools/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/schools/__generated__/subscriptions.gql.dart';

class SchoolsDAO extends DAOBase<School>
    with StreamableDAO<School>, CreatableDAO<School> {
  SchoolsDAO({
    required super.db,
  }) : super(fromJson: School.fromJson);

  @override
  StreamAllConfig<School> get baseStreamAllConfig => const StreamAllConfig(
    document: documentNodeSubscriptionwatchAllSchools,
  );
  @override
  StreamSingleByIdConfig<School> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  CreateObjectConfig<School> get baseCreateObjectConfig => CreateObjectConfig(
    document: documentNodeMutationcreateSchool,
    varsConstructor: _createSchoolVarsConstructor,
    parserFn: db.parser.singleParser(fromJson),
  );

  Json _createSchoolVarsConstructor({required School newObject}) => {
    'object': {'name': newObject.name},
  };
}
