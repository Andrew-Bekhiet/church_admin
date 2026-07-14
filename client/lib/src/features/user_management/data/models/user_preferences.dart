import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_preferences.freezed.dart';
part 'user_preferences.g.dart';

@freezed
@JsonSerializable()
class UserPreferences with _$UserPreferences implements ToJson {
  @override
  @JsonKey(defaultValue: '')
  final String uid;

  @override
  @JsonKey(defaultValue: <String, dynamic>{})
  final Json orderByPreferences;

  @override
  final bool? darkTheme;

  @override
  @JsonKey(defaultValue: true)
  final bool greatFeastTheme;

  @override
  final HomeMode? lastHomeMode;

  @override
  @LocalDateTimeConverter()
  final DateTime? updatedAt;

  const UserPreferences({
    required this.uid,
    this.orderByPreferences = const {},
    this.darkTheme,
    this.greatFeastTheme = true,
    this.lastHomeMode,
    this.updatedAt,
  });

  factory UserPreferences.fromJson(Map<String, Object?> json) =>
      _$UserPreferencesFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserPreferencesToJson(this);
}
