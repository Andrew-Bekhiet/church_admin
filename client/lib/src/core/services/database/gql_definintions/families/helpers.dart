import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/families/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/helpers.dart';
import 'package:collection/collection.dart';
import 'package:uuid/enums.dart';

class FamilyInsertHelper {
  final Family newFamily;

  FamilyInsertHelper({required this.newFamily});

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
}

class FamilyUpdateHelper {
  final Family newFamily;
  final Family oldFamily;

  final Map<String, dynamic> _familyDelta;

  late final IterableDifferenceResult<ID> _childrenDiff;
  late final IterableDifferenceResult<ID> _parentsDiff;

  FamilyUpdateHelper({required this.newFamily, required this.oldFamily})
      : _familyDelta = computeObjectDelta(
          newFamily.toJson(),
          oldFamily.toJson(),
        ) {
    _childrenDiff = _getDifferenceUsing((p) => p.children);
    _parentsDiff = _getDifferenceUsing((p) => p.parents);
  }

  IterableDifferenceResult<ID> _getDifferenceUsing(
    Iterable<ID>? Function(Family) selector,
  ) {
    return diff(
      EqualitySet<ID>.from(idEquality, selector(oldFamily) ?? []),
      EqualitySet<ID>.from(idEquality, selector(newFamily) ?? []),
    );
  }

  bool get _updateFamily => _familyDelta.isNotEmpty;

  bool get _insertRelatedFamilies =>
      _childrenDiff.added.isNotEmpty || _parentsDiff.added.isNotEmpty;
  bool get _deleteRelatedFamilies =>
      _childrenDiff.removed.isNotEmpty || _parentsDiff.removed.isNotEmpty;

  List<UuidValue> get _deleteChildren =>
      _childrenDiff.removed.map((s) => s.id.toUuid()).toList();
  List<UuidValue> get _deleteParents =>
      _parentsDiff.removed.map((s) => s.id.toUuid()).toList();

  List<Input_FamiliesFamiliesInsertInput> get _addRelatedFamilies => [
        ..._childrenDiff.added.map(
          (e) => Input_FamiliesFamiliesInsertInput(
            parentFamilyId: newFamily.id.toUuid(),
            childFamilyId: e.id.toUuid(),
          ),
        ),
        ..._parentsDiff.added.map(
          (e) => Input_FamiliesFamiliesInsertInput(
            parentFamilyId: e.id.toUuid(),
            childFamilyId: newFamily.id.toUuid(),
          ),
        ),
      ];

  Variables_Mutation_updateFamily get variables =>
      Variables_Mutation_updateFamily(
        familyId: newFamily.id.toUuid(),
        newFamily: newFamily.toUpdateInput(oldFamily),
        updateFamily: _updateFamily,
        addressId: newFamily.address?.id?.toUuid() ?? Namespace.nil.uuidValue,
        newAddress: newFamily.address?.toUpdateInput(oldFamily.address!),
        updateAddress: newFamily.address != oldFamily.address,
        addRelatedFamilies: _addRelatedFamilies,
        insertRelatedFamilies: _insertRelatedFamilies,
        deleteRelatedFamilies: _deleteRelatedFamilies,
        deleteChildren: _deleteChildren,
        deleteParents: _deleteParents,
        insertFatherVisitHistory:
            newFamily.lastFatherVisit != oldFamily.lastFatherVisit,
        insertVisitHistory: newFamily.lastVisit != oldFamily.lastVisit,
        lastFatherVisit: newFamily.lastFatherVisit?.time,
        lastVisit: newFamily.lastVisit?.time,
      );
}
