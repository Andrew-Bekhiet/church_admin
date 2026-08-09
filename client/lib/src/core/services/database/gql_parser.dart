import 'dart:math';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

class GQLParser {
  List<T> Function(Json d) listParser<T>(
    T Function(Json) mapper, {
    String? dataKey,
  }) {
    return (d) {
      final value = dataKey != null
          ? d[dataKey] as List?
          : d.values.whereType<List?>().singleOrNull;
      return value?.map((o) => mapper(castMapToJson(o))).toList() ?? [];
    };
  }

  PaginatableStreamResponse<T> Function(Json d) singleListParser<T>(
    T Function(Json) mapper, {
    required int pageSize,
    String? dataKey,
  }) {
    return (d) {
      final value = dataKey != null
          ? d[dataKey] as List?
          : d.values.whereType<List?>().singleOrNull;

      final items = value?.map((o) => mapper(castMapToJson(o))).toList() ?? [];

      return PaginatableStreamResponse<T>(
        data: items.sublist(0, min(items.length, pageSize)),
        cursor: items.elementAtOrNull(pageSize),
      );
    };
  }

  const GQLParser();

  Json castMapToJson(Map data) {
    return data.cast<String, Object?>();
  }

  int? countParser(Json d) =>
      d.values.singleOrNull?['aggregate']?['count'] as int?;

  ParserFn<T?> singleOrNullParser<T>(ParserFn<T?> fromJson, [String? key]) {
    return (data) {
      final value = key != null
          ? data[key] as Map?
          : data.values.whereType<Map?>().singleOrNull;
      if (value == null) return null;

      return fromJson(value.cast<String, Object?>());
    };
  }

  ParserFn<T> singleParser<T>(ParserFn<T> fromJson, [String? key]) {
    return (data) {
      final value = key != null
          ? data[key] as Map
          : data.values.whereType<Map>().single;
      return fromJson(value.cast<String, Object?>());
    };
  }
}

typedef ParserFn<T> = T Function(Map<String, dynamic> data);
