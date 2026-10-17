import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

abstract final class HomeScreenSummaryKeys {
  static const Key churchDataButtonKey = Key('church_data_button');
  static const Key sundaySchoolButtonKey = Key('sunday_school_button');

  static const Key birthdaysButtonKey = Key('birthdays_button');
  static const Key verseButtonKey = Key('verse_button');
  static const Key sneksarButtonKey = Key('sneksar_button');
  static const Key sayingButtonKey = Key('saying_button');

  static Key modeKeyFor(HomeMode mode) => switch (mode) {
    HomeMode.churchData => churchDataButtonKey,
    HomeMode.sundaySchool => sundaySchoolButtonKey,
  };

  static Key dailyTextKeyFor(HomeDailyDataType type) => switch (type) {
    HomeDailyDataType.verse => verseButtonKey,
    HomeDailyDataType.sneksar => sneksarButtonKey,
    HomeDailyDataType.saying => sayingButtonKey,
  };
}
