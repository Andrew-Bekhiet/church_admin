import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_class_extra.g.dart';

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
