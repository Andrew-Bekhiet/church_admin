import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

/// The rows a keyset list window shows, by id and in order, as the JSON the
/// server sent. Pushes edit this store and [pageData] rebuilds the page the
/// query's parser reads.
class LiveListWindow {
  static const _equality = DeepCollectionEquality();

  final String rootField;

  Map<String, Json> _rowsById = {};
  List<Json> _rows = [];
  bool _isKeyed = true;

  int? count;
  String? endKeyset;

  bool get isKeyed => _isKeyed;

  Json get pageData => {
    rootField: {
      'results': _isKeyed ? _rowsById.values.toList() : _rows,
      'count': count,
      'endKeyset': endKeyset,
    },
  };

  LiveListWindow({required this.rootField});

  void replaceWith(Iterable<Json> chunksData) {
    _rowsById = {};
    _rows = [];
    _isKeyed = true;
    append(chunksData);
  }

  void append(Iterable<Json> chunksData) {
    for (final chunkData in chunksData) {
      final page = chunkData[rootField] as Map;
      for (final row in page['results'] as List? ?? const []) {
        final json = (row as Map).cast<String, dynamic>();
        _rows.add(json);
        if (json['id'] case final String id) {
          _rowsById[id] = json;
        } else {
          _isKeyed = false;
        }
      }
      count = page['count'] as int?;
      endKeyset = page['endKeyset'] as String?;
    }
  }

  LiveWindowUpdate applyFull(Json data) {
    final before = pageData;
    replaceWith([data]);

    return _updateSince(before);
  }

  LiveWindowUpdate applyDelta(ListDeltaLiveResult delta) {
    if (!_isKeyed) return LiveWindowUpdate.missingRow;

    final before = pageData;
    final received = {
      for (final row in delta.rows)
        if (row['id'] case final String id) id: row,
    };
    final ids = delta.order ?? _rowsById.keys.toList();
    final next = <String, Json>{};
    for (final id in ids) {
      final row = received[id] ?? _rowsById[id];
      if (row == null) return LiveWindowUpdate.missingRow;

      next[id] = row;
    }
    if (delta.order == null &&
        received.keys.any((id) => !next.containsKey(id))) {
      return LiveWindowUpdate.missingRow;
    }

    _rowsById = next;
    count = delta.count ?? count;
    endKeyset = delta.endKeyset ?? endKeyset;

    return _updateSince(before);
  }

  LiveWindowUpdate _updateSince(Json before) =>
      _equality.equals(before, pageData)
      ? LiveWindowUpdate.unchanged
      : LiveWindowUpdate.changed;
}
