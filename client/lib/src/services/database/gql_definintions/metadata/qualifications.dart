import 'package:church_admin/church_admin.dart';

import 'qualifications/__generated__/subscriptions.gql.dart';

class QualificationsDAO extends DAOBase<Qualification>
    with StreamableDAO<Qualification, Input_QualificationsBoolExp> {
  QualificationsDAO({
    required super.db,
  }) : super(fromJson: Qualification.fromJson);

  @override
  StreamAllConfig<Qualification, Input_QualificationsBoolExp>
      get baseStreamAllConfig => StreamAllConfig(
            document: documentNodeSubscriptionwatchAllQualifications,
            varsConstructor: ({required event, required where}) => graphQLClient
                .getDefaultSearchVars(
                  event,
                  Variables_Subscription_watchAllQualifications.new,
                  Input_QualificationsBoolExp.new,
                )
                .toJson(),
          );

  @override
  StreamSingleByIdConfig<Qualification> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();
}
