import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/person_types/__generated__/subscriptions.gql.dart';

class PersonTypesDAO extends DAOBase<PersonType>
    with StreamableDAO<PersonType> {
  PersonTypesDAO({
    required super.db,
  }) : super(fromJson: PersonType.fromJson);

  @override
  StreamAllConfig<PersonType> get baseStreamAllConfig => const StreamAllConfig(
        document: documentNodeSubscriptionwatchAllPersonTypes,
      );

  @override
  StreamSingleByIdConfig<PersonType> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();
}
