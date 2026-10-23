import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

sealed class HomeAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'home';

  const HomeAnalyticsEvent();
}

final class HomeTabSelect extends HomeAnalyticsEvent {
  final HomeTab tab;
  final HomeTabSelectMethod method;

  @override
  String get objectAction => 'tab_select';

  @override
  Json get properties => {'tab': tab.name, 'method': method.name};

  const HomeTabSelect(this.tab, {required this.method});
}

final class HomeModeSwitch extends HomeAnalyticsEvent {
  final HomeMode from;
  final HomeMode to;
  final HomeModeSwitchEntry entry;

  @override
  String get objectAction => 'mode_switch';

  @override
  Json get properties => {
    'from_mode': from.name,
    'to_mode': to.name,
    'entry': entry.name,
  };

  const HomeModeSwitch({
    required this.from,
    required this.to,
    required this.entry,
  });
}

final class HomeListTypeToggle extends HomeAnalyticsEvent {
  final HomeTab tab;
  final ViewableObjectListType listType;

  @override
  String get objectAction => 'list_type_toggle';

  @override
  Json get properties => {'tab': tab.name, 'list_type': listType.name};

  const HomeListTypeToggle(this.tab, this.listType);
}

final class HomeSearchRun extends HomeAnalyticsEvent {
  final int queryLength;
  final HomeSearchOutcome outcome;
  final List<HomeSearchSection> sections;

  @override
  String get objectAction => 'search_run';

  @override
  Json get properties => {
    'query_length': queryLength,
    'outcome': outcome.name,
    'section_count': sections.length,
    'result_count': sections.map((section) => section.items.length).sum,
  };

  const HomeSearchRun({
    required this.queryLength,
    required this.outcome,
    this.sections = const [],
  });
}

final class HomeCreateTap extends HomeAnalyticsEvent {
  final HomeTab tab;

  @override
  String get objectAction => 'create_tap';

  @override
  Json get properties => {'tab': tab.name};

  const HomeCreateTap(this.tab);
}

final class BirthdaysCardTap extends HomeAnalyticsEvent {
  final int birthdayCount;

  @override
  String get objectAction => 'birthdays_card_tap';

  @override
  Json get properties => {'birthday_count': birthdayCount};

  const BirthdaysCardTap(this.birthdayCount);
}

final class DailyTextOpen extends HomeAnalyticsEvent {
  final HomeDailyDataType type;

  @override
  String get objectAction => 'daily_text_open';

  @override
  Json get properties => {'type': type.name};

  const DailyTextOpen(this.type);
}

final class DailyTextShare extends HomeAnalyticsEvent {
  final HomeDailyDataType type;

  @override
  String get objectAction => 'daily_text_share';

  @override
  Json get properties => {'type': type.name};

  const DailyTextShare(this.type);
}

final class DailyTextRefresh extends HomeAnalyticsEvent {
  final HomeDailyDataType type;

  @override
  String get objectAction => 'daily_text_refresh';

  @override
  Json get properties => {'type': type.name};

  const DailyTextRefresh(this.type);
}

final class DrawerDestinationOpen extends HomeAnalyticsEvent {
  final HomeDrawerDestination destination;

  @override
  String get objectAction => 'drawer_destination_open';

  @override
  Json get properties => {'destination': destination.name};

  const DrawerDestinationOpen(this.destination);
}

enum HomeTabSelectMethod { tap, swipe }

enum HomeModeSwitchEntry { appBarChip, drawer, summaryCard }

enum HomeSearchOutcome { found, nothingFound, failed }

enum HomeDrawerDestination {
  manageUsers,
  advancedSearch,
  myAccount,
  exportData,
  visitsMap,
  settings,
  about,
  signOut,
}
