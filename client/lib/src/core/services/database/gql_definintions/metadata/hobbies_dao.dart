import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/hobbies/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/hobbies/__generated__/subscriptions.gql.dart';

class HobbiesDAO extends DAOBase<Hobby>
    with StreamableDAO<Hobby>, CreatableDAO<Hobby> {
  @override
  StreamAllConfig<Hobby> get baseStreamAllConfig => const StreamAllConfig(
    document: documentNodeSubscriptionwatchAllHobbies,
  );
  @override
  StreamSingleByIdConfig<Hobby> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  CreateObjectConfig<Hobby> get baseCreateObjectConfig => CreateObjectConfig(
    document: documentNodeMutationcreateHobby,
    varsConstructor: _createHobbyVarsConstructor,
    parserFn: db.parser.singleParser(fromJson, 'insertHobbiesOne'),
  );

  HobbiesDAO({
    required super.db,
  }) : super(fromJson: Hobby.fromJson);

  Json _createHobbyVarsConstructor({required Hobby newObject}) => {
    'object': {'name': newObject.name},
  };
}
