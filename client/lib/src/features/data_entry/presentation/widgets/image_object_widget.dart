import 'package:cached_network_image/cached_network_image.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:photo_view/photo_view.dart';

class ImageObjectWidget extends StatelessWidget {
  static const defaultSize = 50.4;
  static const clipBorderRadius = BorderRadius.all(Radius.circular(10));
  static const denseClipBorderRadius = BorderRadius.all(Radius.circular(10));

  final ImageUrlCacheService photoUrlCacheService;
  final ViewableObjectService viewableObjectService;
  final IImage imageObject;
  final bool circleCrop;
  final bool isDense;
  // ignore: no-object-declaration
  final Object? heroTag;
  final double size;
  final BorderRadius? borderRadius;
  final double? blurhashSize;

  void Function() _onImageTap(
    BuildContext context, {
    required String downloadUrlOrCache,
    required String cacheKey,
    required bool hasBlurhash,
    required BoxConstraints constraints,
    required IconData defaultIcon,
    required Widget imagePlaceholder,
  }) {
    return () => Navigator.of(context).push(
      PageRouteBuilder(
        opaque: false,
        barrierDismissible: true,
        barrierColor: Colors.black45,
        pageBuilder: (context, _, _) => Dialog(
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          child: Hero(
            transitionOnUserGestures: true,
            tag: heroTag ?? imageObject,
            child: PhotoView.customChild(
              backgroundDecoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              tightMode: true,
              childSize: constraints.smallest,
              child: _ImageFromUrlWidget(
                cacheKey: cacheKey,
                defaultIcon: defaultIcon,
                imageUrl: downloadUrlOrCache,
                maxHeight: constraints.maxHeight,
                fullQuality: true,
                hasBlurhash: hasBlurhash,
                imagePlaceholder: imagePlaceholder,
              ),
            ),
          ),
        ),
      ),
    );
  }

  ImageObjectWidget(
    this.imageObject, {
    this.circleCrop = true,
    this.isDense = false,
    this.size = defaultSize,
    ImageUrlCacheService? imageUrlCacheService,
    ViewableObjectService? viewableObjectService,
    this.heroTag,
    this.borderRadius,
    this.blurhashSize,
    super.key,
  }) : photoUrlCacheService = imageUrlCacheService ?? ImageUrlCacheService.I,
       viewableObjectService = viewableObjectService ?? ViewableObjectService.I;

  @override
  Widget build(BuildContext context) {
    final IconData defaultIcon = viewableObjectService.getDefaultIconFor(
      imageObject,
    );
    final constraints = BoxConstraints.expand(width: size, height: size);
    final String cacheKey = imageObject.imageInfo.cacheKey;
    final BorderRadius? borderRadius = circleCrop
        ? null
        : this.borderRadius ??
              (isDense ? denseClipBorderRadius : clipBorderRadius);

    return Hero(
      transitionOnUserGestures: true,
      tag: heroTag ?? imageObject,
      child: Builder(
        builder: (context) {
          if (!imageObject.hasImage) {
            return Icon(
              defaultIcon,
              size: size,
            );
          }

          final cachedImageUrl = photoUrlCacheService.getCachedImageUrl(
            imageObject.imageInfo,
          );

          return ConstrainedBox(
            constraints: constraints,
            child: Material(
              type: MaterialType.transparency,
              clipBehavior: Clip.antiAlias,
              shape: circleCrop
                  ? const CircleBorder()
                  : RoundedRectangleBorder(borderRadius: borderRadius!),
              child: FutureBuilder<String>(
                initialData: cachedImageUrl,
                future: photoUrlCacheService.getImageUrl(imageObject.imageInfo),
                builder: (context, downloadUrlData) {
                  final downloadUrlOrCache =
                      downloadUrlData.data ?? cachedImageUrl;

                  final imagePlaceholder = _ImagePlaceholder(
                    defaultIcon: defaultIcon,
                    size: blurhashSize ?? size,
                    blurhash: imageObject.blurhash,
                  );

                  if (downloadUrlData.hasError || downloadUrlOrCache == null) {
                    return imagePlaceholder;
                  }

                  final imageFromUrlWidget = _ImageFromUrlWidget(
                    defaultIcon: defaultIcon,
                    imageUrl: downloadUrlOrCache,
                    cacheKey: cacheKey,
                    maxHeight: constraints.maxHeight,
                    imagePlaceholder: imagePlaceholder,
                    hasBlurhash: imageObject.blurhash != null,
                  );

                  return InkWell(
                    onTap: _onImageTap(
                      context,
                      downloadUrlOrCache: downloadUrlOrCache,
                      cacheKey: cacheKey,
                      constraints: constraints,
                      defaultIcon: defaultIcon,
                      hasBlurhash: imageObject.blurhash != null,
                      imagePlaceholder: imagePlaceholder,
                    ),
                    child: imageFromUrlWidget,
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class _ImageFromUrlWidget extends StatelessWidget {
  static const animationsDuration = Duration.zero;

  final String imageUrl;
  final String cacheKey;
  final Widget imagePlaceholder;
  final IconData defaultIcon;
  final double maxHeight;
  final bool fullQuality;
  final bool hasBlurhash;

  const _ImageFromUrlWidget({
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

class _ImagePlaceholder extends StatelessWidget {
  final IconData defaultIcon;
  final String? blurhash;
  final double size;

  const _ImagePlaceholder({
    required this.defaultIcon,
    required this.size,
    this.blurhash,
  });

  @override
  Widget build(BuildContext context) {
    if (blurhash != null) {
      return Image(
        height: size,
        width: size,
        image: BlurHashImage(
          blurhash!,
          scale: 32 / size,
        ),
        frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
          if (frame != null) return child;

          return Icon(
            defaultIcon,
            size: size,
          );
        },
        gaplessPlayback: true,
      );
    }

    return Icon(
      defaultIcon,
      size: size,
    );
  }
}
