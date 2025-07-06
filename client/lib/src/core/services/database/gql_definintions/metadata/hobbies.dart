import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/hobbies/__generated__/subscriptions.gql.dart';

class HobbiesDAO extends DAOBase<Hobby> with StreamableDAO<Hobby> {
  HobbiesDAO({
    required super.db,
  }) : super(fromJson: Hobby.fromJson);

  @override
  StreamAllConfig<Hobby> get baseStreamAllConfig => const StreamAllConfig(
        document: documentNodeSubscriptionwatchAllHobbies,
      );

  @override
  StreamSingleByIdConfig<Hobby> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();
}
