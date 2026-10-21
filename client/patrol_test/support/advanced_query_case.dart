import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

class AdvancedQueryCase {
  static const _firstResultsTimeout = Duration(seconds: 20);

  final String description;
  final AdvancedQuery query;
  final FieldMetadata field;

  const AdvancedQueryCase(this.description, this.query, this.field);

  /// Runs [query] the way the results screen does and returns why it failed,
  /// or null when the backend answered with results (an empty page counts).
  Future<String?> failureAgainstBackend() async {
    PaginatableStreamBase<ViewableWithID>? results;
    try {
      results = DatabaseService.I.advancedQueryParser.createPaginatableStream(
        query,
      );
      await results.first.timeout(_firstResultsTimeout);

      return null;
    } on OperationException catch (error) {
      final reasons = [
        ...error.graphqlErrors.map((graphqlError) => graphqlError.message),
        ?error.linkException?.toString(),
      ];

      return '$description: ${reasons.join('; ')}';
    } on Object catch (error) {
      return '$description: $error';
    } finally {
      await results?.dispose();
    }
  }
}
