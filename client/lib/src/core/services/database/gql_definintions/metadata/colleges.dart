import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/colleges/__generated__/subscriptions.gql.dart';

class CollegesDAO extends DAOBase<College> with StreamableDAO<College> {
  CollegesDAO({
    required super.db,
  }) : super(fromJson: College.fromJson);

  @override
  StreamAllConfig<College> get baseStreamAllConfig => const StreamAllConfig(
        document: documentNodeSubscriptionwatchAllColleges,
      );

  @override
  StreamSingleByIdConfig<College> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();
}
