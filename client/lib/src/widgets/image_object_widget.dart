import 'package:cached_network_image/cached_network_image.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:photo_view/photo_view.dart';

class ImageObjectWidget extends StatelessWidget {
  static const defaultSize = 50.4;
  static const clipBorderRadius = BorderRadius.all(Radius.circular(10));

  ImageObjectWidget(
    this.imageObject, {
    ImageUrlCacheService? imageUrlCacheService,
    ViewableObjectService? viewableObjectService,
    this.circleCrop = true,
    this.heroTag,
    this.size = defaultSize,
    super.key,
  })  : photoUrlCacheService = imageUrlCacheService ?? ImageUrlCacheService.I,
        viewableObjectService =
            viewableObjectService ?? ViewableObjectService.I;

  final ImageUrlCacheService photoUrlCacheService;
  final ViewableObjectService viewableObjectService;
  final IImage imageObject;
  final bool circleCrop;
  // ignore: no-object-declaration
  final Object? heroTag;
  final double size;

  @override
  Widget build(BuildContext context) {
    final defaultIcon = viewableObjectService.getDefaultIconFor(imageObject);
    final constraints = BoxConstraints.expand(width: size, height: size);

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

          final cachedImageUrl =
              photoUrlCacheService.getCachedImageUrl(imageObject);

          return ConstrainedBox(
            constraints: constraints,
            child: FutureBuilder<String>(
              initialData: cachedImageUrl,
              future: photoUrlCacheService.getImageUrl(imageObject),
              builder: (context, downloadUrlData) {
                final downloadUrlOrCache =
                    downloadUrlData.data ?? cachedImageUrl;

                final imagePlaceholder = _ImagePlaceholder(
                  defaultIcon: defaultIcon,
                  size: size,
                  blurhash: imageObject.blurhash,
                );

                if (downloadUrlData.hasError || downloadUrlOrCache == null) {
                  return clipImage(imagePlaceholder);
                }

                final imageFromUrlWidget = _ImageFromUrlWidget(
                  defaultIcon: defaultIcon,
                  imageUrl: downloadUrlOrCache,
                  constraints: constraints,
                  imagePlaceholder: imagePlaceholder,
                );

                final inkWell = Material(
                  type: MaterialType.transparency,
                  shape: circleCrop ? const CircleBorder() : null,
                  borderRadius: circleCrop ? null : clipBorderRadius,
                  child: InkWell(
                    onTap: _onImageTap(
                      context,
                      downloadUrlOrCache,
                      constraints,
                      defaultIcon,
                      imagePlaceholder,
                    ),
                    child: imageFromUrlWidget,
                  ),
                );

                return clipImage(inkWell);
              },
            ),
          );
        },
      ),
    );
  }

  Widget clipImage(Widget image) {
    if (circleCrop) {
      return ClipOval(child: image);
    }

    return ClipRRect(
      borderRadius: clipBorderRadius,
      child: image,
    );
  }

  void Function() _onImageTap(
    BuildContext context,
    String downloadUrlOrCache,
    BoxConstraints constraints,
    IconData defaultIcon,
    Widget imagePlaceholder,
  ) {
    return () => Navigator.of(context).push(
          PageRouteBuilder(
            opaque: false,
            barrierDismissible: true,
            barrierColor: Colors.black45,
            pageBuilder: (context, _, __) => Dialog(
              backgroundColor: Colors.transparent,
              child: Hero(
                transitionOnUserGestures: true,
                tag: heroTag ?? imageObject,
                child: PhotoView.customChild(
                  backgroundDecoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  tightMode: true,
                  childSize: constraints.smallest,
                  wantKeepAlive: true,
                  child: _ImageFromUrlWidget(
                    defaultIcon: defaultIcon,
                    imageUrl: downloadUrlOrCache,
                    constraints: constraints,
                    fullQuality: true,
                    imagePlaceholder: imagePlaceholder,
                  ),
                ),
              ),
            ),
          ),
        );
  }
}

class _ImageFromUrlWidget extends StatelessWidget {
  static const animationsDuration = Duration.zero;

  const _ImageFromUrlWidget({
    required this.imageUrl,
    required this.defaultIcon,
    required this.constraints,
    required this.imagePlaceholder,
    this.fullQuality = false,
  });

  final String imageUrl;
  final Widget imagePlaceholder;
  final IconData defaultIcon;
  final BoxConstraints constraints;
  final bool fullQuality;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: [
        imagePlaceholder,
        CachedNetworkImage(
          imageUrl: imageUrl,
          memCacheHeight: fullQuality
              ? null
              : (MediaQuery.of(context).devicePixelRatio *
                      constraints.maxHeight)
                  .floor(),
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
        gaplessPlayback: true,
      );
    }

    return Icon(
      defaultIcon,
      size: size,
    );
  }
}
