import 'package:cached_network_image/cached_network_image.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:photo_view/photo_view.dart';

class ImageObjectWidget extends StatelessWidget {
  ImageObjectWidget(
    this.imageObject, {
    ImageUrlCacheService? imageUrlCacheService,
    this.circleCrop = true,
    this.heroTag,
    super.key,
  }) : photoUrlCacheService =
            imageUrlCacheService ?? GetIt.I<ImageUrlCacheService>();

  final ImageUrlCacheService photoUrlCacheService;
  final IImage imageObject;
  final bool circleCrop;
  // ignore: no-object-declaration
  final Object? heroTag;

  @override
  Widget build(BuildContext context) {
    return Hero(
      transitionOnUserGestures: true,
      tag: heroTag ?? imageObject,
      child: LayoutBuilder(
        builder: (context, parentConstraints) {
          final constraints = BoxConstraints.expand(
            width: parentConstraints.maxHeight * 0.9,
            height: parentConstraints.maxHeight * 0.9,
          );
          final maxHeight = constraints.maxHeight;

          final defaultIcon =
              photoUrlCacheService.getDefaultIconFor(imageObject);

          if (!imageObject.hasImage) {
            return Icon(
              defaultIcon,
              size: maxHeight,
            );
          }

          final cachedImageUrl =
              photoUrlCacheService.getCachedImageUrl(imageObject);

          return ConstrainedBox(
            constraints: constraints,
            child: FutureBuilder<String>(
              initialData: cachedImageUrl,
              future: Future(
                () async => photoUrlCacheService.getImageUrl(imageObject),
              ),
              builder: (context, downloadUrlData) {
                final downloadUrlOrCache =
                    downloadUrlData.data ?? cachedImageUrl;

                if (downloadUrlData.hasError) {
                  return Icon(
                    defaultIcon,
                    size: maxHeight,
                  );
                } else if (downloadUrlOrCache == null) {
                  return const Center(child: CircularProgressIndicator());
                }

                final imageFromUrlWidget = _ImageFromUrlWidget(
                  defaultIcon: defaultIcon,
                  imageUrl: downloadUrlOrCache,
                  constraints: constraints,
                );

                const borderRadius = BorderRadius.all(Radius.circular(10));

                final inkWell = Material(
                  type: MaterialType.transparency,
                  shape: circleCrop ? const CircleBorder() : null,
                  borderRadius: circleCrop ? null : borderRadius,
                  child: InkWell(
                    onTap: () async => Navigator.of(context).push(
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
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    child: imageFromUrlWidget,
                  ),
                );

                if (circleCrop) {
                  return ClipOval(
                    child: inkWell,
                  );
                }

                return ClipRRect(
                  borderRadius: borderRadius,
                  child: inkWell,
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class _ImageFromUrlWidget extends StatelessWidget {
  static const animationsDuration = Duration.zero; //(milliseconds: 200);

  const _ImageFromUrlWidget({
    required this.imageUrl,
    required this.defaultIcon,
    required this.constraints,
    this.fullQuality = false,
  });

  final String imageUrl;
  final IconData defaultIcon;
  final BoxConstraints constraints;
  final bool fullQuality;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      memCacheHeight: fullQuality
          ? null
          : (MediaQuery.of(context).devicePixelRatio * constraints.maxHeight)
              .floor(),
      cacheManager: GetIt.I<BaseCacheManager>(),
      errorWidget: (context, url, error) => Icon(
        defaultIcon,
        size: constraints.maxHeight,
      ),
      fadeInDuration: animationsDuration,
      placeholderFadeInDuration: animationsDuration,
      fadeOutDuration: animationsDuration,
      fadeInCurve: Curves.linear,
      fadeOutCurve: Curves.linear,
      progressIndicatorBuilder: (context, url, progress) => Center(
        child: CircularProgressIndicator(
          value: progress.progress,
        ),
      ),
      useOldImageOnUrlChange: true,
    );
  }
}
