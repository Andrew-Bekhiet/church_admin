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
    parentType: LastRecordedByInfo,
    name: 'time',
    label: 'الوقت',
    isCodeOnly: false,
    operators: {...DateTimeOperator.values, ...DateRangeOperator.values},
  );

  final FieldMetadata<User> user = FieldMetadata<User>(
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

  late final List<FieldMetadata<Object>> allFields = [time, user];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'time': time,
    'user': user
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LastRecordedByInfo _$LastRecordedByInfoFromJson(Map json) => LastRecordedByInfo(
      time: DateTime.parse(json['time'] as String),
      recordedBy: readRecordedBy(json, 'recordedBy') as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(Map<String, Object?>.from(json['user'] as Map)),
    );

Map<String, dynamic> _$LastRecordedByInfoToJson(LastRecordedByInfo instance) =>
    <String, dynamic>{
      'time': instance.time.toIso8601String(),
      'recordedBy': instance.recordedBy,
      'user': instance.user?.toJson(),
    };
