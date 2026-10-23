import 'package:church_admin/church_admin.dart';

sealed class UpdateUserDataAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'update_user_data';

  const UpdateUserDataAnalyticsEvent();
}

final class SpiritDataSave extends UpdateUserDataAnalyticsEvent {
  final Person person;
  final DateTime savedAt;
  final bool isSuccess;

  @override
  String get objectAction => 'spirit_data_save';

  @override
  Json get properties => {
    'person_id': person.id,
    'days_since_communion': _daysSince(person.lastKodas),
    'days_since_confession': _daysSince(person.lastConfession),
    'is_success': isSuccess,
  };

  const SpiritDataSave(
    this.person, {
    required this.savedAt,
    required this.isSuccess,
  });

  int? _daysSince(LastRecordedByInfo? recorded) => switch (recorded?.time) {
    final time? => savedAt.difference(time).inDays,
    null => null,
  };
}
