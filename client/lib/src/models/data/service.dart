// ignore_for_file: invalid_annotation_target, always_put_required_named_parameters_first

import 'dart:ui';

import 'package:church_admin/graphql/scalars.dart';
import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart' show ViewableWithID;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service.freezed.dart';
part 'service.g.dart';

@freezed
class Service extends ViewableWithID with _$Service {
  factory Service({
    required String id,
    required String name,
    @JsonKey(fromJson: studyYearFromJson, toJson: studyYearToJson)
        StudyYear? fromStudyYear,
    @JsonKey(fromJson: studyYearFromJson, toJson: studyYearToJson)
        StudyYear? toStudyYear,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
    @JsonKey(name: 'photo_updated_at') DateTime? photoUpdatedAt,
    @JsonKey(fromJson: groupsFromJson, toJson: groupsToJson) List<Group>? groups,
  }) = _Service;
  Service._() : super();

  factory Service.fromJson(Map<String, Object?> json) =>
      _$ServiceFromJson(json);
}
