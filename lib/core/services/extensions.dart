import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/core/services/helpers/log_helper.dart';
import 'package:flutter_boilerplate/core/services/helpers/ui_helper.dart';
import 'package:flutter_boilerplate/core/services/typedef.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

extension IterableExtension<T> on Iterable<T> {
  /// Maps each element and its index to a new value.
  Iterable<R> mapIndexed<R>(R Function(int index, T element) convert) sync* {
    var index = 0;
    for (final element in this) {
      yield convert(index++, element);
    }
  }
}

///Extension for date time
extension DateTimeExtension<T> on DateTime {
  /// in format dd MMM yyyy example 18 Mar 2022

  String dmyString() {
    return DateFormat('dd MMM yyyy').format(this);
  }

  ///return 17-08-2023
  String dmyFormString() {
    return DateFormat('dd-MM-yyyy').format(this);
  }

  ///return 08-17-2023
  String mdyFormString() {
    return DateFormat('MM-dd-yyyy').format(this);
  }

  ///return '2023-08-16 for api post data
  String ymdString() {
    return DateFormat('yyyy-MM-dd').format(this);
  }

  String dateWithTime() {
    return DateFormat('yyyy-MM-ddThh:mm:ss').format(this);
  }
}

extension StringExtension on String {
  String getShortName() {
    final List<String> words = trim().split(' ');

    if (words.isEmpty || words.first == '') {
      return '';
    } else if (words.length == 1) {
      return words.first[0].toUpperCase();
    } else {
      return '${words.first[0].toUpperCase()}${words.last[0].toUpperCase()}';
    }
  }

  String getFirstName() {
    final List<String> words = split(' ');
    if (words.length > 1) {
      words.removeLast();
    }
    return words.join(' ');
  }

  String capitalizeFirstLetter() {
    if (this == '') return '';
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }

  String lastChars(int n) =>
      length > n ? substring(length - n) : substring(length);

  String toWordCase() {
    if (isEmpty) return '';
    // look behind not supported in safari yet
    final String spaced = replaceAll(RegExp('(?<!^)(?=[A-Z])'), ' ');
    return spaced[0].toUpperCase() + spaced.substring(1);
  }

  /// Parse the string into a DateTime and to string
  String toDmyDate() {
    return DateFormat('MM/dd/yyyy').parse(this).dmyFormString();
  }
}

extension NullableStringExtension on String? {
  String textOrEmpty() => this ?? '';

  DateTime toDate() {
    return this == null ? DateTime.now() : DateTime.parse(this!);
  }

  String removeHtmlTags() {
    // Define the regular expression pattern to match HTML tags
    final RegExp exp = RegExp('<[^>]*>', multiLine: true);

    // Replace HTML tags with an empty string
    return this == null ? '' : this!.replaceAll(exp, '');
  }
}

extension FormExtension on GlobalKey<FormState> {
  bool get isValid {
    // Check if the form is valid and current state is not null
    final bool isFormValid = currentState?.validate() ?? false;
    // Return false if form is invalid or state is null
    if (!isFormValid) return isFormValid;
    // Un focus the keyboard because the form is valid
    // Since state is also not null, the context is safe to use
    FocusScope.of(currentContext).unfocus();
    // Return true
    return isFormValid;
  }
}

extension FutureExtension<T> on Future<T> {
  /// Handy method to perform a callback on success and handle error if any
  Future<R> onSuccess<R>(
    FutureOr<R> Function(T data) data, {
    FutureOr<R> Function(Object error, StackTrace stackTrace)? error,
  }) {
    return then(
      (value) => data(value),
      onError: error ??
          (Object error, StackTrace stackTrace) {
            if (kDebugMode) {
              printLog(error);
              printLog(stackTrace);
            }
          },
    );
  }
}

extension RiverpodAsyncValueExtension<T> on AsyncValue<T> {
  Widget onSuccess(
    Widget Function(T data) data, {
    Widget Function()? loading,
    Widget Function(Object error, StackTrace stackTrace)? error,
    bool skipLoadingOnReload = false,
    bool skipLoadingOnRefresh = true,
    bool skipError = false,
  }) {
    return when(
      error: error ??
          (error, stackTrace) {
            if (kDebugMode) {
              printLog(error);
              printLog(stackTrace);
            }

            // Display an error dialog once the build method is executed
            // WidgetsBinding.instance.addPostFrameCallback((_) {
            //   cAlertDialog<void>(
            //     context: currentContext,
            //     content: const Text('Failed to render data!'),
            //   );
            // });

            // Show an error message to the user
            return const SizedBox();
          },
      loading: loading ?? () => const SizedBox(),
      skipError: skipError,
      skipLoadingOnRefresh: skipLoadingOnRefresh,
      skipLoadingOnReload: skipLoadingOnReload,
      data: data,
    );
  }
}

extension FileExtension on File {
  String get name => path.split(Platform.pathSeparator).last;
}

extension TextEditingControllerExtension on TextEditingController {
  /// return either text or null not empty string  useful for form validation
  String? textOrNull() {
    final String text = this.text.trim();
    return text.isEmpty ? null : text;
  }
}

extension MapExtension on JsonMap {
  JsonMap removeNullValues() {
    final JsonMap result = {};
    forEach((key, value) {
      if (value != null) {
        result[key] = value;
      }
    });
    return result;
  }

  JsonMap removeAllNull() {
    final Map<String, dynamic> filteredMap = {};
    forEach((key, value) {
      if (value != null) {
        if (value is Map<String, dynamic>) {
          // Recursively remove null values from nested maps
          final Map<String, dynamic> nestedFilteredMap = value.removeAllNull();
          if (nestedFilteredMap.isNotEmpty) {
            filteredMap[key] = nestedFilteredMap;
          }
        } else {
          filteredMap[key] = value;
        }
      }
    });
    return filteredMap;
  }

  //Below convert list of queryParams into string url
  String toQueryString() {
    String constructNestedQueryString(JsonMap params) {
      final List<String> parts = [];

      params.forEach((key, value) {
        if (value != null) {
          parts.add('"$key":$value');
        }
      });
      return '{${parts.join(',')}}';
    }

    final List<String> parts = [];

    forEach((key, value) {
      if (value is JsonMap) {
        final String nestedQueryString = constructNestedQueryString(value);
        parts.add('$key=$nestedQueryString');
      } else {
        parts.add('$key=$value');
      }
    });

    return '?${parts.join('&')}';
  }
}
