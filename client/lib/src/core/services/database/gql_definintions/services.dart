import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/helpers.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/services/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/services/__generated__/subscriptions.gql.dart';

class ServicesDAO extends FullCRUDDAO<Service> {
  ServicesDAO({required super.db}) : super(fromJson: Service.fromJson);

  @override
  late final StreamAllConfig<Service> baseStreamAllConfig = StreamAllConfig(
    document: documentNodeSubscriptionwatchAllServices,
    transformRequest: _streamAllVarsConstructor,
  );

  @override
  late final StreamCountConfig<Service> baseStreamCountConfig =
      const StreamCountConfig(
    document: documentNodeSubscriptionwatchServicesCount,
  );
  @override
  late final StreamSingleByIdConfig<Service> baseStreamSingleByIdConfig =
      StreamSingleByIdConfig(
    document: documentNodeSubscriptionwatchService,
    varsConstructor: _streamSingleByIdVarsConstructor,
  );
  @override
  late final DeleteSingleByIdConfig<Service> baseDeleteSingleByIdConfig =
      DeleteSingleByIdConfig(
    document: documentNodeMutationdeleteService,
    varsConstructor: _deleteSingleByIdVarsConstructor,
  );
  @override
  late final UpdateObjectConfig<Service> baseUpdateObjectConfig =
      UpdateObjectConfig(
    document: documentNodeMutationupdateService,
    varsConstructor: _updateServiceVarsConstructor,
  );
  @override
  late final CreateObjectConfig<Service> baseCreateObjectConfig =
      CreateObjectConfig(
    document: documentNodeMutationinsertService,
    varsConstructor: _createServiceVarsConstructor,
  );

  Json _streamAllVarsConstructor(
    PaginatableStreamRequest<Service, StreamableDAOParameters<Service>?>
        request,
  ) {
    final search = request.param?.search;
    final orderBy = request.param?.orderBy;
    final where = request.param?.where;

    final bool nameSearch = search != null && search.isNotEmpty;
    final nameSearchExp = Input_StringComparisonExp($_ilike: '%$search%');

    return {
      'classesWhere': [
        if (nameSearch)
          Input_ClassesBoolExp(
            name: nameSearchExp,
          ),
      ].map((e) => e.toJson()).toList(),
      'groupsWhere': [
        if (nameSearch)
          Input_GroupsBoolExp(
            name: nameSearchExp,
          ),
      ].map((e) => e.toJson()).toList(),
      ...db.varsTransformer.transformrequestForPagination(
        request,
        overrideWhere: nameSearch
            ? [
                ...where?.map((o) => o.toJson()) ?? [],
                Input_ServicesBoolExp(
                  $_or: [
                    Input_ServicesBoolExp(
                      name: nameSearchExp,
                    ),
                    Input_ServicesBoolExp(
                      classes: Input_ClassesBoolExp(
                        name: nameSearchExp,
                      ),
                    ),
                    Input_ServicesBoolExp(
                      groups: Input_GroupsBoolExp(
                        name: nameSearchExp,
                      ),
                    ),
                  ],
                ).toJson(),
              ]
            : [],
        overrideOrderBy: orderBy?.map((o) => o.toJson()).toList() ??
            [
              {'studyYearFromId': 'ASC'},
              {'studyYearToId': 'ASC'},
            ],
      ),
    };
  }

  Json _streamSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Subscription_watchService(id: id).toJson();

  Json _createServiceVarsConstructor({required Service newObject}) =>
      Variables_Mutation_insertService(
        newService: Input_ServicesInsertInput.fromJson(
          computeObjectDelta(
            newObject.toJson(),
            const Service(id: '', name: '').toJson(),
            ignoreFields: {
              'id',
              'studyYearFrom',
              'studyYearTo',
              'nextService',
            },
          ),
        ),
      ).toJson();

  Json _updateServiceVarsConstructor({
    required Service newObject,
    required Service oldObject,
  }) =>
      Variables_Mutation_updateService(
        serviceId: newObject.id.toUuid(),
        newService: Input_ServicesSetInput.fromJson(
          computeObjectDelta(
            newObject.toJson(),
            oldObject.toJson(),
            ignoreFields: {
              'id',
              'studyYearFrom',
              'studyYearTo',
              'nextService',
            },
          ),
        ),
      ).toJson();

  Json _deleteSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Mutation_deleteService(serviceId: id).toJson();
}
