import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:uuid/uuid.dart';

import '../../iterable_difference_result.dart';
import '../helpers.dart';
import '__generated__/mutations.gql.dart';

class FamilyInsertHelper {
  static final _mutationNonExistentVars = {
    'id',
    'parents',
    'children',
  };

  final Family newFamily;

  final Map<String, dynamic> _familyDelta;

  FamilyInsertHelper({
    required this.newFamily,
    Family? oldFamily,
  }) : _familyDelta = computeObjectDelta(
          newFamily.toJson(),
          (oldFamily ?? Family(id: '', name: '')).toJson(),
        )..removeWhere((k, v) => _mutationNonExistentVars.contains(k));

  Input_FamiliesFamiliesArrRelInsertInput get _childrenFamilies =>
      Input_FamiliesFamiliesArrRelInsertInput(
        data: [
          ...(newFamily.children ?? []).map(
            (e) => Input_FamiliesFamiliesInsertInput(
              childFamilyId: e.id.toUuid(),
            ),
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
        newFamily: Input_FamiliesInsertInput.fromJson(_familyDelta).copyWith(
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

  FamilyUpdateHelper({
    required this.newFamily,
    required this.oldFamily,
  }) : _familyDelta =
            computeObjectDelta(newFamily.toJson(), oldFamily.toJson()) {
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
        newFamily: Input_FamiliesSetInput.fromJson(_familyDelta),
        updateFamily: _updateFamily,
        addRelatedFamilies: _addRelatedFamilies,
        insertRelatedFamilies: _insertRelatedFamilies,
        deleteRelatedFamilies: _deleteRelatedFamilies,
        deleteChildren: _deleteChildren,
        deleteParents: _deleteParents,
      );
}
