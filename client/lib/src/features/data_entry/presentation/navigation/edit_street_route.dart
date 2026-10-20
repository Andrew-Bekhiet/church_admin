import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_ui/material_ui.dart';

part 'edit_street_route.g.dart';

class EditStreetRoute extends HomeChildRoute {
  final EditStreetExtra? $extra;

  @override
  String get path => '/edit_street';

  @override
  List<Object?> get props => [$extra];

  const EditStreetRoute({this.$extra});

  @override
  Widget build(BuildContext context) {
    return EditStreet(street: $extra?.street, withArea: $extra?.area);
  }
}

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
