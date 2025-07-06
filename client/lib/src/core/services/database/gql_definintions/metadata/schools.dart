import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/schools/__generated__/subscriptions.gql.dart';

class SchoolsDAO extends DAOBase<School> with StreamableDAO<School> {
  SchoolsDAO({
    required super.db,
  }) : super(fromJson: School.fromJson);

  @override
  StreamAllConfig<School> get baseStreamAllConfig => const StreamAllConfig(
        document: documentNodeSubscriptionwatchAllSchools,
      );

  @override
  StreamSingleByIdConfig<School> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();
}
