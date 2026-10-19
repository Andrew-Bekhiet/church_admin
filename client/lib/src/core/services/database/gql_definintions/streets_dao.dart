import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/streets/__generated__/mutations.graphql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/streets/__generated__/queries.graphql.dart';

class StreetsDAO extends FullCRUDDAO<Street> {
  @override
  StreamAllConfig<Street> get baseStreamAllConfig => StreamAllConfig(
    document: documentNodeQuerystreets,
    arguments: (parameters) => ListQueryArguments.fromParameters(
      parameters,
      defaultOrderBy: [OrderBy(field: StreetFields().name)],
    ),
  );

  @override
  StreamSingleByIdConfig<Street> get baseStreamSingleByIdConfig =>
      const StreamSingleByIdConfig(document: documentNodeQuerystreet);

  @override
  CreateObjectConfig<Street> get baseCreateObjectConfig => CreateObjectConfig(
    document: documentNodeMutationcreateStreet,
    varsConstructor: ({required newObject}) => Variables_Mutation_createStreet(
      input: Input_CreateStreetInput(
        name: newObject.name,
        line: newObject.line?.asPostGISLineString(),
        color: colorToInt(newObject.color),
        areas: newObject.areas?.map((area) => area.id).toList(),
        lastVisit: newObject.lastVisit?.time,
      ),
    ).toJson(),
  );

  @override
  UpdateObjectConfig<Street> get baseUpdateObjectConfig => UpdateObjectConfig(
    document: documentNodeMutationupdateStreet,
    varsConstructor: ({required newObject}) => Variables_Mutation_updateStreet(
      id: newObject.id,
      input: Input_UpdateStreetInput.fromJson({
        'name': newObject.name,
        'line': newObject.line?.asPostGISLineString(),
        'color': colorToInt(newObject.color),
        if (newObject.areas case final areas?)
          'areas': areas.map((area) => area.id).toList(),
        if (newObject.lastVisit case final lastVisit?)
          'lastVisit': tstzToString(lastVisit.time),
      }),
    ).toJson(),
  );

  @override
  DeleteSingleByIdConfig<Street> get baseDeleteSingleByIdConfig =>
      const DeleteSingleByIdConfig(document: documentNodeMutationdeleteStreet);

  StreetsDAO({required super.db}) : super(fromJson: Street.fromJson);
}
