import 'package:church_admin/church_admin.dart';

export 'streets/__generated__/mutations.gql.dart';
export 'streets/__generated__/subscriptions.gql.dart';

class StreetsDAO extends LegacyFullCRUDDAO<Street> {
  @override
  late final LegacyStreamAllConfig<Street> baseStreamAllConfig =
      const LegacyStreamAllConfig(
        document: documentNodeSubscriptionwatchAllStreets,
      );

  @override
  late final LegacyStreamCountConfig<Street> baseStreamCountConfig =
      const LegacyStreamCountConfig(
        document: documentNodeSubscriptionwatchStreetsCount,
      );

  @override
  late final LegacyStreamSingleByIdConfig<Street> baseStreamSingleByIdConfig =
      LegacyStreamSingleByIdConfig(
        document: documentNodeSubscriptionwatchStreet,
        varsConstructor: _streamSingleByIdVarsConstructor,
      );

  @override
  late final LegacyDeleteSingleByIdConfig<Street> baseDeleteSingleByIdConfig =
      LegacyDeleteSingleByIdConfig(
        document: documentNodeMutationdeleteStreet,
        varsConstructor: _deleteSingleByIdVarsConstructor,
      );

  @override
  late final LegacyUpdateObjectConfig<Street> baseUpdateObjectConfig =
      LegacyUpdateObjectConfig(
        document: documentNodeMutationupdateStreet,
        varsConstructor: _updateStreetVarsConstructor,
      );

  @override
  late final LegacyCreateObjectConfig<Street> baseCreateObjectConfig =
      LegacyCreateObjectConfig(
        document: documentNodeMutationinsertStreet,
        varsConstructor: _createStreetVarsConstructor,
      );

  StreetsDAO({required super.db}) : super(fromJson: Street.fromJson);

  Json _streamSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Subscription_watchStreet(id: id).toJson();

  Json _createStreetVarsConstructor({required Street newObject}) =>
      Variables_Mutation_insertStreet(
        newStreet: newObject.toInsertInput(),
      ).toJson();

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
