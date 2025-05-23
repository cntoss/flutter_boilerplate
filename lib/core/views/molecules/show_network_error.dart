// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import 'package:flutter_boilerplate/core/models/base_error_response.dart';
import 'package:flutter_boilerplate/core/services/typedef.dart';
import 'package:flutter_boilerplate/core/views/resource/style_manager.dart';

Widget Function(Object, StackTrace?) onNetworkError = (error, stackTrace) {
  if (error is DioException) {
    final errResponse = ErrorResponse.fromJson(
      error.response!.data as JsonMap,
    );
    return Center(
      child: Text(
        errResponse.errorMsg ?? 'Error',
        style: getSemiBoldStyle(color: Colors.red),
      ),
    );
  } else {
    return Center(child: Text(error.toString()));
  }
};
