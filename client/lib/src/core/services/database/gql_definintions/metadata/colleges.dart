import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/colleges/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/colleges/__generated__/subscriptions.gql.dart';

class CollegesDAO extends DAOBase<College>
    with StreamableDAO<College>, CreatableDAO<College> {
  CollegesDAO({
    required super.db,
  }) : super(fromJson: College.fromJson);

  @override
  StreamAllConfig<College> get baseStreamAllConfig => const StreamAllConfig(
        document: documentNodeSubscriptionwatchAllColleges,
      );
  @override
  StreamSingleByIdConfig<College> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  CreateObjectConfig<College> get baseCreateObjectConfig => CreateObjectConfig(
        document: documentNodeMutationcreateCollege,
        varsConstructor: _createCollegeVarsConstructor,
        parserFn: db.parser.singleParser(fromJson),
      );

  Json _createCollegeVarsConstructor({required College newObject}) => {
        'object': {'name': newObject.name},
      };
}
