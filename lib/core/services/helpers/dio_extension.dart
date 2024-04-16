import 'package:dio/dio.dart';
import 'package:flutter_boilerplate/core/services/helpers/dio_helper.dart'
    as network;
import 'package:flutter_boilerplate/core/services/helpers/dio_interceptor.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Extensions for Riverpod with [Dio] client
extension DioRiverpodExtension on Ref {
  /// Adds loader, request cancellor and response dialog
  Dio get client {
    final Dio dio = network.client;
    dio.interceptors.add(DioLoaderInterceptor(this));
    dio.interceptors.add(DioRequestCancelInterceptor(this));
    dio.interceptors.add(DioErrorMessageInterceptor());
    return dio;
  }
}

extension DioExtension on Dio {
  /// Removes loader interceptor from client
  Dio get hideLoader {
    interceptors.removeWhere((element) => element is DioLoaderInterceptor);
    return this;
  }

  /// Client without error message dialog
  Dio get hideMessage {
    interceptors
        .removeWhere((element) => element is DioErrorMessageInterceptor);
    return this;
  }
}
