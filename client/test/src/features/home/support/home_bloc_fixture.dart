import 'package:church_admin/church_admin.dart';

import 'fake_home_daily_data_repository.dart';
import 'fake_page_controller.dart';
import 'home_database_fixture.dart';
import 'in_memory_user_preferences_service.dart';

class HomeBlocFixture {
  final InMemoryUserPreferencesService preferences;
  final FakeHomeDailyDataRepository dailyData;
  final HomeDatabaseFixture database;

  HomeBlocFixture({
    HomeMode? lastHomeMode = HomeMode.sundaySchool,
    FakeHomeDailyDataRepository? dailyData,
    HomeDatabaseFixture? database,
  }) : preferences = InMemoryUserPreferencesService(
         lastHomeMode: lastHomeMode,
       ),
       dailyData = dailyData ?? FakeHomeDailyDataRepository(),
       database = database ?? HomeDatabaseFixture();

  HomeBloc buildBloc() => HomeBloc(
    userPreferencesService: preferences,
    pageController: FakePageController(),
    homeDailyDataRepository: dailyData,
    databaseService: database.service,
    userDataStream: Stream.value(null),
  );
}
