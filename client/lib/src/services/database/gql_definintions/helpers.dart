import 'package:churchdata_core/churchdata_core.dart';
import 'package:collection/collection.dart';

final idEquality = EqualityBy<ID, String>((o) => o.id);
final collectionEquality =
    DeepCollectionEquality.unordered(EqualityBy((o) => o is ID ? o.id : o));

Json computeObjectDelta(Json newObject, Json oldObject) => {
      for (final kv in newObject.entries)
        if (!collectionEquality.equals(
          kv.value,
          oldObject[kv.key],
        ))
          kv.key: kv.value,
    };
