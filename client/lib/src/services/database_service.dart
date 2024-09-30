import 'package:church_admin/church_admin.dart';


export '../../graphql/__generated__/schema.graphql.dart';
export 'database/dao_base.dart';
export 'database/dao_bases.dart';
export 'database/db_gql_client.dart';
export 'database/db_vars_transformer.dart';
export 'database/methods_templates.dart';
export 'database/utils.dart';

class DatabaseService {
  static DatabaseService get I =>
      globalProviderContainer.read(databaseServiceProvider);

  DatabaseService(
    this.graphQLClient, {
    this.parser = const GQLParser(),
    this.varsTransformer = const DBVarsTransformer(),
    this.advancedQueryParser = const AdvancedQueryParser(),
  });

  final DBGraphQLClient graphQLClient;
  final GQLParser parser;
  final DBVarsTransformer varsTransformer;
  final AdvancedQueryParser advancedQueryParser;

  late final areas = AreasDAO(db: this);
  late final streets = StreetsDAO(db: this);
  late final families = FamiliesDAO(db: this);
  late final stores = StoresDAO(db: this);

  late final persons = PersonsDAO(db: this);

  late final services = ServicesDAO(db: this);
  late final classes = ClassesDAO(db: this);
  late final groups = GroupsDAO(db: this);

  late final users = UsersDAO(db: this);

  late final metadata = MetadataDAO(db: this);

  late final history = HistoryDAO(db: this);

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
    Church: metadata.churches,
    College: metadata.colleges,
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
}
