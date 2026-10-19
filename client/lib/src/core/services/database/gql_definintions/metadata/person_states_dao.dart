import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/person_states/__generated__/queries.graphql.dart';

class PersonStatesDAO extends DAOBase<PersonState>
    with KeysetStreamableDAO<PersonState> {
  @override
  StreamAllConfig<PersonState> get baseStreamAllConfig => const StreamAllConfig(
    document: documentNodeQuerypersonStates,
    arguments: ListQueryArguments.fromParameters,
  );

  @override
  StreamSingleByIdConfig<PersonState> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  PersonStatesDAO({
    required super.db,
  }) : super(fromJson: PersonState.fromJson);
}
