import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/services/database/gql_definintions/areas/__generated__/subscriptions.gql.dart';

import 'areas/__generated__/mutations.gql.dart';
import 'areas/helpers.dart';

class AreasDAO
    extends FullCRUDDAO<Area, Input_AreasBoolExp, Input_AreasOrderBy> {
  AreasDAO({required super.db}) : super(fromJson: Area.fromJson);

  @override
  late final StreamAllConfig<Area, Input_AreasBoolExp, Input_AreasOrderBy>
      baseStreamAllConfig = const StreamAllConfig(
    document: documentNodeSubscriptionwatchAllAreas,
  );
  @override
  late final StreamSingleByIdConfig<Area> baseStreamSingleByIdConfig =
      StreamSingleByIdConfig(
    document: documentNodeSubscriptionwatchArea,
    varsConstructor: _streamSingleByIdVarsConstructor,
  );
  @override
  late final DeleteSingleByIdConfig<Area> baseDeleteSingleByIdConfig =
      DeleteSingleByIdConfig(
    document: documentNodeMutationdeleteArea,
    varsConstructor: _deleteSingleByIdVarsConstructor,
  );
  @override
  late final UpdateObjectConfig<Area> baseUpdateObjectConfig =
      UpdateObjectConfig(
    document: documentNodeMutationupdateArea,
    varsConstructor: _updateAreaVarsConstructor,
  );
  @override
  late final CreateObjectConfig<Area> baseCreateObjectConfig =
      CreateObjectConfig(
    document: documentNodeMutationinsertArea,
    varsConstructor: _createAreaVarsConstructor,
  );

  Json _streamSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Subscription_watchArea(id: id).toJson();

  Json _createAreaVarsConstructor({required Area newObject}) =>
      AreaInsertHelper(newArea: newObject).variables.toJson();

  Json _updateAreaVarsConstructor({
    required Area newObject,
    required Area oldObject,
  }) =>
      AreaUpdateHelper(
        oldArea: oldObject,
        newArea: newObject,
      ).variables.toJson();

  Json _deleteSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Mutation_deleteArea(areaId: id).toJson();
}
