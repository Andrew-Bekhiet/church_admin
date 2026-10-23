import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';
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
    return () {
      AnalyticsService.I.track(PhotoFullscreenOpen(imageObject));
      Navigator.of(context).push(
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
                child: ImageObjectFromUrl(
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
    };
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
    final String cacheKey = imageObject.imageInfo.photoCacheKey;
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
                key: ValueKey(cacheKey),
                initialData: cachedImageUrl,
                future: photoUrlCacheService.getImageUrl(imageObject.imageInfo),
                builder: (context, downloadUrlData) {
                  final downloadUrlOrCache =
                      downloadUrlData.data ?? cachedImageUrl;

                  final imagePlaceholder = ImageObjectPlaceholder(
                    defaultIcon: defaultIcon,
                    size: blurhashSize ?? size,
                    blurhash: imageObject.blurhash,
                  );

                  if (downloadUrlData.hasError || downloadUrlOrCache == null) {
                    return imagePlaceholder;
                  }

                  final imageFromUrlWidget = ImageObjectFromUrl(
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
