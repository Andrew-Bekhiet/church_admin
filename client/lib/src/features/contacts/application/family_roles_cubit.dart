import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/person_types_dao.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FamilyRolesCubit extends Cubit<List<PersonType>> {
  final PersonTypesDAO _personTypes;

  FamilyRolesCubit(this._personTypes) : super(const []);

  Future<void> load() async {
    final roles = await _personTypes.fetchFamilyRoles();
    if (isClosed) return;

    emit(roles);
  }
}
