import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/services/database/gql_definintions/helpers.dart';
import 'package:uuid/uuid.dart';

import 'streets/__generated__/mutations.gql.dart';
import 'streets/__generated__/subscriptions.gql.dart';

export 'streets/__generated__/mutations.gql.dart';
export 'streets/__generated__/subscriptions.gql.dart';

class StreetsDAO extends FullCRUDDAO<Street, Input_StreetsBoolExp> {
  StreetsDAO({required super.db}) : super(fromJson: Street.fromJson);

  @override
  late final StreamAllConfig<Street, Input_StreetsBoolExp> baseStreamAllConfig =
      StreamAllConfig(
    document: documentNodeSubscriptionwatchAllStreets,
    varsConstructor: _streamAllVarsConstructor,
  );

  @override
  late final StreamSingleByIdConfig<Street> baseStreamSingleByIdConfig =
      StreamSingleByIdConfig(
    document: documentNodeSubscriptionwatchStreet,
    varsConstructor: _streamSingleByIdVarsConstructor,
  );

  @override
  late final DeleteSingleByIdConfig<Street> baseDeleteSingleByIdConfig =
      DeleteSingleByIdConfig(
    document: documentNodeMutationdeleteStreet,
    varsConstructor: _deleteSingleByIdVarsConstructor,
  );

  @override
  late final UpdateObjectConfig<Street> baseUpdateObjectConfig =
      UpdateObjectConfig(
    document: documentNodeMutationupdateStreet,
    varsConstructor: _updateStreetVarsConstructor,
  );

  @override
  late final CreateObjectConfig<Street> baseCreateObjectConfig =
      CreateObjectConfig(
    document: documentNodeMutationinsertStreet,
    varsConstructor: _createStreetVarsConstructor,
  );

  Json _streamAllVarsConstructor({
    required GQLPaginatableStreamEvent<Street> event,
    required List<Input_StreetsBoolExp> where,
  }) {
    final defaultSearchVars = graphQLClient.getDefaultSearchVars(
      event,
      Variables_Subscription_watchAllStreets.new,
      Input_StreetsBoolExp.new,
    );

    return defaultSearchVars.copyWith(
      where: [
        ...where,
        if (defaultSearchVars.where != null) ...defaultSearchVars.where!,
      ],
    ).toJson();
  }

  Json _streamSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Subscription_watchStreet(id: id).toJson();

  Json _createStreetVarsConstructor({required Street newObject}) =>
      Variables_Mutation_insertStreet(
        newStreet: Input_StreetsInsertInput.fromJson(newObject.toJson()),
      ).toJson();

  Json _updateStreetVarsConstructor({
    required Street newObject,
    required Street oldObject,
  }) =>
      Variables_Mutation_updateStreet(
        streetId: newObject.id.toUuid(),
        newStreet: Input_StreetsSetInput.fromJson(
          computeObjectDelta(newObject.toJson(), oldObject.toJson()),
        ),
      ).toJson();

  Json _deleteSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Mutation_deleteStreet(streetId: id).toJson();
}
