import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/person_states/__generated__/subscriptions.gql.dart';

class PersonStatesDAO extends DAOBase<PersonState>
    with LegacyStreamableDAO<PersonState> {
  @override
  LegacyStreamAllConfig<PersonState> get baseStreamAllConfig =>
      const LegacyStreamAllConfig(
        document: documentNodeSubscriptionwatchAllPersonStates,
      );

  @override
  LegacyStreamSingleByIdConfig<PersonState> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  PersonStatesDAO({
    required super.db,
  }) : super(fromJson: PersonState.fromJson);
}
