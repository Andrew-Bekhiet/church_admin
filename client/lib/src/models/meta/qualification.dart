// ignore_for_file: invalid_annotation_target

import 'package:churchdata_core/churchdata_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'qualification.freezed.dart';
part 'qualification.g.dart';

@freezed
class Qualification extends ViewableWithID with _$Qualification {
  factory Qualification({
    required String id,
    required String name,
  }) = _Qualification;
  Qualification._();

  factory Qualification.fromJson(Map<String, Object?> json) =>
      _$QualificationFromJson(json);
}
