import 'package:church_admin/church_admin.dart';
import 'package:get_it/get_it.dart';

import 'database/gql_definintions.dart';
import 'database/gql_parser.dart';

export 'database/db_gql_client.dart';
export 'database/utils.dart';

class DatabaseService {
  static DatabaseService get instance => GetIt.I<DatabaseService>();
  static DatabaseService get I => instance;

  DatabaseService(
    this.graphQLClient, {
    this.parser = const GQLParser(),
  });

  final DBGraphQLClient graphQLClient;
  final GQLParser parser;

  late final areas = AreasDAO(db: this);
  late final streets = StreetsDAO(db: this);
  late final families = FamiliesDAO(db: this);

  late final persons = PersonsDAO(db: this);

  late final services = ServicesDAO(db: this);
  late final classes = ClassesDAO(db: this);
  late final groups = GroupsDAO(db: this);

  late final users = UsersDAO(db: this);

  late final metadata = MetadataDAO(db: this);

  late final history = HistoryDAO(db: this);
}
