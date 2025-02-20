// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

// Project imports:
import 'package:flutter_boilerplate/core/constants/ui_colors.dart';
import 'package:flutter_boilerplate/core/providers/loader_provider.dart';

part 'box_loader.dart';
part 'list_tile_loader.dart';
part 'text_loader.dart';

class CLoader extends ConsumerWidget {
  const CLoader({
    this.child,
    this.independent = false,
    super.key,
  });

  const factory CLoader.box({
    required double height,
    required double width,
    BoxShape shape,
    BorderRadius? borderRadius,
  }) = _BoxLoader;

  const factory CLoader.listTile({
    bool enabled,
    int count,
    EdgeInsets padding,
    bool showTrailing,
    bool showLeading,
    bool showSubtitle,
    Color? tileColor,
    bool dense,
  }) = _ListTileLoader;

  const factory CLoader.text({
    bool enabled,
    int length,
    double fontSize,
  }) = _TextLoader;

  final Widget? child;

  /// Control whether loader should be shown indpendent of the provider.
  /// This is useful when we need to show the loader in general use cases
  /// without the need or being dependent on the provider.
  /// User should take responsiblity to turn of the independent loader.
  final bool independent;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<void> loaders = ref.watch(loaderStateProvider);
    final buttonStates = ref.watch(buttonStateProvider);
    return Stack(
      children: [
        if (child != null) child!,
        if (loaders.isNotEmpty || independent)
          // If button has loader, block the touch events only.
          // We prefer this approach over IgnorePointer because
          // it does not need extra handling like enabling pointer,
          // compatibility with global loader, dio.hideLoader extension, etc.
          if (buttonStates.isNotEmpty)
            const ColoredBox(
              color: Colors.transparent,
              child: Center(),
            )
          else
            ColoredBox(
              color: UIColors.black.withOpacity(0.1),
              child: const Center(
                child: RefreshProgressIndicator(),
              ),
            ),
      ],
    );
  }
}
