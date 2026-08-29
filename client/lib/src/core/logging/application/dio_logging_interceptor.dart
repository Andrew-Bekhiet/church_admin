import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:dio/dio.dart';

class DioLoggingInterceptor extends Interceptor {
  final LoggingService loggingService;

  DioLoggingInterceptor(this.loggingService);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    unawaited(
      loggingService.config(
        LogRecord(
          moduleName: 'Dio',
          eventName: 'request',
          data: {
            'method': options.method,
            'url': options.uri.toString(),
            'headers': options.headers,
            'data': options.data,
          },
        ),
      ),
    );

    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    unawaited(
      loggingService.error(
        LogRecord(
          moduleName: 'Dio',
          eventName: err.type.name,
          message: err.message,
          data: {'response.data': err.response?.data.toString()},
          error: err.error,
          stackTrace: err.stackTrace,
        ),
      ),
    );

    handler.next(err);
  }
}
