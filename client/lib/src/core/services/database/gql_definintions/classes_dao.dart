import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/classes/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/classes/__generated__/queries.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/classes/__generated__/subscriptions.gql.dart';
import 'package:graphql/client.dart';

class ClassesDAO extends LegacyFullCRUDDAO<Class> {
  @override
  late final LegacyStreamAllConfig<Class> baseStreamAllConfig =
      LegacyStreamAllConfig(
        document: documentNodeSubscriptionwatchAllClasses,
        transformRequest: _streamAllVarsConstructor,
      );
  @override
  late final LegacyStreamCountConfig<Class> baseStreamCountConfig =
      const LegacyStreamCountConfig(
        document: documentNodeSubscriptionwatchClassesCount,
      );
  @override
  late final LegacyStreamSingleByIdConfig<Class> baseStreamSingleByIdConfig =
      LegacyStreamSingleByIdConfig(
        document: documentNodeSubscriptionwatchClass,
        varsConstructor: _streamSingleByIdVarsConstructor,
      );
  @override
  late final LegacyDeleteSingleByIdConfig<Class> baseDeleteSingleByIdConfig =
      LegacyDeleteSingleByIdConfig(
        document: documentNodeMutationdeleteClass,
        varsConstructor: _deleteSingleByIdVarsConstructor,
      );
  @override
  late final LegacyUpdateObjectConfig<Class> baseUpdateObjectConfig =
      LegacyUpdateObjectConfig(
        document: documentNodeMutationupdateClass,
        varsConstructor: _updateClassVarsConstructor,
      );
  @override
  late final LegacyCreateObjectConfig<Class> baseCreateObjectConfig =
      LegacyCreateObjectConfig(
        document: documentNodeMutationinsertClass,
        varsConstructor: _createClassVarsConstructor,
      );

  ClassesDAO({required super.db}) : super(fromJson: Class.fromJson);

  Json _streamAllVarsConstructor(
    PaginatableStreamRequest<Class, StreamableDAOParameters<Class>?> request,
  ) {
    final orderBy = request.param?.orderBy;

    return db.varsTransformer.transformrequestForPagination(
      request,
      overrideOrderBy: (orderBy?.isEmpty ?? true)
          ? [
              OrderBy(
                field: ClassFields().studyYear.redirectTo(
                  StudyYearFields().order,
                ),
              ),
              OrderBy(
                field: ClassFields().serviceGender,
                value: OrderByValue.desc,
              ),
              OrderBy(field: ClassFields().name),
            ]
          : null,
    );
  }

  Json _streamSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Subscription_watchClass(id: id).toJson();

  Json _createClassVarsConstructor({required Class newObject}) =>
      Variables_Mutation_insertClass(
        newClass: newObject.toInsertInput(),
      ).toJson();

  Json _updateClassVarsConstructor({
    required Class newObject,
    required Class oldObject,
  }) => Variables_Mutation_updateClass(
    classId: newObject.id.toUuid(),
    newClass: newObject.toUpdateInput(oldObject: oldObject),
  ).toJson();

  Json _deleteSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Mutation_deleteClass(classId: id).toJson();

  Future<List<Class>> getClassesForService({required String serviceId}) async {
    final result = await graphQLClient.queryAndReturnParsed(
      QueryOptions(
        document: documentNodeQueryclassesForService,
        operationName: 'classesForService',
        variables: Variables_Query_classesForService(
          serviceId: serviceId.toUuid(),
        ).toJson(),
        parserFn: Query_classesForService.fromJson,
      ),
    );

    return result.classes
        .map((class$) => Class.fromJson(class$.toJson()))
        .toList();
  }
}
