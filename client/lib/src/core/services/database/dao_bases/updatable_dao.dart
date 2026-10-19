import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';

mixin UpdatableDAO<T extends ViewableWithID> on DAOBase<T> {
  @protected
  UpdateObjectConfig<T> get baseUpdateObjectConfig;

  /// The command takes the desired state; [oldObject] only short-circuits an
  /// update that changes nothing.
  Future<T?> updateObject({required T newObject, required T oldObject}) {
    if (newObject == oldObject) return Future.value(newObject);

    final config = baseUpdateObjectConfig;
    final document = transformDocument(config.document);

    return graphQLClient.mutateAndReturnParsedNullable(
      MutationOptions(
        document: document,
        operationName: config.effectiveOperationName,
        variables: config.varsConstructor(newObject: newObject),
        parserFn:
            config.parserFn ??
            AshResultParser(document).mutationResultOrNull(fromJson),
      ),
    );
  }
}
