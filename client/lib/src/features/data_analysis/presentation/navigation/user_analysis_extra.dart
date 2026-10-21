import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_analysis_extra.g.dart';

@JsonSerializable()
class UserAnalysisExtra extends SerializableExtra {
  final User user;

  @override
  String get typeName => 'UserAnalysisExtra';

  const UserAnalysisExtra({required this.user});

  factory UserAnalysisExtra.fromJson(Json json) =>
      _$UserAnalysisExtraFromJson(json);

  @override
  Json toJson() => _$UserAnalysisExtraToJson(this);
}
