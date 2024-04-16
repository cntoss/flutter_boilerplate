part of 'cloader.dart';

class _TextLoader extends CLoader {
  const _TextLoader({
    this.length = 5,
    this.fontSize = 14,
    this.enabled = true,
  });

  final bool enabled;
  final double fontSize;
  final int length;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Skeletonizer(
      enabled: enabled,
      child: Text(
        'W' * length,
        style: TextStyle(fontSize: fontSize),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
