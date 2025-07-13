import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/churches/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/churches/__generated__/subscriptions.gql.dart';

class ChurchesDAO extends DAOBase<Church>
    with StreamableDAO<Church>, CreatableDAO<Church> {
  ChurchesDAO({
    required super.db,
  }) : super(fromJson: Church.fromJson);

  @override
  StreamAllConfig<Church> get baseStreamAllConfig => const StreamAllConfig(
        document: documentNodeSubscriptionwatchAllChurches,
      );
  @override
  StreamSingleByIdConfig<Church> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  CreateObjectConfig<Church> get baseCreateObjectConfig => CreateObjectConfig(
        document: documentNodeMutationcreateChurch,
        varsConstructor: _createChurchVarsConstructor,
        parserFn: db.parser.singleParser(fromJson),
      );

  Json _createChurchVarsConstructor({required Church newObject}) => {
        'object': {'name': newObject.name},
      };
}
