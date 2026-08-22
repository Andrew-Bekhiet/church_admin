import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/areas/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/helpers.dart';

class AreaInsertHelper {
  static final _mutationNonExistentVars = {
    'id',
  };

  final Area newArea;

  final Map<String, dynamic> _areaDelta;

  Variables_Mutation_insertArea get variables => Variables_Mutation_insertArea(
    newArea: Input_AreasInsertInput.fromJson(_areaDelta),
  );

  AreaInsertHelper({
    required this.newArea,
    Area? oldArea,
  }) : _areaDelta = computeObjectDelta(
         newArea.toJson(),
         (oldArea ?? const Area(id: '', name: '')).toJson(),
         ignoreFields: _mutationNonExistentVars,
       );
}
