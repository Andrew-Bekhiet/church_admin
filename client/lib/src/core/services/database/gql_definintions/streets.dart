import 'package:church_admin/church_admin.dart';

export 'streets/__generated__/mutations.gql.dart';
export 'streets/__generated__/subscriptions.gql.dart';

class StreetsDAO extends FullCRUDDAO<Street> {
  StreetsDAO({required super.db}) : super(fromJson: Street.fromJson);

  @override
  late final StreamAllConfig<Street> baseStreamAllConfig =
      const StreamAllConfig(
    document: documentNodeSubscriptionwatchAllStreets,
  );

  @override
  late final StreamCountConfig<Street> baseStreamCountConfig =
      const StreamCountConfig(
    document: documentNodeSubscriptionwatchStreetsCount,
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
      Variables_Mutation_insertStreet(newStreet: newObject.toInsertInput())
          .toJson();

  Json _updateStreetVarsConstructor({
    required Street newObject,
    required Street oldObject,
  }) {
    final areasDiff = diff<Area>(
      oldObject.areas?.toSet() ?? {},
      newObject.areas?.toSet() ?? {},
    );

    return Variables_Mutation_updateStreet(
      streetId: newObject.id.toUuid(),
      newStreet: newObject.toUpdateInput(oldStreet: oldObject),
      updateLastVisit: newObject.lastVisit != oldObject.lastVisit,
      lastVisit: newObject.lastVisit?.time,
      insertAreasStreets: areasDiff.added.isNotEmpty,
      deleteAreasStreets: areasDiff.removed.isNotEmpty,
      addAreas: areasDiff.added
          .map(
            (e) => Input_AreasStreetsInsertInput(
              areaId: e.id.toUuid(),
              streetId: newObject.id.toUuid(),
            ),
          )
          .toList(),
      removeAreas: areasDiff.removed.map((e) => e.id.toUuid()).toList(),
    ).toJson();
  }

  Json _deleteSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Mutation_deleteStreet(streetId: id).toJson();
}
