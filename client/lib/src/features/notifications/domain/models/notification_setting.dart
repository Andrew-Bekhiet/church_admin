import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_setting.freezed.dart';
part 'notification_setting.g.dart';

@freezed
@JsonSerializable()
class NotificationSetting with _$NotificationSetting {
  @override
  final int hours;
  @override
  final int minutes;
  @override
  final int intervalInDays;

  const NotificationSetting({
    required this.hours,
    required this.minutes,
    required this.intervalInDays,
  });

  factory NotificationSetting.fromJson(Map<String, dynamic> json) =>
      _$NotificationSettingFromJson(json);

  Json toJson() => _$NotificationSettingToJson(this);
}
