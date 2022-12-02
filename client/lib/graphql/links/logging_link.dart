import 'dart:developer' as dev;

import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class LoggingLink extends Link {
  static void defaultLogFunction(Object? o) {
    dev.log(o.toString());
  }

  final bool isLogging;
  final void Function(Object?) log;

  const LoggingLink({
    this.isLogging = kDebugMode,
    this.log = defaultLogFunction,
  });

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    return forward!(request).map((t) {
      if (isLogging) {
        log(request);
      }

      return t;
    });
  }
}
