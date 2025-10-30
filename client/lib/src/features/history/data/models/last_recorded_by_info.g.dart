// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_recorded_by_info.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class LastRecordedByInfoFields {
  static final LastRecordedByInfoFields _instance =
      LastRecordedByInfoFields._();
  factory LastRecordedByInfoFields() => _instance;
  LastRecordedByInfoFields._();

  final FieldMetadata<DateTime> time = FieldMetadata<DateTime>(
    getValue: (obj) => obj is LastRecordedByInfo ? obj.time : null,
    parentType: LastRecordedByInfo,
    name: 'time',
    label: 'الوقت',
    isCodeOnly: false,
    operators: {...DateTimeOperator.values, ...DateRangeOperator.values},
  );

  final FieldMetadata<User> user = FieldMetadata<User>(
    getValue: (obj) => obj is LastRecordedByInfo ? obj.user : null,
    parentType: LastRecordedByInfo,
    name: 'user',
    label: 'بيانات الخادم',
    isCodeOnly: false,
    operators: {
      ...MultiSelectOperator.values,
      PrimitiveOperator.isNull,
      PrimitiveOperator.isNotNull
    },
  );

  final FieldMetadata<bool> isFatherVisit = FieldMetadata<bool>(
    getValue: (obj) => obj is LastRecordedByInfo ? obj.isFatherVisit : null,
    parentType: LastRecordedByInfo,
    name: 'isFatherVisit',
    label: 'زيارة أب كاهن',
    isCodeOnly: false,
    operators: {...BooleanOperator.values},
  );

  late final List<FieldMetadata<Object>> allFields = [
    time,
    user,
    isFatherVisit
  ];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'time': time,
    'user': user,
    'isFatherVisit': isFatherVisit
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LastRecordedByInfo _$LastRecordedByInfoFromJson(Map json) => LastRecordedByInfo(
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      recordedBy: readRecordedBy(json, 'recordedBy') as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(Map<String, Object?>.from(json['user'] as Map)),
      isFatherVisit: json['isFatherVisit'] as bool? ?? false,
    );

Map<String, dynamic> _$LastRecordedByInfoToJson(LastRecordedByInfo instance) =>
    <String, dynamic>{
      'time': instance.time.toIso8601String(),
      'recordedBy': instance.recordedBy,
      'user': instance.user?.toJson(),
      'isFatherVisit': instance.isFatherVisit,
    };
