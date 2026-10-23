import 'package:church_admin/church_admin.dart';

class AttendanceRosterSettings {
  final AttendanceRosterAudienceView audienceView;
  final AttendanceSorting sort;
  final AttendancePresenceFilter presenceFilter;
  final AttendanceGrouping grouping;
  final bool isSearchActive;
  final bool isToday;

  Json get properties => {
    'is_as_servant': audienceView.asServant,
    'is_today': isToday,
    'sort_type': AttendanceSortType.of(sort).name,
    'sort_direction': sort.direction.name,
    'filter': presenceFilter.name,
    'is_search_active': isSearchActive,
    'grouping': grouping.name,
  };

  const AttendanceRosterSettings({
    required this.audienceView,
    required this.sort,
    required this.presenceFilter,
    required this.grouping,
    required this.isSearchActive,
    required this.isToday,
  });
}
