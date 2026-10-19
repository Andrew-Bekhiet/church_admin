import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/qualifications/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/qualifications/__generated__/subscriptions.gql.dart';

class QualificationsDAO extends DAOBase<Qualification>
    with LegacyStreamableDAO<Qualification>, LegacyCreatableDAO<Qualification> {
  @override
  LegacyStreamAllConfig<Qualification> get baseStreamAllConfig =>
      const LegacyStreamAllConfig(
        document: documentNodeSubscriptionwatchAllQualifications,
      );
  @override
  LegacyStreamSingleByIdConfig<Qualification> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  LegacyCreateObjectConfig<Qualification> get baseCreateObjectConfig =>
      LegacyCreateObjectConfig(
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
