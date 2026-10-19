import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/meetings/meeting_audience_graphql_value.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/services/__generated__/mutations.graphql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/services/__generated__/queries.graphql.dart';

class ServicesDAO extends FullCRUDDAO<Service> {
  static final List<Json> _classesOrder = const AshSortTranslator().toSortInput(
    [
      OrderBy(field: ClassFields().studyYear),
      OrderBy(field: ClassFields().serviceGender, value: OrderByValue.desc),
    ],
  );

  @override
  StreamAllConfig<Service> get baseStreamAllConfig => StreamAllConfig(
    document: documentNodeQueryservices,
    arguments: _listArguments,
  );

  @override
  StreamSingleByIdConfig<Service> get baseStreamSingleByIdConfig =>
      const StreamSingleByIdConfig(document: documentNodeQueryservice);

  @override
  CreateObjectConfig<Service> get baseCreateObjectConfig => CreateObjectConfig(
    document: documentNodeMutationcreateService,
    varsConstructor: ({required newObject}) => Variables_Mutation_createService(
      input: Input_CreateServiceInput(
        name: newObject.name,
        studyYearFromId: newObject.studyYearFromId,
        studyYearToId: newObject.studyYearToId,
        nextServiceId: newObject.nextServiceId,
        color: colorToInt(newObject.color),
        defaultMeeting: switch (newObject.defaultMeeting) {
          final meeting? => Input_MeetingInput(
            name: meeting.name,
            audience: meeting.audience.graphqlValue,
            color: colorToInt(meeting.color),
            isArchived: meeting.isArchived,
            showKodasCheckbox: meeting.showKodasCheckbox,
            serviceStudyYear: meeting.serviceStudyYear,
            serviceGender: meeting.serviceGender,
          ),
          null => null,
        },
      ),
    ).toJson(),
  );

  @override
  UpdateObjectConfig<Service> get baseUpdateObjectConfig => UpdateObjectConfig(
    document: documentNodeMutationupdateService,
    varsConstructor: ({required newObject}) => Variables_Mutation_updateService(
      id: newObject.id,
      input: Input_UpdateServiceInput.fromJson({
        'name': newObject.name,
        'studyYearFromId': newObject.studyYearFromId,
        'studyYearToId': newObject.studyYearToId,
        'nextServiceId': newObject.nextServiceId,
        'color': colorToInt(newObject.color),
        'defaultMeetingId': newObject.defaultMeeting?.id,
      }),
    ).toJson(),
  );

  @override
  DeleteSingleByIdConfig<Service> get baseDeleteSingleByIdConfig =>
      const DeleteSingleByIdConfig(document: documentNodeMutationdeleteService);

  ServicesDAO({required super.db}) : super(fromJson: Service.fromJson);

  ListQueryArguments _listArguments(
    StreamableDAOParameters<Service>? parameters,
  ) {
    final listing = ListQueryArguments.fromParameters(
      StreamableDAOParameters<Service>(
        where: parameters?.where,
        orderBy: parameters?.orderBy,
      ),
      defaultOrderBy: [
        OrderBy(field: ServiceFields().studyYearFrom),
        OrderBy(field: ServiceFields().studyYearTo),
      ],
    );

    if (parameters?.search case final search? when search.isNotEmpty) {
      final nameMatches = {
        'name': {'ilike': '%$search%'},
      };

      return ListQueryArguments(
        filter: {
          'and': [
            ?listing.filter,
            {
              'or': [
                nameMatches,
                {'classes': nameMatches},
                {'groups': nameMatches},
              ],
            },
          ],
        },
        sort: listing.sort,
        otherVariables: {
          'classesSort': _classesOrder,
          'classesFilter': nameMatches,
          'groupsFilter': nameMatches,
        },
      );
    }

    return ListQueryArguments(
      filter: listing.filter,
      sort: listing.sort,
      otherVariables: {'classesSort': _classesOrder},
    );
  }
}
