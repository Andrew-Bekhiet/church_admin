import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/services/database/gql_definintions/helpers.dart';
import 'package:uuid/uuid.dart';

import 'services/__generated__/mutations.gql.dart';
import 'services/__generated__/subscriptions.gql.dart';

class ServicesDAO extends FullCRUDDAO<Service, Input_ServicesBoolExp> {
  ServicesDAO({required super.db}) : super(fromJson: Service.fromJson);

  @override
  late final StreamAllConfig<Service, Input_ServicesBoolExp>
      baseStreamAllConfig =
      const StreamAllConfig(document: documentNodeSubscriptionwatchAllServices);

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

  Json _streamAllVarsConstructor({
    required GQLPaginatableStreamEvent<Service> event,
    required List<Input_ServicesBoolExp> where,
    List<Input_GroupsBoolExp> groupsWhere = const [],
    List<Input_ClassesBoolExp> classesWhere = const [],
  }) {
    final instance = event.instance;
    final offset = event.offset;
    final search = event.search;
    final lastSearch = event.lastSearch;

    final bool nameSearch = search != null && search.isNotEmpty;
    final nameSearchExp = Input_StringComparisonExp($_ilike: '%$search%');

    return Variables_Subscription_watchAllServices(
      limit: instance.limit + 1,
      where: [
        ...where,
        if (nameSearch)
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
          ),
        if (lastSearch == search && offset > 0)
          Input_ServicesBoolExp(
            name: Input_StringComparisonExp(
              $_gt: instance
                  .currentValue[
                      (offset - 1) * instance.limit + instance.limit - 1]
                  .name,
            ),
          ),
      ],
      classesWhere: [
        ...classesWhere,
        if (nameSearch)
          Input_ClassesBoolExp(
            name: nameSearchExp,
          ),
      ],
      groupsWhere: [
        ...groupsWhere,
        if (nameSearch)
          Input_GroupsBoolExp(
            name: nameSearchExp,
          ),
      ],
    ).toJson();
  }

  Json _streamSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Subscription_watchService(id: id).toJson();

  Json _createServiceVarsConstructor({required Service newObject}) =>
      Variables_Mutation_insertService(
        newService: Input_ServicesInsertInput.fromJson(newObject.toJson()),
      ).toJson();

  Json _updateServiceVarsConstructor({
    required Service newObject,
    required Service oldObject,
  }) =>
      Variables_Mutation_updateService(
        serviceId: newObject.id.toUuid(),
        newService: Input_ServicesSetInput.fromJson(
          computeObjectDelta(newObject.toJson(), oldObject.toJson()),
        ),
      ).toJson();

  Json _deleteSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Mutation_deleteService(serviceId: id).toJson();

  @override
  GQLPaginatableStream<Service> streamAll({
    Stream<String?>? searchQuery,
    List<Input_ServicesBoolExp>? where,
    List<Input_GroupsBoolExp>? groupsWhere,
    List<Input_ClassesBoolExp>? classesWhere,
  }) {
    return streamingProxy.streamAll(
      searchQuery: searchQuery,
      where: where,
      streamAllConfig: baseStreamAllConfig.copyWith(
        varsConstructor: ({required event, required where}) =>
            _streamAllVarsConstructor(
          event: event,
          where: where,
          groupsWhere: groupsWhere ?? [],
          classesWhere: classesWhere ?? [],
        ),
      ),
    );
  }
}
