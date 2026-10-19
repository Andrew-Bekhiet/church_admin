import 'package:church_admin/church_admin.dart';

/// What features read through a DAO, whichever backend base implements it.
abstract interface class StreamableDAO<T extends ViewableWithID>
    implements DAOBase<T> {
  DAOMethodTemplate<Object?> get baseStreamAllConfig;

  LegacyStreamCountConfig<T>? get baseStreamCountConfig;

  PaginatableStreamBase<T> streamAll({
    Stream<String?>? searchQuery,
    Stream<List<Filter>>? where,
    Stream<List<OrderBy>>? orderBy,
    Stream<FieldMetadata?>? secondLineField,
  });

  PaginatableStreamBase<T> streamAllWithConfig({
    required DAOMethodTemplate<Object?> streamAllConfig,
    LegacyStreamCountConfig<T>? streamCountConfig,
    Stream<String?>? searchQuery,
    Stream<List<Filter>>? where,
    Stream<List<OrderBy>>? orderBy,
    Stream<FieldMetadata?>? secondLineField,
    int? overrideTotalLimit,
  });

  Future<List<T>> query({
    bool onlineFirst = false,
    String? searchQuery,
    List<Filter>? where,
    List<OrderBy>? orderBy,
    int? limit,
  });

  Stream<T?> streamSingleById({required String id});
}
