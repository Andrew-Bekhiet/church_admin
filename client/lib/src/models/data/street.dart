// ignore_for_file: invalid_annotation_target, always_put_required_named_parameters_first

import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'street.freezed.dart';
part 'street.g.dart';

@freezed
@TypeMetadata()
class Street extends ViewableWithIDAndImage
    with _$Street
    implements SerializableExtra {
  static Map<String, FieldMetadata> get fieldsMetadata => _$StreetFields;

  static final QueryableType<Street> queryableType = QueryableType<Street>(
    name: 'Street',
    label: 'الشوارع',
    fieldsMetadata: fieldsMetadata,
    fromJson: Street.fromJson,
  );

  factory Street({
    required String id,
    required String name,
    @JsonKey(fromJson: lineFromJson, toJson: lineToJson) Line? line,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
    DateTime? photoUpdatedAt,
    String? blurhash,
    List<Area>? areas,
    LastRecordedByInfo? lastVisit,
    LastRecordedByInfo? lastEdit,
  }) = _Street;
  Street._() : super();

  factory Street.fromJson(Map<String, Object?> json) => _$StreetFromJson(json);

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('streets', id, lastUpdatedTime: photoUpdatedAt);

  @override
  String get typeName => Street.queryableType.name;
}
