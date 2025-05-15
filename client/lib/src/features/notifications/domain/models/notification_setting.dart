import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_setting.freezed.dart';
part 'notification_setting.g.dart';

@freezed
abstract class NotificationSetting with _$NotificationSetting {
  const factory NotificationSetting({
    required int hours,
    required int minutes,
    required int intervalInDays,
  }) = _NotificationSetting;

  factory NotificationSetting.fromJson(Map<String, dynamic> json) =>
      _$NotificationSettingFromJson(json);
}
