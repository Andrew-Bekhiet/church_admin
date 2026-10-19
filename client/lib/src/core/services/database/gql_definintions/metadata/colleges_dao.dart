import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/colleges/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/colleges/__generated__/subscriptions.gql.dart';

class CollegesDAO extends DAOBase<College>
    with LegacyStreamableDAO<College>, LegacyCreatableDAO<College> {
  @override
  LegacyStreamAllConfig<College> get baseStreamAllConfig => const LegacyStreamAllConfig(
    document: documentNodeSubscriptionwatchAllColleges,
  );
  @override
  LegacyStreamSingleByIdConfig<College> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  LegacyCreateObjectConfig<College> get baseCreateObjectConfig => LegacyCreateObjectConfig(
    document: documentNodeMutationcreateCollege,
    varsConstructor: _createCollegeVarsConstructor,
    parserFn: db.parser.singleParser(fromJson),
  );

  CollegesDAO({
    required super.db,
  }) : super(fromJson: College.fromJson);

  Json _createCollegeVarsConstructor({required College newObject}) => {
    'object': {'name': newObject.name},
  };
}
