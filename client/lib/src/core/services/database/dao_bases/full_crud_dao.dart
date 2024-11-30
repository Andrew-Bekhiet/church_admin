import 'package:church_admin/church_admin.dart';

abstract class FullCRUDDAO<T extends ViewableWithID, TBoolExp, TOrderByExp>
    extends DAOBase<T>
    with
        StreamableDAO<T, TBoolExp, TOrderByExp>,
        CreatableDAO<T>,
        UpdatableDAO<T>,
        DeletableDAO<T> {
  FullCRUDDAO({
    required super.db,
    required super.fromJson,
  });
}
