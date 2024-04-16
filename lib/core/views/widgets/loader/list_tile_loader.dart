part of 'cloader.dart';

class _ListTileLoader extends CLoader {
  const _ListTileLoader({
    this.count = 10,
    this.enabled = true,
    this.showTrailing = true,
    this.padding = const EdgeInsets.symmetric(horizontal: 16),
    this.tileColor,
    this.dense = false,
    this.showLeading = true,
    this.showSubtitle = true,
  });

  final int count;
  final bool enabled;
  final EdgeInsets padding;
  final bool showTrailing;
  final Color? tileColor;
  final bool showLeading;
  final bool dense;
  final bool showSubtitle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (!enabled) return const SizedBox();
    return Skeletonizer(
      child: SizedBox(
        // Height of each list tile * count
        height: 72 * count.toDouble() + 10 * count,
        child: ListView.separated(
          padding: padding,
          itemCount: count,
          separatorBuilder: (context, count) {
            return const SizedBox(
              height: 10,
            );
          },
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              // W is chosen because it is a wide word.
              // It helps to create a short string with long length.
              title: Text(
                'W' * 10,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: !showSubtitle
                  ? null
                  : Text(
                      'W' * 8,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
              leading: showLeading ? const CircleAvatar() : null,
              tileColor: tileColor,
              dense: dense,
              trailing: !showTrailing
                  ? null
                  : Text(
                      'W' * 4,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
            );
          },
        ),
      ),
    );
  }
}
