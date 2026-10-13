import 'package:church_admin/church_admin.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';

mixin CreatableDAO<T extends ViewableWithID> on DAOBase<T> {
  @protected
  CreateObjectConfig<T> get baseCreateObjectConfig;

  Future<T> createObject({
    required T newObject,
  }) {
    final createObjectConfig = baseCreateObjectConfig;

    return graphQLClient.mutateAndReturnParsed(
      createObjectConfig.operationOptions ??
          MutationOptions(
            document: transformDocument(createObjectConfig.document),
            operationName: createObjectConfig.effectiveOperationName,
            variables:
                createObjectConfig.variables ??
                createObjectConfig.varsConstructor?.call(
                  newObject: newObject,
                ) ??
                {},
            parserFn:
                createObjectConfig.parserFn ?? db.parser.singleParser(fromJson),
          ),
    );
  }
}
