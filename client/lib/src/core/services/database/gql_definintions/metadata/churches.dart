import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/churches/__generated__/subscriptions.gql.dart';

class ChurchesDAO extends DAOBase<Church>
    with StreamableDAO<Church, Input_ChurchesBoolExp, Input_ChurchesOrderBy> {
  ChurchesDAO({
    required super.db,
  }) : super(fromJson: Church.fromJson);

  @override
  StreamAllConfig<Church, Input_ChurchesBoolExp, Input_ChurchesOrderBy>
      get baseStreamAllConfig => const StreamAllConfig(
            document: documentNodeSubscriptionwatchAllChurches,
          );

  @override
  StreamSingleByIdConfig<Church> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();
}
