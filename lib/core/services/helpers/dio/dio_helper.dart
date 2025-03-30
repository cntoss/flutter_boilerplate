// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import 'package:flutter_boilerplate/core/services/helpers/dio/dio_interceptor.dart';

/// A top level constant to access [Dio] client with customizations
Dio get client {
  final Dio dio = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: kDebugMode ? 10000 : 60000),
    ),
  );

  // Add interceptors related with erp
  dio.interceptors.add(DioInterceptor());

  // Add network error interceptors related to handle internet connection
  dio.interceptors.add(DioNetworkErrorInterceptor());

  // Add Firebase Performance to analyze the performance of network calls
  // if (!kDebugMode) dio.interceptors.add(DioFirebasePerformanceInterceptor());

  // Print network logs to the console during debug
  if (kDebugMode) dio.interceptors.add(DioLogInterceptor());
  return dio;
}
