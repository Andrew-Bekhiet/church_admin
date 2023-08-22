// ignore_for_file: invalid_annotation_target, always_put_required_named_parameters_first

import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shammas_level.freezed.dart';
part 'shammas_level.g.dart';

@freezed
class ShammasLevel extends ViewableWithID
    with _$ShammasLevel
    implements ToJson {
  static final fields = _$$_ShammasLevelFieldMap.keys.toList();

  @JsonSerializable(createFieldMap: true)
  factory ShammasLevel({
    required int order,
    required String name,
    required String id,
  }) = _ShammasLevel;
  ShammasLevel._() : super();

  factory ShammasLevel.fromJson(Map<String, Object?> json) =>
      _$ShammasLevelFromJson(json);
}
