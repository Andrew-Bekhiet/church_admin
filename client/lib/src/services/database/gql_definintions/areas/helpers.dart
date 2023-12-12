import 'package:church_admin/church_admin.dart';

import '../helpers.dart';
import '__generated__/mutations.gql.dart';

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
