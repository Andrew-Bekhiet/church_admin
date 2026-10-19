import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/districts/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/districts/__generated__/subscriptions.gql.dart';

class DistrictsDAO extends DAOBase<District>
    with LegacyStreamableDAO<District>, LegacyCreatableDAO<District> {
  @override
  LegacyStreamAllConfig<District> get baseStreamAllConfig =>
      const LegacyStreamAllConfig(
        document: documentNodeSubscriptionwatchAllDistricts,
      );

  @override
  LegacyStreamSingleByIdConfig<District> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  LegacyCreateObjectConfig<District> get baseCreateObjectConfig =>
      LegacyCreateObjectConfig(
        document: documentNodeMutationcreateDistrict,
        varsConstructor: _createDistrictVarsConstructor,
        parserFn: db.parser.singleParser(fromJson, 'insertDistrictsOne'),
      );

  DistrictsDAO({required super.db}) : super(fromJson: District.fromJson);

  Json _createDistrictVarsConstructor({required District newObject}) => {
    'object': {'name': newObject.name},
  };
}
