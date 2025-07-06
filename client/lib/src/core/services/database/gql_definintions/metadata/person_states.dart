import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/person_states/__generated__/subscriptions.gql.dart';

class PersonStatesDAO extends DAOBase<PersonState>
    with StreamableDAO<PersonState> {
  PersonStatesDAO({
    required super.db,
  }) : super(fromJson: PersonState.fromJson);

  @override
  StreamAllConfig<PersonState> get baseStreamAllConfig => const StreamAllConfig(
        document: documentNodeSubscriptionwatchAllPersonStates,
      );

  @override
  StreamSingleByIdConfig<PersonState> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();
}
