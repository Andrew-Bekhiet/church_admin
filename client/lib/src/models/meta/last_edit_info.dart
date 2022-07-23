// ignore_for_file: invalid_annotation_target, always_put_required_named_parameters_first

import 'package:churchdata_core/churchdata_core.dart' show Json, ViewableWithID;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_edit_info.freezed.dart';
part 'last_edit_info.g.dart';

@freezed
class LastEditInfo with _$LastEditInfo {
  factory LastEditInfo({
    required DateTime time,
    @JsonKey(name: 'user_uid') required String userUID,
  }) = _LastEditInfo;

  factory LastEditInfo.fromJson(Map<String, Object?> json) =>
      _$LastEditInfoFromJson(json);
}

LastEditInfo? lastEditFromJson(dynamic data) =>
    data == null ? null : LastEditInfo.fromJson(data);
Json? lastEditToJson(LastEditInfo? data) => data?.toJson();
