// Package imports:
import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:flutter_boilerplate/core/models/base_error_response.dart';
import 'package:flutter_boilerplate/core/providers/app_session_provider.dart';
import 'package:flutter_boilerplate/core/providers/loader_provider.dart';
// Project imports:
import 'package:flutter_boilerplate/core/services/helpers/dio/dio_logger.dart';
import 'package:flutter_boilerplate/core/services/helpers/ui_helper.dart';
import 'package:flutter_boilerplate/core/views/widgets/calert_dialog.dart';
import 'package:flutter_boilerplate/features/auth/models/login.dart';
import 'package:flutter_boilerplate/features/auth/models/user_collection.dart';
import 'package:flutter_boilerplate/features/auth/services/isar_auth_service.dart';

class DioInterceptor extends Interceptor {
  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401 &&
        // ignore: avoid_dynamic_calls
        err.response?.data['message'] != 'Email or Password wrong') {
      // Logout
      // ProviderScope is preferred here because of special case
      // Unless you know what it does, don't use it anywhere else
      // Refer to docs first and make sure the use case fits
      await ProviderScope.containerOf(
        currentContext,
      ).read(appSessionProvider.notifier).logout();
    }
    handler.next(err);
  }

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final UserCollection? user = await IsarAuthService().getUserCollection();
    if (user?.token != null) {
      final decodedToken = jsonDecode(user!.token!) as Map<String, dynamic>;
      final token = LoginResponse.fromJson(decodedToken);
      options.headers.addAll({
        'authorization': 'Bearer ${token.accesstoken?.plainTextToken}',
        'accept': 'application/json',
      });
    }
    handler.next(options);
  }
}

class DioLogInterceptor implements Interceptor {
  @override
  void onError(DioException exception, ErrorInterceptorHandler handler) {
    DioLogger().error(exception);
    handler.next(exception);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    DioLogger().request(options);
    handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    DioLogger().response(response);
    handler.next(response);
  }
}

class DioLoaderInterceptor implements Interceptor {
  const DioLoaderInterceptor(this.ref);

  final Ref ref;

  @override
  void onError(DioException exception, ErrorInterceptorHandler handler) {
    // Hide the loader when an error occurs
    ref.read(loaderStateProvider.notifier).hideLoader();
    handler.next(exception);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Show the loader when a request is made
    ref.read(loaderStateProvider.notifier).showLoader();
    handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    // Hide the loader when the response is received
    ref.read(loaderStateProvider.notifier).hideLoader();
    handler.next(response);
  }
}

class DioErrorMessageInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // Show error dialog except for the cancelled requests
    if (err.type != DioExceptionType.cancel &&
        err.type != DioExceptionType.connectionError) {
      // Get the error code from the response
      final String errorCode =
          '[Code: ${err.response?.statusCode ?? 'Unknown'}]';

      // Surround with try/catch to handle deserialization error
      try {
        final ErrorResponse response = ErrorResponse.fromJson(
          err.response!.data! as Map<String, dynamic>,
        );
        // try to get message sent from erp API
        final String? serverMessage = response.errorMsg ?? response.message;

        // fallback message if no server message is found
        // prefer network client status message first
        final String clientMessage =
            err.response?.statusMessage ?? 'An error has occurred!';

        // set final message to show
        // also show error code if server message is missing
        final String errorMessage =
            serverMessage ?? '$clientMessage $errorCode';

        // show error message dialog
        cAlertDialog<void>(
          context: currentContext,
          content: Text(errorMessage),
        );
      } catch (_) {
        // We set different message here to know deserialization failed
        final String errorMessage =
            err.response?.statusMessage ?? 'Something went wrong!';

        // show error dialog with error code
        cAlertDialog<void>(
          context: currentContext,
          content: Text('$errorMessage $errorCode'),
        );
      }
    }
    handler.next(err);
  }
}

/// Adds cancel token to the request.
/// The request is cancelled when the provider is disposed.
///
/// This is mostly useful when the request is being made at initial build
/// and the user taps back. This will allow the request to be cancelled
/// as well as cancel the loader.
class DioRequestCancelInterceptor extends Interceptor {
  const DioRequestCancelInterceptor(this.ref);

  final Ref ref;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Add cancel token to the request
    final CancelToken token = CancelToken();
    options.cancelToken = token;

    /// Cancel request when the provider is disposed

    // ref.onDispose(token.cancel);

    handler.next(options);
  }
}

/// Interceptor that can be used to handle the internet connection issue
class DioNetworkErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.type == DioExceptionType.connectionError) {
      cAlertDialog<void>(
        context: currentContext,
        content: const Text(
          'Please make sure that you have a working internet connection.',
        ),
      );
    }
    handler.next(err);
  }
}
