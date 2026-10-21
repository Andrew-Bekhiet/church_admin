import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_store_extra.g.dart';

@JsonSerializable()
class EditStoreExtra extends SerializableExtra {
  final Area? area;
  final Street? street;
  final Store? store;
  final Family? family;

  @override
  String get typeName => 'EditStoreExtra';

  const EditStoreExtra({this.area, this.street, this.store, this.family});

  factory EditStoreExtra.fromJson(Json json) => _$EditStoreExtraFromJson(json);

  @override
  Json toJson() => _$EditStoreExtraToJson(this);
}
