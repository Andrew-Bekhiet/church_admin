import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data_check_detail.g.dart';

@JsonSerializable()
class DataCheckDetail with Equatable {
  @JsonKey(unknownEnumValue: DataCheckGroup.other)
  final DataCheckGroup group;

  @JsonKey(unknownEnumValue: DataCheckRule.unknown)
  final DataCheckRule check;

  final bool passed;

  @override
  List<Object?> get props => [group, check, passed];

  const DataCheckDetail({
    required this.group,
    required this.check,
    required this.passed,
  });

  factory DataCheckDetail.fromJson(Map<String, Object?> json) =>
      _$DataCheckDetailFromJson(json);

  Map<String, dynamic> toJson() => _$DataCheckDetailToJson(this);
}
