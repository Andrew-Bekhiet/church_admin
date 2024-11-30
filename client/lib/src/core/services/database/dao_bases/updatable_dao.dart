import 'package:church_admin/church_admin.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';

mixin UpdatableDAO<T extends ViewableWithID> on DAOBase<T> {
  @protected
  late final UpdatableDAOProxy<T> updateObjectProxy =
      UpdatableDAOProxy<T>(db: db, fromJson: fromJson);

  @protected
  UpdateObjectConfig<T> get baseUpdateObjectConfig;

  Future<T?> updateObject({
    required T newObject,
    required T oldObject,
  }) {
    return updateObjectProxy.updateObject(
      newObject: newObject,
      oldObject: oldObject,
      updateObjectConfig: baseUpdateObjectConfig,
    );
  }
}

class UpdatableDAOProxy<T extends ViewableWithID> extends DAOBase<T> {
  UpdatableDAOProxy({required super.db, required super.fromJson});

  Future<T?> updateObject({
    required T newObject,
    required T oldObject,
    required UpdateObjectConfig<T> updateObjectConfig,
  }) {
    if (newObject == oldObject) return Future.value(newObject);
    // if (delta.isEmpty) return Future.value(newObject);

    return graphQLClient.mutateAndReturnParsedNullable(
      updateObjectConfig.operationOptions ??
          MutationOptions(
            document: updateObjectConfig.document,
            operationName: updateObjectConfig.effectiveOperationName,
            variables: updateObjectConfig.variables ??
                updateObjectConfig.varsConstructor?.call(
                  newObject: newObject,
                  oldObject: oldObject,
                ) ??
                {},
            parserFn: updateObjectConfig.parserFn ??
                db.parser.singleOrNullParser(fromJson),
          ),
    );
  }
}
