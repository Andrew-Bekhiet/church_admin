import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/areas/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/helpers.dart';

class AreaUpdateHelper {
  final Area newArea;
  final Area oldArea;

  final Map<String, dynamic> _areaDelta;

  bool get _insertHistoryVisitHistoryOne => _areaDelta['lastVisit'] != null;

  Variables_Mutation_updateArea get variables => Variables_Mutation_updateArea(
    areaId: newArea.id.toUuid(),
    newArea: Input_AreasSetInput.fromJson(_areaDelta),
    updateLastVisit: _insertHistoryVisitHistoryOne,
    lastVisit: _insertHistoryVisitHistoryOne ? newArea.lastVisit!.time : null,
  );

  AreaUpdateHelper({required this.newArea, required this.oldArea})
    : _areaDelta = computeObjectDelta(
        newArea.toJson(),
        oldArea.toJson(),
      );
}
