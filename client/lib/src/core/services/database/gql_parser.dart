import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

class GQLParser {
  const GQLParser();

  Json castMapToJson(Map data) {
    return data.cast<String, Object?>();
  }

  Iterable<T> Function(Json d) singleListParser<T>(T Function(Json) mapper) {
    return (d) => d.values.whereType<List>().first.map(
          (o) => mapper(
            castMapToJson(o),
          ),
        );
  }

  ParserFn<T?> singleOrNullParser<T>(
    ParserFn<T?> fromJson,
  ) {
    return (data) {
      final value = data.values.whereType<Map?>().singleOrNull;
      if (value == null) return null;

      return fromJson(value.cast<String, Object?>());
    };
  }

  ParserFn<T> singleParser<T>(
    ParserFn<T> fromJson,
  ) {
    return (data) {
      final value = data.values.whereType<Map>().single;
      return fromJson(value.cast<String, Object?>());
    };
  }

  ParserFn<T?> lastOrNullParser<T>(
    ParserFn<T?> fromJson,
  ) {
    return (data) {
      final value = data.values.whereType<Map?>().lastOrNull;
      if (value == null) return null;

      return fromJson(value.cast<String, Object?>());
    };
  }

  ParserFn<T> lastParser<T>(
    ParserFn<T> fromJson,
  ) {
    return (data) {
      final value = data.values.whereType<Map>().last;
      return fromJson(value.cast<String, Object?>());
    };
  }
}

typedef ParserFn<T> = T Function(Map<String, dynamic> data);
