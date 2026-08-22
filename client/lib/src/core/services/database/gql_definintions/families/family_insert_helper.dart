import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/families/__generated__/mutations.gql.dart';

class FamilyInsertHelper {
  final Family newFamily;

  Input_FamiliesFamiliesArrRelInsertInput get _childrenFamilies =>
      Input_FamiliesFamiliesArrRelInsertInput(
        data: [
          ...(newFamily.children ?? []).map(
            (e) =>
                Input_FamiliesFamiliesInsertInput(childFamilyId: e.id.toUuid()),
          ),
        ],
      );

  Input_FamiliesFamiliesArrRelInsertInput get _parentsFamilies =>
      Input_FamiliesFamiliesArrRelInsertInput(
        data: [
          ...(newFamily.parents ?? []).map(
            (e) => Input_FamiliesFamiliesInsertInput(
              parentFamilyId: e.id.toUuid(),
            ),
          ),
        ],
      );

  Variables_Mutation_insertFamily get variables =>
      Variables_Mutation_insertFamily(
        newFamily: newFamily.toInsertInput().copyWith(
          children: _childrenFamilies,
          parents: _parentsFamilies,
        ),
      );

  FamilyInsertHelper({required this.newFamily});
}
