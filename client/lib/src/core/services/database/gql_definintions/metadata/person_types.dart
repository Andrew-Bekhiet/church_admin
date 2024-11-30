import 'package:church_admin/church_admin.dart';

import 'person_types/__generated__/subscriptions.gql.dart';

class PersonTypesDAO extends DAOBase<PersonType>
    with
        StreamableDAO<PersonType, Input_PersonTypesBoolExp,
            Input_PersonTypesOrderBy> {
  PersonTypesDAO({
    required super.db,
  }) : super(fromJson: PersonType.fromJson);

  @override
  StreamAllConfig<PersonType, Input_PersonTypesBoolExp,
          Input_PersonTypesOrderBy>
      get baseStreamAllConfig => const StreamAllConfig(
            document: documentNodeSubscriptionwatchAllPersonTypes,
          );

  @override
  StreamSingleByIdConfig<PersonType> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();
}
