part of 'cloader.dart';

class _BoxLoader extends CLoader {
  const _BoxLoader({
    required this.width,
    required this.height,
    this.shape = BoxShape.rectangle,
    this.borderRadius,
  });

  final BorderRadius? borderRadius;
  final double height;
  final BoxShape shape;
  final double width;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Skeletonizer(
        child: Skeleton.shade(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              shape: shape,
              color: Colors.grey,
              borderRadius: borderRadius,
            ),
          ),
        ),
      ),
    );
  }
}
