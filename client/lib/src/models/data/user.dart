// ignore_for_file: invalid_annotation_target

import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User extends ViewableWithIDAndImage with _$User implements ToJson {
  factory User({
    required String uid,
    required String name,
    String? email,
    DateTime? photoUpdatedAt,
    List<AdminOnData>? adminOn,
    @JsonKey(
      fromJson: permissionsSetFromJson,
      toJson: permissionsSetToJson,
    )
    @Default(PermissionsSet.empty())
    PermissionsSet permissions,
    String? authId,
    @JsonKey(includeIfNull: false) String? password,
    @JsonKey(includeIfNull: false) String? idToken,
    LastRecordedByInfo? lastEdit,
    Person? person,
    List<AdminOnData>? servicesHistory,
    List<AdminOnData>? classesHistory,
    List<AdminOnData>? groupsHistory,
  }) = _User;
  User._() : super();

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('users', id, lastUpdatedTime: photoUpdatedAt);

  @override
  String get id => uid;
}
