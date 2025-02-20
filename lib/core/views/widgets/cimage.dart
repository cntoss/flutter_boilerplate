// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cached_network_image/cached_network_image.dart';

// Project imports:
import 'package:flutter_boilerplate/generated/assets.gen.dart';

class CImage extends StatelessWidget {
  const CImage({
    super.key,
    this.image,
    this.height,
    this.width,
    this.fit,
    this.isBorder = false,
  });

  final BoxFit? fit;
  final double? height;
  final String? image;
  final bool isBorder;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image ?? '',
      imageBuilder: (context, imageProvider) {
        return Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: fit,
              image: imageProvider,
            ),
            borderRadius:
                BorderRadius.all(Radius.circular(isBorder ? 12.0 : 0)),
          ),
        );
      },
      placeholder: (context, url) => Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(isBorder ? 12.0 : 0)),
        ),
      ),
      errorWidget: (context, url, error) => Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.all(Radius.circular(isBorder ? 12.0 : 0)),
        ),
        child: Assets.images.placeholder.image(),
      ),
    );
  }
}
