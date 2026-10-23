import 'package:church_admin/church_admin.dart';

sealed class UpdateUserDataAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'update_user_data';

  const UpdateUserDataAnalyticsEvent();
}

final class SpiritDataSave extends UpdateUserDataAnalyticsEvent {
  static SpiritDataRecency? recencyBetween(
    DateTime? recordedAt,
    DateTime savedAt,
  ) {
    if (recordedAt == null) return null;

    return switch (savedAt.difference(recordedAt).inDays) {
      <= 7 => SpiritDataRecency.withinWeek,
      <= 30 => SpiritDataRecency.withinMonth,
      <= 60 => SpiritDataRecency.withinTwoMonths,
      _ => SpiritDataRecency.older,
    };
  }

  final SpiritDataRecency? communionRecency;
  final SpiritDataRecency? confessionRecency;
  final bool isSuccess;

  @override
  String get objectAction => 'spirit_data_save';

  @override
  Json get properties => {
    'communion_recency': communionRecency?.key,
    'confession_recency': confessionRecency?.key,
    'is_success': isSuccess,
  };

  SpiritDataSave(
    Person person, {
    required DateTime savedAt,
    required this.isSuccess,
  }) : communionRecency = recencyBetween(person.lastKodas?.time, savedAt),
       confessionRecency = recencyBetween(person.lastConfession?.time, savedAt);
}

enum SpiritDataRecency {
  withinWeek('within_week'),
  withinMonth('within_month'),
  withinTwoMonths('within_two_months'),
  older('older');

  final String key;

  const SpiritDataRecency(this.key);
}
