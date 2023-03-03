// ignore_for_file: invalid_annotation_target, always_put_required_named_parameters_first

import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart' hide LoggingService;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_recorded_by_info.freezed.dart';
part 'last_recorded_by_info.g.dart';

@freezed
class LastRecordedByInfo extends ViewableWithID with _$LastRecordedByInfo {
  factory LastRecordedByInfo({
    required DateTime time,
    @JsonKey(readValue: readRecordedBy) String? recordedBy,
    User? user,
  }) = _LastRecordedByInfo;
  LastRecordedByInfo._() : super();

  factory LastRecordedByInfo.fromJson(Map<String, Object?> json) =>
      _$LastRecordedByInfoFromJson(json);

  @override
  String get name => time.toString();

  @override
  String get id => time.toIso8601String();
}

String? readRecordedBy(Map json, String _) =>
    json['recordedBy'] ?? json['recorded_by'];
