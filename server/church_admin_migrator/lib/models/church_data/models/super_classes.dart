import 'dart:ui';

import 'package:church_admin_migrator/models/id_reference.dart';

abstract class DataObject {
  IdReference ref;
  String name;
  Color? color;

  DataObject(this.ref, this.name, this.color);

  DataObject.createFromData(Map<String, dynamic> data, this.ref)
    : name = data['Name'] ?? '',
      color = Color(
        data['Color'] is String
            ? int.tryParse(data['Color'], radix: 16) ?? 0
            : 0,
      );

  @override
  int get hashCode =>
      Object.hashAll([id, _fullyHash(getMap().values.toList())]);

  String get id => ref.id;

  @override
  bool operator ==(other) {
    return other is DataObject && other.id == id && other.hashCode == hashCode;
  }

  Map<String, dynamic> getMap();

  int _fullyHash(dynamic e) {
    if (e is Map) {
      return Object.hash(
        _fullyHash(e.keys.toList()),
        _fullyHash(e.values.toList()),
      );
    } else if (e is IdReference) {
      return e.path.hashCode;
    } else if (e is List &&
        e.whereType<Map>().isEmpty &&
        e.whereType<IdReference>().isEmpty &&
        e.whereType<List>().isEmpty) {
      return Object.hashAll(e);
    } else if (e is List) {
      return Object.hashAll(e.map(_fullyHash));
    }

    return e?.hashCode ?? 0;
  }
}

abstract mixin class PhotoObject {
  dynamic defaultIcon;
  late bool hasPhoto;
}
