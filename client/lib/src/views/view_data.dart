// ignore_for_file: avoid-returning-widgets
import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart'
    hide LoggingService, ViewableObjectWidget;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

export 'view_data/view_area.dart';
export 'view_data/view_class.dart';
export 'view_data/view_family.dart';
export 'view_data/view_group.dart';
export 'view_data/view_person.dart';
export 'view_data/view_service.dart';
export 'view_data/view_store.dart';
export 'view_data/view_street.dart';
export 'view_data/view_user.dart';

typedef WidgetBuilderWithObject<T> = WBuilderWithObject<T, Widget>;

typedef WBuilderWithObject<T, W extends Widget> = W Function(
  BuildContext context,
  T object,
);

class ViewObjectDetails<T extends ViewableWithIDAndImage>
    extends StatelessWidget {
  final T? object;
  final String objectId;

  final Stream<T?> objectStream;
  final List<Type> childrenTypes;
  final Map<Type, Widget Function(BuildContext)> tabsContentBuilders;

  final WidgetBuilder notFoundBuilder;
  final WidgetBuilderWithObject<T> editButtonBuilder;
  final WidgetBuilderWithObject<T> detailsBuilder;
  final WBuilderWithObject<T, PreferredSizeWidget> tabsHeaderBuilder;

  const ViewObjectDetails({
    required this.objectId,
    required this.objectStream,
    required this.childrenTypes,
    required this.tabsContentBuilders,
    required this.notFoundBuilder,
    required this.editButtonBuilder,
    required this.detailsBuilder,
    required this.tabsHeaderBuilder,
    this.object,
    super.key,
  }) : assert(childrenTypes.length == tabsContentBuilders.length);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<T?>(
      initialData: object,
      stream: objectStream,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            ),
            body: ErrorWidget.builder(
              FlutterErrorDetails(exception: snapshot.error!),
            ),
          );
        } else if (!snapshot.hasData &&
            snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (!snapshot.hasData) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            ),
            body: notFoundBuilder(context),
          );
        }

        final themeData = Theme.of(context);

        final objectData = snapshot.requireData!;

        final foregroundColor = objectData.color.getContrastingColor(
          ListTileTheme.of(context).textColor ??
              themeData.listTileTheme.textColor ??
              themeData.textTheme.titleMedium!.color!,
        );

        return Theme(
          data: CAThemingService.getDefault(primaryOverride: objectData.color),
          child: DefaultTabController(
            length: childrenTypes.length,
            child: Scaffold(
              body: NestedScrollView(
                headerSliverBuilder: (context, isBodyScrolled) => [
                  SliverAppBar(
                    backgroundColor: objectData.color,
                    foregroundColor: foregroundColor,
                    stretch: true,
                    pinned: true,
                    expandedHeight: 280,
                    actions: [
                      if (snapshot.connectionState != ConnectionState.active)
                        const Padding(
                          padding: EdgeInsets.all(8),
                          child: Center(child: CircularProgressIndicator()),
                        )
                      else
                        editButtonBuilder(context, objectData),
                    ],
                    flexibleSpace: ViewableObjectAppBar(
                      circleCrop: false,
                      foregroundColor: foregroundColor,
                      viewable:
                          object?.hasImage ?? false ? object! : objectData,
                      appBarMaxHeight: 280,
                      duration: const Duration(milliseconds: 450),
                    ),
                  ),
                  detailsBuilder(context, objectData),
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: PreferredSizePersistentHeaderDelegate(
                      child: tabsHeaderBuilder(context, objectData),
                    ),
                  ),
                ],
                body: TabBarView(
                  key: ValueKey(objectData.id),
                  children: childrenTypes
                      .mapIndexed(
                        (i, type) => LazyTabPage(
                          index: i,
                          builder: tabsContentBuilders[type]!,
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
