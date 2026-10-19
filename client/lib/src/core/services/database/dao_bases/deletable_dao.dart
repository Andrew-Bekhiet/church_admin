import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';

mixin DeletableDAO<T extends ViewableWithID> on DAOBase<T> {
  @protected
  DeleteSingleByIdConfig<T> get baseDeleteSingleByIdConfig;

  Future<T?> deleteById({required String id}) {
    final config = baseDeleteSingleByIdConfig;
    final document = transformDocument(config.document);

    return graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: document,
        operationName: config.effectiveOperationName,
        variables: config.variablesFor(id),
        parserFn:
            config.parserFn ??
            AshResultParser(document).mutationResultOrNull(fromJson),
      ),
    );
  }
}
