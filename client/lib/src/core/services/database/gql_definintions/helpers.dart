import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

final idEquality = EqualityBy<ID, String>((o) => o.id);
final collectionEquality = DeepCollectionEquality.unordered(
  EqualityBy((o) => o is ID ? o.id : o),
);

Json computeObjectDelta(
  Json newObject,
  Json oldObject, {
  Set<String> ignoreFields = const {'id'},
}) => {
  for (final kv in newObject.entries)
    if (!ignoreFields.contains(kv.key) &&
        !collectionEquality.equals(
          kv.value,
          oldObject[kv.key],
        ))
      kv.key: kv.value,
};
