import 'package:church_admin/church_admin.dart';
import 'package:dio/dio.dart';

export 'database/dao_base.dart';
export 'database/dao_bases.dart';
export 'database/db_graphql_client.dart';
export 'database/diff.dart';
export 'database/methods_templates.dart';
export 'database/string_to_uuid.dart';

class DatabaseService {
  static DatabaseService get I =>
      globalProviderContainer.read(databaseServiceProvider);

  final DBGraphQLClient graphQLClient;
  final AdvancedQueryParser advancedQueryParser;
  final LiveQueryRegistry? _liveQueries;
  final Dio _dio;

  late final LiveQueryRegistry liveQueries =
      _liveQueries ??
      LiveQueryRegistry.withoutChangeFeed(
        connectivity: graphQLClient.connectivityStream,
      );

  late final home = HomeDAO(db: this);

  late final areas = AreasDAO(db: this);
  late final streets = StreetsDAO(db: this);
  late final families = FamiliesDAO(db: this);
  late final stores = StoresDAO(db: this);

  late final persons = PersonsDAO(db: this);

  late final services = ServicesDAO(db: this);
  late final classes = ClassesDAO(db: this);
  late final groups = GroupsDAO(db: this);

  late final users = UsersDAO(db: this);
  late final userPermissions = UserPermissionsDAO(db: this);
  late final invitations = InvitationsDAO(db: this);
  late final userPreferences = UserPreferencesDAO(db: this);
  late final dataChecks = DataChecksDAO(db: this);
  late final fcmTokens = FcmTokensDAO(db: this);
  late final accounts = AccountsDAO(db: this);

  late final metadata = MetadataDAO(db: this);

  late final history = HistoryDAO(db: this);

  late final meetings = MeetingsDAO(db: this);

  late final photos = PhotosDAO(db: this, dio: _dio);
  late final exports = ExportsDAO(db: this);
  late final releases = ReleasesDAO(db: this);

  late final Map<Type, DAOBase> daosByType = {
    Area: areas,
    Street: streets,
    Family: families,
    Store: stores,
    Service: services,
    Class: classes,
    Group: groups,
    User: users,
    Person: persons,
    Meeting: meetings,
    Church: metadata.churches,
    College: metadata.colleges,
    District: metadata.districts,
    Father: metadata.fathers,
    Hobby: metadata.hobbies,
    Job: metadata.jobs,
    PersonState: metadata.personStates,
    PersonType: metadata.personTypes,
    Qualification: metadata.qualifications,
    School: metadata.schools,
    ShammasLevel: metadata.shammasLevels,
    StudyYear: metadata.studyYears,
    Tag: metadata.tags,
  };

  DatabaseService(
    this.graphQLClient, {
    this.advancedQueryParser = const AdvancedQueryParser(),
    this._liveQueries,
    Dio? dio,
  }) : _dio = dio ?? Dio();
}
