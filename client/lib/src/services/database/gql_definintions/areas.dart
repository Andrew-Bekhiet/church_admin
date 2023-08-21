import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/services/database/gql_definintions/areas/__generated__/subscriptions.gql.dart';
import 'package:church_admin/src/services/database/gql_definintions/helpers.dart';
import 'package:uuid/uuid.dart';

import 'areas/__generated__/mutations.gql.dart';

class AreasDAO extends FullCRUDDAO<Area, Input_AreasBoolExp> {
  AreasDAO({required super.db}) : super(fromJson: Area.fromJson);

  @override
  late final StreamAllConfig<Area, Input_AreasBoolExp> baseStreamAllConfig =
      StreamAllConfig(
    document: documentNodeSubscriptionwatchAllAreas,
    varsConstructor: _streamAllVarsConstructor,
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

  Json _streamAllVarsConstructor({
    required GQLPaginatableStreamEvent<Area> event,
    required List<Input_AreasBoolExp> where,
  }) {
    final defaultSearchVars = graphQLClient.getDefaultSearchVars(
      event,
      Variables_Subscription_watchAllAreas.new,
      Input_AreasBoolExp.new,
    );

    return defaultSearchVars.copyWith(
      where: [
        ...where,
        if (defaultSearchVars.where != null) ...defaultSearchVars.where!,
      ],
    ).toJson();
  }

  Json _streamSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Subscription_watchArea(id: id).toJson();

  Json _createAreaVarsConstructor({required Area newObject}) =>
      Variables_Mutation_insertArea(
        newArea: Input_AreasInsertInput.fromJson(newObject.toJson()),
      ).toJson();

  Json _updateAreaVarsConstructor({
    required Area newObject,
    required Area oldObject,
  }) =>
      Variables_Mutation_updateArea(
        areaId: newObject.id.toUuid(),
        newArea: Input_AreasSetInput.fromJson(
          computeObjectDelta(newObject.toJson(), oldObject.toJson()),
        ),
      ).toJson();

  Json _deleteSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Mutation_deleteArea(areaId: id).toJson();
}
