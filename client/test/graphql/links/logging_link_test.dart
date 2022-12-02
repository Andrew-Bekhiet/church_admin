import 'package:church_admin/graphql/links.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mockito/annotations.dart';

import './logging_link_test.mocks.dart';

@GenerateNiceMocks([MockSpec<Request>(), MockSpec<Response>()])
void main() {
  test(
    'Logging Link',
    () async {
      Object? loggedObject;

      void logFn(Object? object) => loggedObject = object;

      final unit = LoggingLink(log: logFn);
      addTearDown(unit.dispose);

      final mockResponse = MockResponse();
      final mockRequest = MockRequest();

      final stream = unit.request(
        mockRequest,
        (r) {
          expect(r, mockRequest);

          return Stream.value(mockResponse);
        },
      );

      await expectLater(stream, emits(mockResponse));
      expect(loggedObject, mockRequest);
    },
  );
}
