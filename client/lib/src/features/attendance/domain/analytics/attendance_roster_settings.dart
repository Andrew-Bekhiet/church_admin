import 'package:church_admin/church_admin.dart';
import 'package:clock/clock.dart';
import 'package:material_ui/material_ui.dart' show DateUtils;

class AttendanceRosterSettings {
  final bool isAsServant;
  final bool isToday;
  final AttendanceSortType sortType;
  final SortingDirection sortDirection;
  final AttendancePresenceFilter presenceFilter;
  final bool isSearchActive;
  final AttendanceGrouping grouping;

  Json get properties => {
    'is_as_servant': isAsServant,
    'is_today': isToday,
    'sort_type': sortType.name,
    'sort_direction': sortDirection.name,
    'presence_filter': presenceFilter.name,
    'is_search_active': isSearchActive,
    'grouping': grouping.name,
  };

  AttendanceRosterSettings.of(RecordAttendanceLoaded roster)
    : isAsServant = roster.audienceView.asServant,
      isToday = DateUtils.isSameDay(roster.selectedDate, clock.now()),
      sortType = AttendanceSortType.of(roster.sort),
      sortDirection = roster.sort.direction,
      presenceFilter = roster.presenceFilter,
      isSearchActive = roster.searchQuery?.isNotEmpty ?? false,
      grouping = roster.grouping;
}
