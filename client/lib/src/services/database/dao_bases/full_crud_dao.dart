import 'package:church_admin/church_admin.dart';

abstract class FullCRUDDAO<T extends ViewableWithID, TBoolExp>
    extends DAOBase<T>
    with
        StreamableDAO<T, TBoolExp>,
        CreatableDAO<T>,
        UpdatableDAO<T>,
        DeletableDAO<T> {
  FullCRUDDAO({
    required super.db,
    required super.fromJson,
  });
}
