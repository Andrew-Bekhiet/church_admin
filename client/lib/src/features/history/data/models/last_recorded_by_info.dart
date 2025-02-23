import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_recorded_by_info.freezed.dart';
part 'last_recorded_by_info.g.dart';

@freezed
@TypeMetadata(ignoreFields: ['recordedBy'])
class LastRecordedByInfo extends ViewableWithID
    with _$LastRecordedByInfo
    implements SerializableExtra {
  static Map<String, FieldMetadata> get fieldsMetadata =>
      _$LastRecordedByInfoFields;

  static final QueryableType<LastRecordedByInfo> queryableType =
      QueryableType<LastRecordedByInfo>(
    name: 'LastRecordedByInfo',
    label: 'بيانات آخر تسجيل',
    fieldsMetadata: fieldsMetadata,
    fromJson: LastRecordedByInfo.fromJson,
  );

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

  @override
  String get typeName => LastRecordedByInfo.queryableType.name;
}

String? readRecordedBy(Map json, String _) =>
    json['recordedBy'] ?? json['recorded_by'];
