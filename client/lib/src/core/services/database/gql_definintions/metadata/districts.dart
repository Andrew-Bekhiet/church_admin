import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/districts/__generated__/subscriptions.gql.dart';

class DistrictsDAO extends DAOBase<District> with StreamableDAO<District> {
  DistrictsDAO({required super.db}) : super(fromJson: District.fromJson);

  @override
  StreamAllConfig<District> get baseStreamAllConfig => const StreamAllConfig(
        document: documentNodeSubscriptionwatchAllDistricts,
      );

  @override
  StreamSingleByIdConfig<District> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();
}
