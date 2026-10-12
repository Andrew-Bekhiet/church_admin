import 'package:church_admin/church_admin.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';

mixin UpdatableDAO<T extends ViewableWithID> on DAOBase<T> {
  @protected
  UpdateObjectConfig<T> get baseUpdateObjectConfig;

  Future<T?> updateObject({
    required T newObject,
    required T oldObject,
  }) {
    if (newObject == oldObject) return Future.value(newObject);
    // if (delta.isEmpty) return Future.value(newObject);

    final updateObjectConfig = baseUpdateObjectConfig;

    return graphQLClient.mutateAndReturnParsedNullable(
      updateObjectConfig.operationOptions ??
          MutationOptions(
            document: transformDocument(updateObjectConfig.document),
            operationName: updateObjectConfig.effectiveOperationName,
            variables:
                updateObjectConfig.variables ??
                updateObjectConfig.varsConstructor?.call(
                  newObject: newObject,
                  oldObject: oldObject,
                ) ??
                {},
            parserFn:
                updateObjectConfig.parserFn ??
                db.parser.singleOrNullParser(fromJson),
          ),
    );
  }
}
