import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/qualifications/__generated__/subscriptions.gql.dart';

class QualificationsDAO extends DAOBase<Qualification>
    with StreamableDAO<Qualification> {
  QualificationsDAO({
    required super.db,
  }) : super(fromJson: Qualification.fromJson);

  @override
  StreamAllConfig<Qualification> get baseStreamAllConfig =>
      const StreamAllConfig(
        document: documentNodeSubscriptionwatchAllQualifications,
      );

  @override
  StreamSingleByIdConfig<Qualification> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();
}
