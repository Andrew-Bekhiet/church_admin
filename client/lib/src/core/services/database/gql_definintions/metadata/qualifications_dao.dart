import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/qualifications/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/qualifications/__generated__/subscriptions.gql.dart';

class QualificationsDAO extends DAOBase<Qualification>
    with StreamableDAO<Qualification>, CreatableDAO<Qualification> {
  @override
  StreamAllConfig<Qualification> get baseStreamAllConfig =>
      const StreamAllConfig(
        document: documentNodeSubscriptionwatchAllQualifications,
      );
  @override
  StreamSingleByIdConfig<Qualification> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  CreateObjectConfig<Qualification> get baseCreateObjectConfig =>
      CreateObjectConfig(
        document: documentNodeMutationcreateQualification,
        varsConstructor: _createQualificationVarsConstructor,
        parserFn: db.parser.singleParser(fromJson),
      );

  QualificationsDAO({
    required super.db,
  }) : super(fromJson: Qualification.fromJson);

  Json _createQualificationVarsConstructor({
    required Qualification newObject,
  }) => {
    'object': {'name': newObject.name},
  };
}
