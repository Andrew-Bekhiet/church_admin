import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/areas/__generated__/mutations.graphql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/areas/__generated__/queries.graphql.dart';

class AreasDAO extends FullCRUDDAO<Area> {
  @override
  StreamAllConfig<Area> get baseStreamAllConfig => StreamAllConfig(
    document: documentNodeQueryareas,
    arguments: (parameters) => ListQueryArguments.fromParameters(
      parameters,
      defaultOrderBy: [OrderBy(field: AreaFields().name)],
    ),
  );

  @override
  StreamSingleByIdConfig<Area> get baseStreamSingleByIdConfig =>
      const StreamSingleByIdConfig(document: documentNodeQueryarea);

  @override
  CreateObjectConfig<Area> get baseCreateObjectConfig => CreateObjectConfig(
    document: documentNodeMutationcreateArea,
    varsConstructor: ({required newObject}) => Variables_Mutation_createArea(
      input: Input_CreateAreaInput(
        name: newObject.name,
        bounds: newObject.bounds?.asPostGISPolygon(),
        color: colorToInt(newObject.color),
        lastVisit: newObject.lastVisit?.time,
      ),
    ).toJson(),
  );

  @override
  UpdateObjectConfig<Area> get baseUpdateObjectConfig => UpdateObjectConfig(
    document: documentNodeMutationupdateArea,
    varsConstructor: ({required newObject}) => Variables_Mutation_updateArea(
      id: newObject.id,
      input: Input_UpdateAreaInput.fromJson({
        'name': newObject.name,
        'bounds': newObject.bounds?.asPostGISPolygon(),
        'color': colorToInt(newObject.color),
        if (newObject.lastVisit case final lastVisit?)
          'lastVisit': tstzToString(lastVisit.time),
      }),
    ).toJson(),
  );

  @override
  DeleteSingleByIdConfig<Area> get baseDeleteSingleByIdConfig =>
      const DeleteSingleByIdConfig(document: documentNodeMutationdeleteArea);

  AreasDAO({required super.db}) : super(fromJson: Area.fromJson);
}
