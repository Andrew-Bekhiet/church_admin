import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/districts/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/districts/__generated__/subscriptions.gql.dart';

class DistrictsDAO extends DAOBase<District>
    with StreamableDAO<District>, CreatableDAO<District> {
  DistrictsDAO({required super.db}) : super(fromJson: District.fromJson);

  @override
  StreamAllConfig<District> get baseStreamAllConfig => const StreamAllConfig(
    document: documentNodeSubscriptionwatchAllDistricts,
  );

  @override
  StreamSingleByIdConfig<District> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  CreateObjectConfig<District> get baseCreateObjectConfig => CreateObjectConfig(
    document: documentNodeMutationcreateDistrict,
    varsConstructor: _createDistrictVarsConstructor,
    parserFn: db.parser.singleParser(fromJson, 'insertDistrictsOne'),
  );

  Json _createDistrictVarsConstructor({required District newObject}) => {
    'object': {'name': newObject.name},
  };
}
