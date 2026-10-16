import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_family_extra.g.dart';

@JsonSerializable()
class EditFamilyExtra extends SerializableExtra {
  final Family? family;
  final Street? street;
  final Area? area;
  final Set<Family>? children;
  final Set<Family>? parents;

  @override
  String get typeName => 'EditFamilyExtra';

  const EditFamilyExtra({
    this.family,
    this.street,
    this.area,
    this.children,
    this.parents,
  });

  factory EditFamilyExtra.fromJson(Json json) =>
      _$EditFamilyExtraFromJson(json);

  @override
  Json toJson() => _$EditFamilyExtraToJson(this);
}
