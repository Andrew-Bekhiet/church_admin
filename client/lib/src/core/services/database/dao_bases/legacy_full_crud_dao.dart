import 'package:church_admin/church_admin.dart';

abstract class LegacyFullCRUDDAO<T extends ViewableWithID> extends DAOBase<T>
    with
        LegacyStreamableDAO<T>,
        LegacyCreatableDAO<T>,
        LegacyUpdatableDAO<T>,
        LegacyDeletableDAO<T> {
  LegacyFullCRUDDAO({
    required super.db,
    required super.fromJson,
  });
}
