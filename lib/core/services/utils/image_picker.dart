// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_boilerplate/core/services/helpers/ui_helper.dart';
import 'package:flutter_boilerplate/core/views/widgets/calert_dialog.dart';

// import 'package:image_picker/image_picker.dart';

// void _pickFailedDialog() {
//   cAlertDialog<void>(
//     context: currentContext,
//     content: const Text('Failed!'),
//   );
// }

const double kb = 1024;
const double mb = kb * 1024;

Future<bool> exceedsFileSize(int fileBytes, double maxBytes) async {
  if (fileBytes > maxBytes) {
    // We are not considering less than 1 KB and GB+ here as not applicable
    final double size = maxBytes >= mb ? maxBytes / mb : maxBytes / kb;
    final String unit = maxBytes >= mb ? 'MB' : 'KB';
    await cAlertDialog<void>(
      context: currentContext,
      content: Text('File size should be less than '
          '${size.toStringAsFixed(2)} $unit'),
    );
    return true;
  }
  return false;
}

/* class CImagePicker {
  Future<XFile?>? camera({
    bool allowFromGallery = false,
    int? imageQuality,
    double? maxHeight,
    double? maxWidth,

    /// Maximum size of the image in bytes
    double? maxBytes,
  }) async {
    try {
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(
        source: allowFromGallery ? ImageSource.gallery : ImageSource.camera,
        imageQuality: imageQuality,
        maxHeight: maxHeight,
        maxWidth: maxWidth,
      );

      // check image size
      final int bytes = await image?.length() ?? 0;
      if (maxBytes != null) {
        final bool exceeds = await exceedsFileSize(bytes, maxBytes);
        if (exceeds) return null;
      }

      return image;
    } catch (_) {
      _pickFailedDialog();
      return null;
    }
  }
} */
