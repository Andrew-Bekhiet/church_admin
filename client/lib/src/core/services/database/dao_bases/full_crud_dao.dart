import 'package:church_admin/church_admin.dart';

abstract class FullCRUDDAO<T extends ViewableWithID> extends DAOBase<T>
    with
        KeysetStreamableDAO<T>,
        CreatableDAO<T>,
        UpdatableDAO<T>,
        DeletableDAO<T> {
  FullCRUDDAO({required super.db, required super.fromJson});
}
