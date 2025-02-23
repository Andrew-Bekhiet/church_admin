import 'package:church_admin/church_admin.dart';

import 'package:church_admin/src/core/services/database/gql_definintions/metadata/fathers/__generated__/subscriptions.gql.dart';

class FathersDAO extends DAOBase<Father>
    with StreamableDAO<Father, Input_FathersBoolExp, Input_FathersOrderBy> {
  FathersDAO({
    required super.db,
  }) : super(fromJson: Father.fromJson);

  @override
  StreamAllConfig<Father, Input_FathersBoolExp, Input_FathersOrderBy>
      get baseStreamAllConfig => const StreamAllConfig(
            document: documentNodeSubscriptionwatchAllFathers,
          );

  @override
  StreamSingleByIdConfig<Father> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();
}
