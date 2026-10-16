import 'dart:math';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_check.freezed.dart';
part 'data_check.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'اكتمال البيانات', keyField: 'familyId')
class DataCheck with _$DataCheck implements ID, SerializableExtra {
  static const int _percentCap = 99;
  static const int _percentFull = 100;

  @JsonKey(defaultValue: 0)
  @QueryableField(label: 'نسبة اكتمال البيانات')
  final int completenessPercent;

  @JsonKey(defaultValue: false)
  @QueryableField(label: 'البيانات مكتملة')
  final bool isComplete;

  @JsonKey(defaultValue: false)
  @QueryableField(label: 'بيانات العائلة مكتملة')
  final bool familyCheck;

  @JsonKey(defaultValue: false)
  @QueryableField(label: 'العنوان مكتمل')
  final bool addressCheck;

  @QueryableField(label: 'تعديل يدوي', orderable: false)
  @JsonKey(
    defaultValue: DataCheckOverride.none,
    fromJson: DataCheckOverride.fromBoolean,
    toJson: _dataCheckOverrideToBoolean,
  )
  final DataCheckOverride userOverride;

  @QueryableField(label: 'العائلة', codeOnly: true)
  final String familyId;

  @JsonKey(name: 'details', defaultValue: <DataCheckDetail>[])
  final List<DataCheckDetail> checksDetails;

  @override
  String get id => familyId;

  @override
  String get typeName => AdvancedQueriesMetadata().dataCheck.name;

  String get completenessLabel =>
      isComplete ? 'البيانات مكتملة' : 'اكتمال البيانات: $completenessPercent٪';

  bool get automaticVerdict => familyCheck && addressCheck;

  int get passedChecksCount =>
      checksDetails.where((detail) => detail.passed).length;

  int get totalChecksCount => checksDetails.length;

  int get automaticPercent => switch (totalChecksCount) {
    0 when automaticVerdict => _percentFull,
    0 => 0,
    _ => passedChecksCount * _percentFull ~/ totalChecksCount,
  };

  Map<DataCheckGroup, List<DataCheckDetail>> get groupedChecks =>
      checksDetails.groupListsBy((detail) => detail.group);

  DataCheck({
    required this.familyId,
    this.completenessPercent = 0,
    this.isComplete = false,
    this.familyCheck = false,
    this.addressCheck = false,
    this.checksDetails = const [],
    this.userOverride = DataCheckOverride.none,
  });

  factory DataCheck.fromJson(Map<String, Object?> json) =>
      _$DataCheckFromJson(json);

  DataCheck withUserOverride(DataCheckOverride userOverride) => DataCheck(
    familyId: familyId,
    completenessPercent: switch (userOverride) {
      .markedComplete => _percentFull,
      .markedIncomplete => min(automaticPercent, _percentCap),
      .none => automaticPercent,
    },
    isComplete: switch (userOverride) {
      .markedComplete => true,
      .markedIncomplete => false,
      .none => automaticVerdict,
    },
    familyCheck: familyCheck,
    addressCheck: addressCheck,
    userOverride: userOverride,
    checksDetails: checksDetails,
  );

  @override
  Map<String, dynamic> toJson() => _$DataCheckToJson(this);
}

bool? _dataCheckOverrideToBoolean(DataCheckOverride override) =>
    override.asBoolean;
