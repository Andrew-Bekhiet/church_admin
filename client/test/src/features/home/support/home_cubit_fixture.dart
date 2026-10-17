import 'package:church_admin/church_admin.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fakes/mock_auth_bloc.dart';
import 'fake_home_daily_data_repository.dart';
import 'home_database_fixture.dart';
import 'in_memory_user_preferences_service.dart';
import 'recording_user_persistence_service.dart';

class _MockLocalAuthService extends Mock implements LocalAuthService {}

class HomeCubitFixture {
  final InMemoryUserPreferencesService preferences;
  final FakeHomeDailyDataRepository dailyData;
  final HomeDatabaseFixture database;
  final Stream<User?> userDataStream;

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
    authBloc: MockAuthBloc(),
    localAuthService: _MockLocalAuthService(),
    userPersistenceService: RecordingUserPersistenceService(),
  );
}
