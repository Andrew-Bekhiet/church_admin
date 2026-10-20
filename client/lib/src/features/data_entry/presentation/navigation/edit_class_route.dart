import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_ui/material_ui.dart';

part 'edit_class_route.g.dart';

class EditClassRoute extends HomeChildRoute {
  final EditClassExtra? $extra;

  @override
  String get path => '/edit_class';

  @override
  List<Object?> get props => [$extra];

  const EditClassRoute({this.$extra});

  @override
  Widget build(BuildContext context) {
    return EditClass(
      class$: $extra?.$class,
      withService: $extra?.service,
    );
  }
}

@JsonSerializable()
class EditClassExtra extends SerializableExtra {
  final Class? $class;
  final Service? service;

  @override
  String get typeName => 'EditClassExtra';

  const EditClassExtra({this.$class, this.service});

  factory EditClassExtra.fromJson(Json json) => _$EditClassExtraFromJson(json);

  @override
  Json toJson() => _$EditClassExtraToJson(this);
}
