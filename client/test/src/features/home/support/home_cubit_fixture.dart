import 'package:church_admin/church_admin.dart';

import 'fake_auth_repository.dart';
import 'fake_home_daily_data_repository.dart';
import 'fake_local_auth_service.dart';
import 'home_database_fixture.dart';
import 'in_memory_user_preferences_service.dart';
import 'recording_user_persistence_service.dart';

class HomeCubitFixture {
  final InMemoryUserPreferencesService preferences;
  final FakeHomeDailyDataRepository dailyData;
  final HomeDatabaseFixture database;
  final Stream<User?> userDataStream;
  final FakeAuthRepository authRepository = FakeAuthRepository();
  final FakeLocalAuthService localAuthService = FakeLocalAuthService();

  HomeCubitFixture({
    HomeMode? lastHomeMode = HomeMode.sundaySchool,
    FakeHomeDailyDataRepository? dailyData,
    HomeDatabaseFixture? database,
    Stream<User?>? userDataStream,
  }) : preferences = InMemoryUserPreferencesService(
         lastHomeMode: lastHomeMode,
       ),
       dailyData = dailyData ?? FakeHomeDailyDataRepository(),
       database = database ?? HomeDatabaseFixture(),
       userDataStream = userDataStream ?? Stream.value(null);

  HomeCubit buildCubit() => HomeCubit(
    userPreferencesService: preferences,
    homeDailyDataRepository: dailyData,
    databaseService: database.service,
    userDataStream: userDataStream,
    authRepository: authRepository,
    localAuthService: localAuthService,
    userPersistenceService: RecordingUserPersistenceService(),
  );
}
