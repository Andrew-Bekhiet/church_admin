import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_preferences.freezed.dart';
part 'user_preferences.g.dart';

@freezed
@JsonSerializable()
class UserPreferences with _$UserPreferences implements ToJson {
  @JsonKey(defaultValue: '')
  final String uid;

  @JsonKey(defaultValue: <String, dynamic>{})
  final Json orderByPreferences;

  @JsonKey(defaultValue: <String, dynamic>{})
  final Json secondLinePreferences;

  @JsonKey(name: 'darkTheme')
  @StoredDarkThemeConverter()
  final ThemeChoice themeChoice;

  @JsonKey(defaultValue: true)
  final bool greatFeastTheme;

  final HomeMode? lastHomeMode;

  @LocalDateTimeConverter()
  final DateTime? updatedAt;

  const UserPreferences({
    required this.uid,
    this.orderByPreferences = const {},
    this.secondLinePreferences = const {},
    this.themeChoice = ThemeChoice.system,
    this.greatFeastTheme = true,
    this.lastHomeMode,
    this.updatedAt,
  });

  factory UserPreferences.fromJson(Map<String, Object?> json) =>
      _$UserPreferencesFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserPreferencesToJson(this);
}
