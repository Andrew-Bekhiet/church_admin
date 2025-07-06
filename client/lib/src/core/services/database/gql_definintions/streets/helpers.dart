import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/helpers.dart';

class StreetInsertHelper {
  static final _mutationNonExistentVars = {
    'id',
  };

  final Street newStreet;

  final Map<String, dynamic> _streetDelta;

  StreetInsertHelper({
    required this.newStreet,
    Street? oldStreet,
  }) : _streetDelta = computeObjectDelta(
          newStreet.toJson(),
          (oldStreet ?? const Street(id: '', name: '')).toJson(),
          ignoreFields: _mutationNonExistentVars,
        );

  Variables_Mutation_insertStreet get variables =>
      Variables_Mutation_insertStreet(
        newStreet: Input_StreetsInsertInput.fromJson(_streetDelta),
      );
}

class StreetUpdateHelper {
  final Street newStreet;
  final Street oldStreet;

  final Map<String, dynamic> _streetDelta;

  StreetUpdateHelper({required this.newStreet, required this.oldStreet})
      : _streetDelta = computeObjectDelta(
          newStreet.toJson(),
          oldStreet.toJson(),
        );

  bool get _insertHistoryVisitHistoryOne => _streetDelta['lastVisit'] != null;

  Variables_Mutation_updateStreet get variables =>
      Variables_Mutation_updateStreet(
        streetId: newStreet.id.toUuid(),
        newStreet: Input_StreetsSetInput.fromJson(_streetDelta),
        updateLastVisit: _insertHistoryVisitHistoryOne,
        lastVisit:
            _insertHistoryVisitHistoryOne ? newStreet.lastVisit!.time : null,
      );
}
