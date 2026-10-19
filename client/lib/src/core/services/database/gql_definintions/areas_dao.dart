import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/areas/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/areas/__generated__/subscriptions.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/areas/area_insert_helper.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/areas/area_update_helper.dart';

class AreasDAO extends LegacyFullCRUDDAO<Area> {
  @override
  late final LegacyStreamAllConfig<Area> baseStreamAllConfig =
      const LegacyStreamAllConfig(
        document: documentNodeSubscriptionwatchAllAreas,
      );

  @override
  late final LegacyStreamCountConfig<Area> baseStreamCountConfig =
      const LegacyStreamCountConfig(
        document: documentNodeSubscriptionwatchAreasCount,
      );

  @override
  late final LegacyStreamSingleByIdConfig<Area> baseStreamSingleByIdConfig =
      LegacyStreamSingleByIdConfig(
        document: documentNodeSubscriptionwatchArea,
        varsConstructor: _streamSingleByIdVarsConstructor,
      );
  @override
  late final LegacyDeleteSingleByIdConfig<Area> baseDeleteSingleByIdConfig =
      LegacyDeleteSingleByIdConfig(
        document: documentNodeMutationdeleteArea,
        varsConstructor: _deleteSingleByIdVarsConstructor,
      );
  @override
  late final LegacyUpdateObjectConfig<Area> baseUpdateObjectConfig =
      LegacyUpdateObjectConfig(
        document: documentNodeMutationupdateArea,
        varsConstructor: _updateAreaVarsConstructor,
      );
  @override
  late final LegacyCreateObjectConfig<Area> baseCreateObjectConfig =
      LegacyCreateObjectConfig(
        document: documentNodeMutationinsertArea,
        varsConstructor: _createAreaVarsConstructor,
      );

  AreasDAO({required super.db}) : super(fromJson: Area.fromJson);

  Json _streamSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Subscription_watchArea(id: id).toJson();

  Json _createAreaVarsConstructor({required Area newObject}) =>
      AreaInsertHelper(newArea: newObject).variables.toJson();

  Json _updateAreaVarsConstructor({
    required Area newObject,
    required Area oldObject,
  }) => AreaUpdateHelper(
    oldArea: oldObject,
    newArea: newObject,
  ).variables.toJson();

  Json _deleteSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Mutation_deleteArea(areaId: id).toJson();
}
