import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_ui/material_ui.dart';

part 'user_analysis_route.g.dart';

class UserAnalysisRoute extends HomeChildRoute {
  final UserAnalysisExtra $extra;

  @override
  String get path => '/user_analysis';

  @override
  List<Object?> get props => [$extra];

  const UserAnalysisRoute({required this.$extra});

  @override
  Widget build(BuildContext context) {
    return UserAnalysisScreen(user: $extra.user);
  }
}

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
