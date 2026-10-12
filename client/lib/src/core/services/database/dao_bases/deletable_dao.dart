import 'package:church_admin/church_admin.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';

mixin DeletableDAO<T extends ViewableWithID> on DAOBase<T> {
  @protected
  DeleteSingleByIdConfig<T> get baseDeleteSingleByIdConfig;

  Future<T?> deleteById({required String id}) {
    final deleteSingleByIdConfig = baseDeleteSingleByIdConfig;

    return graphQLClient.mutateAndReturnParsedNullable(
      deleteSingleByIdConfig.operationOptions ??
          MutationOptions(
            document: transformDocument(deleteSingleByIdConfig.document),
            operationName: deleteSingleByIdConfig.effectiveOperationName,
            variables:
                deleteSingleByIdConfig.variables ??
                deleteSingleByIdConfig.varsConstructor?.call(id: id.toUuid()) ??
                {},
            parserFn:
                deleteSingleByIdConfig.parserFn ??
                db.parser.singleOrNullParser(fromJson),
          ),
    );
  }
}
