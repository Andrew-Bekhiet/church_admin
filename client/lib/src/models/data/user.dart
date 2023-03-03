// ignore_for_file: invalid_annotation_target

import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart' hide LoggingService;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User extends ViewableWithIDAndImage with _$User, UID {
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
    @Default(CAPermissionsSet.empty())
        CAPermissionsSet permissions,
    String? authId,
    @JsonKey(includeIfNull: false)
        String? password,
    @JsonKey(includeIfNull: false)
        String? idToken,
    LastRecordedByInfo? lastEdit,
    Person? person,
    List<AdminOnData>? servicesHistory,
    List<AdminOnData>? classesHistory,
    List<AdminOnData>? groupsHistory,
  }) = _User;
  User._() : super();

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);

  @override
  ObjectImageInfo? get imageInfo => photoUpdatedAt != null
      ? ObjectImageInfo(
          cacheKey: 'users/$id',
          downloadUrlFn: () async =>
              CAFunctionsService.I.getDownloadUrl('users', id),
          lastUpdatedTime: photoUpdatedAt!,
        )
      : null;

  @override
  String get id => uid;
}
