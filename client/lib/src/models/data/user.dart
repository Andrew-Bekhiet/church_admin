// ignore_for_file: invalid_annotation_target

import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User extends ViewableWithID with _$User, UID implements PhotoObjectBase {
  factory User({
    required String uid,
    required String name,
    DateTime? photoUpdatedAt,
    List<AdminOnData>? adminOn,
    UserData? userData,
    Person? person,
    List<AdminOnData>? servicesHistory,
    List<AdminOnData>? classesHistory,
    List<AdminOnData>? groupsHistory,
  }) = _User;
  User._() : super();

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);

  @override
  IconData get defaultIcon => Icons.account_circle;

  @override
  bool get hasPhoto => photoUpdatedAt != null;

  @override
  CAStorageReference? get photoRef => hasPhoto && uid.isNotEmpty
      ? CAStorageReference(
          photoUpdatedAt: photoUpdatedAt!,
          downloadUrl: () =>
              GetIt.I<CAFunctionsService>().getDownloadUrl('users', uid),
          fullPath: 'users/$uid.jpg',
        )
      : null;

  @override
  final AsyncMemoizerCache<String> photoUrlCache = AsyncMemoizerCache();

  @override
  String get id => uid;
}
