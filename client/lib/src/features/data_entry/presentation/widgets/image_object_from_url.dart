import 'package:cached_network_image/cached_network_image.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class ImageObjectFromUrl extends StatelessWidget {
  static const animationsDuration = Duration.zero;

  final String imageUrl;
  final String cacheKey;
  final Widget imagePlaceholder;
  final IconData defaultIcon;
  final double maxHeight;
  final bool fullQuality;
  final bool hasBlurhash;

  const ImageObjectFromUrl({
    required this.imageUrl,
    required this.cacheKey,
    required this.defaultIcon,
    required this.maxHeight,
    required this.imagePlaceholder,
    required this.hasBlurhash,
    this.fullQuality = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: [
        if (hasBlurhash) imagePlaceholder,
        CachedNetworkImage(
          key: ValueKey(imageUrl + cacheKey),
          cacheKey: cacheKey,
          imageUrl: imageUrl,
          placeholder: (context, _) => imagePlaceholder,
          memCacheHeight: fullQuality
              ? null
              : (MediaQuery.devicePixelRatioOf(context) * maxHeight).floor(),
          cacheManager: globalProviderContainer.read(baseCacheManagerProvider),
          errorWidget: (context, url, error) => imagePlaceholder,
          fadeInDuration: animationsDuration,
          placeholderFadeInDuration: animationsDuration,
          fadeOutDuration: animationsDuration,
          useOldImageOnUrlChange: true,
        ),
      ],
    );
  }
}
