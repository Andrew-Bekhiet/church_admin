import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import './logging_link_test.mocks.dart';

@GenerateNiceMocks(
  [MockSpec<Request>(), MockSpec<Response>(), MockSpec<LoggingService>()],
)
void main() {
  test(
    'Logging Link',
    () async {
      final loggingService = MockLoggingService();

      final unit = LoggingLink(loggingService);
      addTearDown(unit.dispose);

      final mockResponse = MockResponse();
      final mockRequest = MockRequest();

      when(mockRequest.operation).thenReturn(
        const Operation(
          operationName: 'testOperation',
          document: DocumentNode(
            definitions: [
              OperationDefinitionNode(
                type: OperationType.query,
                name: NameNode(value: 'testOperation'),
                selectionSet: SelectionSetNode(),
              ),
            ],
          ),
        ),
      );
      when(mockRequest.variables).thenReturn({'a': 'b'});

      final stream = unit.request(
        mockRequest,
        (r) {
          expect(r, mockRequest);

          return Stream.value(mockResponse);
        },
      );

      await expectLater(stream, emits(mockResponse));

      final verificationResult = verify(loggingService.fine(captureAny))
        ..called(1);
      expect(
        verificationResult.captured.first,
        isA<LogRecord>()
            .having(
              (r) => r.data,
              'data.type',
              containsPair('type', 'query'),
            )
            .having(
              (r) => r.data,
              'data.operationName',
              containsPair(
                'operationName',
                mockRequest.operation.operationName,
              ),
            )
            .having(
              (r) => r.data,
              'data.variables',
              containsPair('variables', mockRequest.variables),
            ),
      );
    },
  );
}
