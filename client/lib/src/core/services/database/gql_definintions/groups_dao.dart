import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/groups/__generated__/mutations.graphql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/groups/__generated__/queries.graphql.dart';

class GroupsDAO extends FullCRUDDAO<Group> {
  @override
  StreamAllConfig<Group> get baseStreamAllConfig => StreamAllConfig(
    document: documentNodeQuerygroups,
    arguments: _listArguments,
  );

  @override
  StreamSingleByIdConfig<Group> get baseStreamSingleByIdConfig =>
      const StreamSingleByIdConfig(document: documentNodeQuerygroup);

  @override
  CreateObjectConfig<Group> get baseCreateObjectConfig => CreateObjectConfig(
    document: documentNodeMutationcreateGroup,
    varsConstructor: ({required newObject}) => Variables_Mutation_createGroup(
      input: Input_CreateGroupInput(
        name: newObject.name,
        color: colorToInt(newObject.color),
        serviceId:
            newObject.service?.id ??
            newObject.serviceId ??
            (throw ArgumentError.value(
              newObject,
              'newObject',
              'A group needs the service it belongs to',
            )),
        validity: dateRangeToString(newObject.validity),
      ),
    ).toJson(),
  );

  @override
  UpdateObjectConfig<Group> get baseUpdateObjectConfig => UpdateObjectConfig(
    document: documentNodeMutationupdateGroup,
    varsConstructor: ({required newObject}) => Variables_Mutation_updateGroup(
      id: newObject.id,
      input: Input_UpdateGroupInput.fromJson({
        'name': newObject.name,
        'color': colorToInt(newObject.color),
        'serviceId': newObject.service?.id ?? newObject.serviceId,
        'validity': dateRangeToString(newObject.validity),
        'defaultMeetingId': newObject.defaultMeeting?.id,
      }),
    ).toJson(),
  );

  @override
  DeleteSingleByIdConfig<Group> get baseDeleteSingleByIdConfig =>
      const DeleteSingleByIdConfig(document: documentNodeMutationdeleteGroup);

  GroupsDAO({required super.db}) : super(fromJson: Group.fromJson);

  ListQueryArguments _listArguments(
    StreamableDAOParameters<Group>? parameters,
  ) => ListQueryArguments.fromParameters(
    StreamableDAOParameters<Group>(
      search: parameters?.search,
      where: parameters?.where,
      orderBy: (parameters?.orderBy?.isEmpty ?? true)
          ? null
          : parameters?.orderBy,
    ),
    defaultOrderBy: [
      OrderBy(field: GroupFields().validity),
      OrderBy(field: GroupFields().name),
    ],
  );
}
