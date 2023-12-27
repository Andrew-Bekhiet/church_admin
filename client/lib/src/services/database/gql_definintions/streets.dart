import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/services/database/gql_definintions/streets/helpers.dart';
import 'package:uuid/uuid.dart';

import 'streets/__generated__/mutations.gql.dart';
import 'streets/__generated__/subscriptions.gql.dart';

export 'streets/__generated__/mutations.gql.dart';
export 'streets/__generated__/subscriptions.gql.dart';

class StreetsDAO
    extends FullCRUDDAO<Street, Input_StreetsBoolExp, Input_StreetsOrderBy> {
  StreetsDAO({required super.db}) : super(fromJson: Street.fromJson);

  @override
  late final StreamAllConfig<Street, Input_StreetsBoolExp, Input_StreetsOrderBy>
      baseStreamAllConfig = const StreamAllConfig(
    document: documentNodeSubscriptionwatchAllStreets,
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

  Json _streamSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Subscription_watchStreet(id: id).toJson();

  Json _createStreetVarsConstructor({required Street newObject}) =>
      StreetInsertHelper(newStreet: newObject).variables.toJson();

  Json _updateStreetVarsConstructor({
    required Street newObject,
    required Street oldObject,
  }) =>
      StreetUpdateHelper(
        oldStreet: oldObject,
        newStreet: newObject,
      ).variables.toJson();

  Json _deleteSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Mutation_deleteStreet(streetId: id).toJson();
}
