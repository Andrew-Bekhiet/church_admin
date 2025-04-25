import 'dart:developer' as dev;

import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class LoggingLink extends Link {

  final LoggingService loggingService;

  const LoggingLink(this.loggingService);

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    loggingService.fine(
      LogRecord(
        moduleName: 'Link',
        eventName: 'request',
        data: {
          'type': request.type.name,
          'operationName': request.operation.operationName,
          'variables': request.variables,
        },
      ),
    );
    if(kDebugMode){
      dev.log(request.toString());
    }

    return forward!(request);
  }
}
