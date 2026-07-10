import 'package:church_admin/church_admin.dart';
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
                ...?where,
                Filter(const DotField(), LogicalOperator.or, [
                  Filter(
                    ServiceFields().name,
                    StringOperator.contains,
                    search,
                  ),
                  Filter(
                    ServiceFields().classes.redirectTo(ClassFields().name),
                    StringOperator.contains,
                    search,
                  ),
                  Filter(
                    ServiceFields().groups.redirectTo(GroupFields().name),
                    StringOperator.contains,
                    search,
                  ),
                ]),
              ]
            : where,
        overrideOrderBy:
            orderBy?.toList() ??
            [
              OrderBy(
                field: ServiceFields().studyYearFrom.redirectTo(
                  StudyYearFields().order,
                ),
              ),
              OrderBy(
                field: ServiceFields().studyYearTo.redirectTo(
                  StudyYearFields().order,
                ),
              ),
            ],
      ),
    };
  }

  Json _streamSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Subscription_watchService(id: id).toJson();

  Json _createServiceVarsConstructor({required Service newObject}) =>
      newObject.toInsertInput().toJson();

  Json _updateServiceVarsConstructor({
    required Service newObject,
    required Service oldObject,
  }) => newObject.toUpdateInput(oldObject).toJson();

  Json _deleteSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Mutation_deleteService(serviceId: id).toJson();
}
