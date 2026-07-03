import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_recorded_by_info.freezed.dart';
part 'last_recorded_by_info.g.dart';

@freezed
@JsonSerializable()
@Queryable(
  classLabel: 'بيانات آخر تسجيل',
  allowExtension: true,
  ignoreFields: ['id', 'name', 'recordedBy'],
)
class LastRecordedByInfo extends ViewableWithID
    with _$LastRecordedByInfo
    implements SerializableExtra {
  @override
  @LocalDateTimeConverter()
  final DateTime time;

  @override
  @JsonKey(readValue: readRecordedBy)
  final String? recordedBy;

  @override
  final User? user;

  @override
  final bool isFatherVisit;

  LastRecordedByInfo({
    DateTime? time,
    this.recordedBy,
    this.user,
    this.isFatherVisit = false,
  }) : time = time ?? DateTime.now();

  factory LastRecordedByInfo.fromJson(Map<String, Object?> json) =>
      _$LastRecordedByInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LastRecordedByInfoToJson(this);

  @override
  String get id => time.toIso8601String();

  @override
  String get name => time.toString();

  @override
  String get typeName => AdvancedQueriesMetadata().lastRecordedByInfo.name;
}

String? readRecordedBy(Map json, String _) =>
    json['recordedBy'] ?? json['recorded_by'];

class LastRecordedByInfoFields extends _LastRecordedByInfoFields {
  static final LastRecordedByInfoFields _instance =
      LastRecordedByInfoFields._();

  factory LastRecordedByInfoFields() => _instance;

  LastRecordedByInfoFields._();

  @override
  FieldMetadata<bool> get isFatherVisit => FieldMetadata<bool>(
    getValue: (obj) => obj is LastRecordedByInfo ? obj.isFatherVisit : null,
    parentType: LastRecordedByInfo,
    name: 'isFatherVisit',
    label: 'زيارة أب كاهن',
    isOrderable: false,
    operators: {...BooleanOperator.values},
  );
}
