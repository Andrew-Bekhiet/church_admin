import 'package:church_admin/church_admin.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';

mixin CreatableDAO<T extends ViewableWithID> on DAOBase<T> {
  @protected
  late final CreatableDAOProxy<T> createObjectProxy =
      CreatableDAOProxy<T>(db: db, fromJson: fromJson);

  @protected
  CreateObjectConfig<T> get baseCreateObjectConfig;

  Future<T> createObject({
    required T newObject,
  }) {
    return createObjectProxy.createObject(
      newObject: newObject,
      createObjectConfig: baseCreateObjectConfig,
    );
  }
}

class CreatableDAOProxy<T extends ViewableWithID> extends DAOBase<T> {
  CreatableDAOProxy({required super.db, required super.fromJson});

  @protected
  Future<T> createObject({
    required T newObject,
    required CreateObjectConfig<T> createObjectConfig,
  }) {
    return graphQLClient.mutateAndReturnParsed(
      createObjectConfig.operationOptions ??
          MutationOptions(
            document: createObjectConfig.document,
            operationName: createObjectConfig.effectiveOperationName,
            variables: createObjectConfig.variables ??
                createObjectConfig.varsConstructor
                    ?.call(newObject: newObject) ??
                {},
            parserFn:
                createObjectConfig.parserFn ?? db.parser.singleParser(fromJson),
          ),
    );
  }
}
