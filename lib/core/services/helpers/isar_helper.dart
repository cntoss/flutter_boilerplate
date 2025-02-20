// Package imports:
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

// Project imports:
import 'package:flutter_boilerplate/features/auth/models/user_collection.dart';

/// Top level variable to access the [Isar] instance
///
/// Ensure the [open()] method inside the [IsarHelper] has been called
/// before accessing this to avoid late initialization error
late Isar isar;

class IsarHelper {
  Future<void> open() async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      isar = await Isar.open(
        [
          UserCollectionSchema,
        ],
        directory: dir.path,
      );
    } catch (e) {
      throw Exception('Isar DB could not be opened');
    }
  }
}
