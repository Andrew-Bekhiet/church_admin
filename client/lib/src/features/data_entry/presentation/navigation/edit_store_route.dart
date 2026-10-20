import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_ui/material_ui.dart';

part 'edit_store_route.g.dart';

class EditStoreRoute extends HomeChildRoute {
  final EditStoreExtra? $extra;

  @override
  String get path => '/edit_store';

  @override
  List<Object?> get props => [$extra];

  const EditStoreRoute({this.$extra});

  @override
  Widget build(BuildContext context) {
    return EditStore(store: $extra?.store, withFamily: $extra?.family);
  }
}

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
