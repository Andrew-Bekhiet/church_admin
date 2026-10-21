import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_analysis_extra.g.dart';

@JsonSerializable()
class PersonAnalysisExtra extends SerializableExtra {
  final Person person;

  @override
  String get typeName => 'PersonAnalysisExtra';

  const PersonAnalysisExtra({required this.person});

  factory PersonAnalysisExtra.fromJson(Json json) =>
      _$PersonAnalysisExtraFromJson(json);

  @override
  Json toJson() => _$PersonAnalysisExtraToJson(this);
}
