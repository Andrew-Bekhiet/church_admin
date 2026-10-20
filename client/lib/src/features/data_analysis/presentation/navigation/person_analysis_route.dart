import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_ui/material_ui.dart';

part 'person_analysis_route.g.dart';

class PersonAnalysisRoute extends HomeChildRoute {
  final PersonAnalysisExtra $extra;

  @override
  String get path => '/person_analysis';

  @override
  List<Object?> get props => [$extra];

  const PersonAnalysisRoute({required this.$extra});

  @override
  Widget build(BuildContext context) {
    return PersonAnalysisScreen(person: $extra.person);
  }
}

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
