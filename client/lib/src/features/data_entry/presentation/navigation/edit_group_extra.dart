import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_group_extra.g.dart';

@JsonSerializable()
class EditGroupExtra extends SerializableExtra {
  final Group? group;
  final Service? service;

  @override
  String get typeName => 'EditGroupExtra';

  const EditGroupExtra({this.group, this.service});

  factory EditGroupExtra.fromJson(Json json) => _$EditGroupExtraFromJson(json);

  @override
  Json toJson() => _$EditGroupExtraToJson(this);
}
