import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

class GQLParser {
  const GQLParser();

  Json castMapToJson(Map data) {
    return data.cast<String, Object?>();
  }

  Iterable<T> Function(Json d) singleListParser<T>(
    T Function(Json) mapper, [
    String? key,
  ]) {
    return (d) {
      final value =
          key != null
              ? d[key] as List?
              : d.values.whereType<List?>().singleOrNull;
      if (value == null) return [];

      return value.map((o) => mapper(castMapToJson(o)));
    };
  }

  ParserFn<T?> singleOrNullParser<T>(ParserFn<T?> fromJson, [String? key]) {
    return (data) {
      final value =
          key != null
              ? data[key] as Map?
              : data.values.whereType<Map?>().singleOrNull;
      if (value == null) return null;

      return fromJson(value.cast<String, Object?>());
    };
  }

  ParserFn<T> singleParser<T>(ParserFn<T> fromJson, [String? key]) {
    return (data) {
      final value =
          key != null ? data[key] as Map : data.values.whereType<Map>().single;
      return fromJson(value.cast<String, Object?>());
    };
  }
}

typedef ParserFn<T> = T Function(Map<String, dynamic> data);
