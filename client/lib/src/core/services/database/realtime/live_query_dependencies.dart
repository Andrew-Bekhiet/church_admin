import 'package:church_admin/church_admin.dart';
import 'package:meta/meta.dart';

/// What a query's last result showed: the `__typename`s, the `(type, id)`
/// records, and the types it shows as lists: the item types of its pages
/// (known even when a page is empty, from `KeysetPageOf<Type>`) and of its
/// nested lists. Before a first result they are [unknown], and every change
/// may affect the query.
@immutable
class LiveQueryDependencies {
  static const unknown = LiveQueryDependencies._(
    allTypes: {},
    entityRefs: {},
    listTypes: {},
    isKnown: false,
  );

  static final _pageTypename = RegExp(r'^(?:KeysetPageOf|PageOf)(.+)$');

  static String _entityRef(String type, String id) => '$type:$id';

  static Iterable<String> _typenamesIn(List<Object?> list) => [
    for (final element in list)
      if (element case {'__typename': final String typename}) typename,
  ];

  final Set<String> allTypes;
  final Set<String> entityRefs;
  final Set<String> listTypes;
  final bool isKnown;

  const LiveQueryDependencies._({
    required this.allTypes,
    required this.entityRefs,
    required this.listTypes,
    this.isKnown = true,
  });

  factory LiveQueryDependencies.ofResult(Object? data) {
    final allTypes = <String>{};
    final entityRefs = <String>{};
    final listTypes = <String>{};
    final pending = <Object?>[data];
    while (pending.isNotEmpty) {
      switch (pending.removeLast()) {
        case final Map<Object?, Object?> object:
          if (object['__typename'] case final String typename) {
            allTypes.add(typename);
            if (_pageTypename.firstMatch(typename)?.group(1)
                case final itemType?) {
              listTypes.add(itemType);
            }
            if (object['id'] case final String id) {
              entityRefs.add(_entityRef(typename, id));
            }
          }
          for (final value in object.values) {
            if (value is List<Object?>) {
              listTypes.addAll(_typenamesIn(value));
            }
          }
          pending.addAll(object.values);

        case final List<Object?> list:
          pending.addAll(list);
      }
    }

    return LiveQueryDependencies._(
      allTypes: allTypes,
      entityRefs: entityRefs,
      listTypes: listTypes,
    );
  }

  LiveQueryDependencies union(LiveQueryDependencies other) =>
      isKnown && other.isKnown
      ? LiveQueryDependencies._(
          allTypes: {...allTypes, ...other.allTypes},
          entityRefs: {...entityRefs, ...other.entityRefs},
          listTypes: {...listTypes, ...other.listTypes},
        )
      : unknown;

  bool isAffectedBy(EntityChange change, LiveQueryKind kind) {
    if (!isKnown) return true;

    final showsTypeAsList = listTypes.contains(change.type);

    return switch ((kind, change.id)) {
      (LiveQueryKind.list, _) =>
        showsTypeAsList || allTypes.contains(change.type),
      (LiveQueryKind.entity, null) =>
        showsTypeAsList || allTypes.contains(change.type),
      (LiveQueryKind.entity, final id?) =>
        showsTypeAsList || entityRefs.contains(_entityRef(change.type, id)),
    };
  }
}
