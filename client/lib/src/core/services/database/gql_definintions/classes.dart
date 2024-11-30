import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/helpers.dart';

import 'classes/__generated__/mutations.gql.dart';
import 'classes/__generated__/subscriptions.gql.dart';

class ClassesDAO
    extends FullCRUDDAO<Class, Input_ClassesBoolExp, Input_ClassesOrderBy> {
  ClassesDAO({required super.db}) : super(fromJson: Class.fromJson);

  @override
  late final StreamAllConfig<Class, Input_ClassesBoolExp, Input_ClassesOrderBy>
      baseStreamAllConfig = StreamAllConfig(
    document: documentNodeSubscriptionwatchAllClasses,
    transformVars: _streamAllVarsConstructor,
  );
  @override
  late final StreamSingleByIdConfig<Class> baseStreamSingleByIdConfig =
      StreamSingleByIdConfig(
    document: documentNodeSubscriptionwatchClass,
    varsConstructor: _streamSingleByIdVarsConstructor,
  );
  @override
  late final DeleteSingleByIdConfig<Class> baseDeleteSingleByIdConfig =
      DeleteSingleByIdConfig(
    document: documentNodeMutationdeleteClass,
    varsConstructor: _deleteSingleByIdVarsConstructor,
  );
  @override
  late final UpdateObjectConfig<Class> baseUpdateObjectConfig =
      UpdateObjectConfig(
    document: documentNodeMutationupdateClass,
    varsConstructor: _updateClassVarsConstructor,
  );
  @override
  late final CreateObjectConfig<Class> baseCreateObjectConfig =
      CreateObjectConfig(
    document: documentNodeMutationinsertClass,
    varsConstructor: _createClassVarsConstructor,
  );

  Json _streamAllVarsConstructor({
    required GQLPaginatableStreamEvent<Class> event,
    List<Input_ClassesBoolExp>? where,
    List<Input_ClassesOrderBy>? orderBy,
  }) {
    return db.varsTransformer.transformVariablesForPagination(
      event,
      where: where?.map((o) => o.toJson()).toList() ?? [],
      orderBy: ((orderBy?.isEmpty ?? true)
              ? [
                  Input_ClassesOrderBy(serviceStudyYear: Enum_OrderBy.ASC),
                  Input_ClassesOrderBy(
                    serviceGender: Enum_OrderBy.DESC_NULLS_FIRST,
                  ),
                  Input_ClassesOrderBy(name: Enum_OrderBy.ASC),
                ]
              : orderBy!)
          .map((o) => o.toJson())
          .toList(),
    );
  }

  Json _streamSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Subscription_watchClass(id: id).toJson();

  Json _createClassVarsConstructor({required Class newObject}) =>
      Variables_Mutation_insertClass(
        newClass: Input_ClassesInsertInput.fromJson(newObject.toJson()),
      ).toJson();

  Json _updateClassVarsConstructor({
    required Class newObject,
    required Class oldObject,
  }) =>
      Variables_Mutation_updateClass(
        classId: newObject.id.toUuid(),
        newClass: Input_ClassesSetInput.fromJson(
          computeObjectDelta(newObject.toJson(), oldObject.toJson()),
        ),
      ).toJson();

  Json _deleteSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Mutation_deleteClass(classId: id).toJson();
}
