import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_check.freezed.dart';
part 'data_check.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'اكتمال البيانات')
class DataCheck extends ViewableWithID
    with _$DataCheck
    implements SerializableExtra {
  @override
  @JsonKey(defaultValue: false)
  @QueryableField(label: 'البيانات مكتملة')
  final bool isComplete;

  @override
  @JsonKey(defaultValue: false)
  @QueryableField(label: 'بيانات العائلة مكتملة')
  final bool familyCheck;

  @override
  @JsonKey(defaultValue: false)
  @QueryableField(label: 'العنوان مكتمل')
  final bool addressCheck;

  @override
  @QueryableField(label: 'تعديل يدوي', orderable: false)
  final bool? userOverride;

  @override
  final String familyId;

  @override
  @JsonKey(defaultValue: <DataCheckItem>[])
  final List<DataCheckItem> details;

  @override
  String get id => familyId;

  @override
  String get name => isComplete ? 'البيانات مكتملة' : 'البيانات غير مكتملة';

  @override
  String get typeName => AdvancedQueriesMetadata().dataCheck.name;

  bool get automaticVerdict => familyCheck && addressCheck;

  int get passedCount => details.where((item) => item.passed).length;

  int get totalCount => details.length;

  Map<DataCheckGroup, List<DataCheckItem>> get itemsByGroup =>
      details.groupListsBy((item) => item.group);

  DataCheck({
    required this.familyId,
    this.isComplete = false,
    this.familyCheck = false,
    this.addressCheck = false,
    this.details = const [],
    this.userOverride,
  });

  factory DataCheck.fromJson(Map<String, Object?> json) =>
      _$DataCheckFromJson(json);

  DataCheck withUserOverride(bool? userOverride) => DataCheck(
    familyId: familyId,
    isComplete: userOverride ?? automaticVerdict,
    familyCheck: familyCheck,
    addressCheck: addressCheck,
    userOverride: userOverride,
    details: details,
  );

  @override
  Map<String, dynamic> toJson() => _$DataCheckToJson(this);
}
