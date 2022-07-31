// ignore_for_file: invalid_annotation_target

import 'package:churchdata_core/churchdata_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'father.freezed.dart';
part 'father.g.dart';

@freezed
class Father extends ID with _$Father {
  const factory Father({
    required String id,
    required String name,
    String? churchId,
  }) = _Father;

  factory Father.fromJson(Map<String, Object?> json) => _$FatherFromJson(json);
}
