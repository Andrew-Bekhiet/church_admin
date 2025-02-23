import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/areas/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/helpers.dart';

class AreaInsertHelper {
  static final _mutationNonExistentVars = {
    'id',
  };

  final Area newArea;

  final Map<String, dynamic> _areaDelta;

  AreaInsertHelper({
    required this.newArea,
    Area? oldArea,
  }) : _areaDelta = computeObjectDelta(
          newArea.toJson(),
          (oldArea ?? Area(id: '', name: '')).toJson(),
          ignoreFields: _mutationNonExistentVars,
        );

  Variables_Mutation_insertArea get variables => Variables_Mutation_insertArea(
        newArea: Input_AreasInsertInput.fromJson(_areaDelta),
      );
}

class AreaUpdateHelper {
  final Area newArea;
  final Area oldArea;

  final Map<String, dynamic> _areaDelta;

  AreaUpdateHelper({required this.newArea, required this.oldArea})
      : _areaDelta = computeObjectDelta(
          newArea.toJson(),
          oldArea.toJson(),
        );

  bool get _insertHistoryVisitHistoryOne => _areaDelta['lastVisit'] != null;

  Variables_Mutation_updateArea get variables => Variables_Mutation_updateArea(
        areaId: newArea.id.toUuid(),
        newArea: Input_AreasSetInput.fromJson(_areaDelta),
        updateLastVisit: _insertHistoryVisitHistoryOne,
        lastVisit:
            _insertHistoryVisitHistoryOne ? newArea.lastVisit!.time : null,
      );
}
