import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeHomeDailyDataRepository extends Fake
    implements HomeDailyDataRepository {
  final String verse;
  final String refreshedVerse;
  final String sneksar;
  final String saying;
  final String refreshedSaying;
  final List<String> birthdays;
  final AdvancedQuery? birthdaysQuery;
  final Future<List<String>> Function()? loadBirthdays;

  FakeHomeDailyDataRepository({
    this.verse = 'verse',
    this.refreshedVerse = 'refreshed verse',
    this.sneksar = 'sneksar',
    this.saying = 'saying',
    this.refreshedSaying = 'refreshed saying',
    this.birthdays = const [],
    this.loadBirthdays,
    AdvancedQuery? birthdaysQuery,
  }) : birthdaysQuery = birthdaysQuery ?? _defaultBirthdaysQuery();

  @override
  String getVerse({bool forceRefresh = false}) =>
      forceRefresh ? refreshedVerse : verse;

  @override
  String getSaying({bool forceRefresh = false}) =>
      forceRefresh ? refreshedSaying : saying;

  @override
  String getTodaysSneksar() => sneksar;

  @override
  Future<List<String>> getTodaysBirthdaysData() async {
    if (loadBirthdays case final load?) return load();

    return birthdays;
  }

  @override
  AdvancedQuery? getTodaysBirthdaysQuery() => birthdaysQuery;

  static AdvancedQuery _defaultBirthdaysQuery() => AdvancedQuery(
    queryableType: AdvancedQueriesMetadata().person,
    filters: [
      Filter(PersonFields().birthday, BirthdayOperator.equals, '01-01'),
    ],
  );
}
