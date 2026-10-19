import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';

mixin CreatableDAO<T extends ViewableWithID> on DAOBase<T> {
  @protected
  CreateObjectConfig<T> get baseCreateObjectConfig;

  Future<T> createObject({required T newObject}) {
    final config = baseCreateObjectConfig;
    final document = transformDocument(config.document);

    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: document,
        operationName: config.effectiveOperationName,
        variables: config.varsConstructor(newObject: newObject),
        parserFn:
            config.parserFn ??
            AshResultParser(document).mutationResult(fromJson),
      ),
    );
  }
}
