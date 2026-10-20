import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_ui/material_ui.dart';

part 'edit_group_route.g.dart';

class EditGroupRoute extends HomeChildRoute {
  final EditGroupExtra? $extra;

  @override
  String get path => '/edit_group';

  @override
  List<Object?> get props => [$extra];

  const EditGroupRoute({this.$extra});

  @override
  Widget build(BuildContext context) {
    return EditGroup(
      group: $extra?.group,
      withService: $extra?.service,
    );
  }
}

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
