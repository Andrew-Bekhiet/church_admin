// ignore_for_file: invalid_annotation_target

import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'father.freezed.dart';
part 'father.g.dart';

@freezed
class Father extends ViewableWithID with _$Father implements ToJson {
  factory Father({
    required String id,
    required String name,
    String? churchId,
  }) = _Father;
  Father._();

  factory Father.fromJson(Map<String, Object?> json) => _$FatherFromJson(json);
}
