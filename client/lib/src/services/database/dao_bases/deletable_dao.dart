import 'package:church_admin/church_admin.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';

mixin DeletableDAO<T extends ViewableWithID> on DAOBase<T> {
  @protected
  late final DeletableDAOProxy<T> deleteSingleByIdProxy =
      DeletableDAOProxy<T>(db: db, fromJson: fromJson);

  @protected
  DeleteSingleByIdConfig<T> get baseDeleteSingleByIdConfig;

  Future<T?> deleteById({
    required String id,
  }) {
    return deleteSingleByIdProxy.deleteById(
      id: id,
      deleteSingleByIdConfig: baseDeleteSingleByIdConfig,
    );
  }
}

class DeletableDAOProxy<T extends ViewableWithID> extends DAOBase<T> {
  DeletableDAOProxy({required super.db, required super.fromJson});

  Future<T?> deleteById({
    required String id,
    required DeleteSingleByIdConfig<T> deleteSingleByIdConfig,
  }) {
    return graphQLClient.mutateAndReturnParsed(
      deleteSingleByIdConfig.operationOptions ??
          MutationOptions(
            document: deleteSingleByIdConfig.document,
            operationName: deleteSingleByIdConfig.effectiveOperationName,
            variables: deleteSingleByIdConfig.variables ??
                deleteSingleByIdConfig.varsConstructor?.call(id: id.toUuid()) ??
                {},
            parserFn: deleteSingleByIdConfig.parserFn ??
                db.parser.singleOrNullParser(fromJson),
          ),
    );
  }
}
