// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:file_picker/file_picker.dart';

// Project imports:
import 'package:flutter_boilerplate/core/services/helpers/ui_helper.dart';
import 'package:flutter_boilerplate/core/services/utils/image_picker.dart';
import 'package:flutter_boilerplate/core/views/widgets/calert_dialog.dart';

void _pickFailedDialog() {
  cAlertDialog<void>(
    context: currentContext,
    content: const Text('Failed!'),
  );
}

class CFilePicker {
  const CFilePicker({this.maxBytes});
  final double? maxBytes;
  Future<FilePickerResult?>? image({
    bool allowMultiple = false,
    bool allowCompression = true,
    String? initialDirectory,
  }) async {
    try {
      return FilePicker.platform.pickFiles(
        type: FileType.image,
        allowMultiple: allowMultiple,
        allowCompression: allowCompression,
        initialDirectory: initialDirectory,
      );
    } on Exception catch (_) {
      _pickFailedDialog();
      return null;
    }
  }

  Future<FilePickerResult?>? pick() async {
    try {
      return await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: [
          'pdf',
          'csv',
          'xlsx',
          'xls',
          'docx',
          'doc',
          'rtf',
          'txt',
          'jpg',
          'png',
        ],
      );
    } on Exception catch (_) {
      _pickFailedDialog();
      return null;
    }
  }

  Future<File?> pickSingleFile() async {
    final FilePickerResult? result = await pick();
    if (result != null && result.files.first.path != null) {
      final File file = File(result.files.first.path!);

      // check if file size exceeds
      if (maxBytes != null) {
        final int fileBytes = await file.length();
        final bool exceeds = await exceedsFileSize(fileBytes, maxBytes!);
        if (exceeds) return null;
      }

      return file;
    }
    return null;
  }

  Future<File?> pickSingleImage() async {
    final FilePickerResult? result = await image();
    if (result != null && result.files.first.path != null) {
      return File(result.files.first.path!);
    }
    return null;
  }
}
