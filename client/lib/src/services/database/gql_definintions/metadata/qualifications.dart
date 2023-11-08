import 'package:church_admin/church_admin.dart';

import 'qualifications/__generated__/subscriptions.gql.dart';

class QualificationsDAO extends DAOBase<Qualification>
    with
        StreamableDAO<Qualification, Input_QualificationsBoolExp,
            Input_QualificationsOrderBy> {
  QualificationsDAO({
    required super.db,
  }) : super(fromJson: Qualification.fromJson);

  @override
  StreamAllConfig<Qualification, Input_QualificationsBoolExp,
          Input_QualificationsOrderBy>
      get baseStreamAllConfig => const StreamAllConfig(
            document: documentNodeSubscriptionwatchAllQualifications,
          );

  @override
  StreamSingleByIdConfig<Qualification> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();
}
