import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_street_extra.g.dart';

@JsonSerializable()
class EditStreetExtra extends SerializableExtra {
  final Street? street;
  final Area? area;

  @override
  String get typeName => 'EditStreetExtra';

  const EditStreetExtra({
    this.street,
    this.area,
  });

  factory EditStreetExtra.fromJson(Json json) =>
      _$EditStreetExtraFromJson(json);

  @override
  Json toJson() => _$EditStreetExtraToJson(this);
}
