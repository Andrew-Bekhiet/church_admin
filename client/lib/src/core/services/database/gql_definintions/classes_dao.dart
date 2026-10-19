import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/classes/__generated__/mutations.graphql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/classes/__generated__/queries.graphql.dart';

class ClassesDAO extends FullCRUDDAO<Class> {
  @override
  StreamAllConfig<Class> get baseStreamAllConfig => StreamAllConfig(
    document: documentNodeQueryclasses,
    arguments: _listArguments,
  );

  @override
  StreamSingleByIdConfig<Class> get baseStreamSingleByIdConfig =>
      const StreamSingleByIdConfig(document: documentNodeQueryclass);

  @override
  CreateObjectConfig<Class> get baseCreateObjectConfig => CreateObjectConfig(
    document: documentNodeMutationcreateClass,
    varsConstructor: ({required newObject}) => Variables_Mutation_createClass(
      input: Input_CreateClassInput(
        name: newObject.name,
        color: colorToInt(newObject.color),
        serviceId:
            newObject.service?.id ??
            newObject.serviceId ??
            (throw ArgumentError.value(
              newObject,
              'newObject',
              'A class needs the service it belongs to',
            )),
        serviceStudyYear:
            newObject.serviceStudyYear ??
            (throw ArgumentError.value(
              newObject,
              'newObject',
              'A class needs the study year it is served for',
            )),
        serviceStudyYearTo:
            newObject.serviceStudyYearTo ?? newObject.serviceStudyYear,
        serviceGender: newObject.serviceGender,
      ),
    ).toJson(),
  );

  @override
  UpdateObjectConfig<Class> get baseUpdateObjectConfig => UpdateObjectConfig(
    document: documentNodeMutationupdateClass,
    varsConstructor: ({required newObject}) => Variables_Mutation_updateClass(
      id: newObject.id,
      input: Input_UpdateClassInput.fromJson({
        'name': newObject.name,
        'color': colorToInt(newObject.color),
        'serviceId': newObject.service?.id ?? newObject.serviceId,
        'serviceStudyYear': newObject.serviceStudyYear,
        'serviceStudyYearTo': newObject.serviceStudyYearTo,
        'serviceGender': newObject.serviceGender,
      }),
    ).toJson(),
  );

  @override
  DeleteSingleByIdConfig<Class> get baseDeleteSingleByIdConfig =>
      const DeleteSingleByIdConfig(document: documentNodeMutationdeleteClass);

  ClassesDAO({required super.db}) : super(fromJson: Class.fromJson);

  ListQueryArguments _listArguments(
    StreamableDAOParameters<Class>? parameters,
  ) => ListQueryArguments.fromParameters(
    StreamableDAOParameters<Class>(
      search: parameters?.search,
      where: parameters?.where,
      orderBy: (parameters?.orderBy?.isEmpty ?? true)
          ? null
          : parameters?.orderBy,
    ),
    defaultOrderBy: [
      OrderBy(field: ClassFields().studyYear),
      OrderBy(field: ClassFields().serviceGender, value: OrderByValue.desc),
      OrderBy(field: ClassFields().name),
    ],
  );

  Future<List<Class>> getClassesForService({required String serviceId}) =>
      query(
        where: [
          Filter(
            ClassFields().service.redirectTo(ServiceFields().id),
            MultiSelectOperator.anyOf,
            [serviceId],
          ),
        ],
        orderBy: [OrderBy(field: ClassFields().name)],
        limit: AshPagination.maxPageSize,
      );
}
