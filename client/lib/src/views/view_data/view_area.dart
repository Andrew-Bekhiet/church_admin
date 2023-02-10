import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart' hide ViewableObjectWidget;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ViewArea extends StatefulWidget {
  static final route = GoRoute(
    name: 'view_area',
    path: 'viewArea',
    builder: (context, state) {
      if (state.queryParams['id'] == null) {
        throw ArgumentError.notNull('id');
      }

      return ViewArea(
        areaId: state.queryParams['id']!,
        area: (state.extra as Map?)?['area'] as Area?,
      );
    },
    // routes: [
    //   EditArea.editAreaRoute,
    //   AreaAnalysis.areaRoute,
    // ],
  );

  final Area? area;
  final String areaId;
  const ViewArea({
    required this.areaId,
    this.area,
    super.key,
  });

  @override
  State<ViewArea> createState() => _ViewAreaState();
}

class _ViewAreaState extends State<ViewArea> {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Area?>(
      initialData: widget.area,
      stream: DatabaseService.I.areas.watchArea(areaId: widget.areaId),
      builder: (context, snapshot) {
        final themeData = Theme.of(context);

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
            body: Center(
              child: Text(
                'لم يتم العثور على المنطقة',
                style: themeData.textTheme.titleLarge,
              ),
            ),
          );
        }

        final area = snapshot.requireData!;

        final foregroundColor = area.color.getContrastingColor(
          ListTileTheme.of(context).textColor ??
              themeData.listTileTheme.textColor ??
              themeData.textTheme.titleMedium!.color!,
        );
        return Scaffold(
          body: CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverAppBar(
                backgroundColor: area.color,
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
                    IconButton(
                      tooltip: 'تعديل',
                      onPressed: () => context.goNamed(
                        'edit_area',
                        queryParams: {'id': widget.areaId},
                        extra: {'area': area},
                      ),
                      icon: const Icon(Icons.edit),
                    ),
                ],
                flexibleSpace: ViewableObjectAppBar(
                  circleCrop: false,
                  foregroundColor: foregroundColor,
                  viewable:
                      widget.area?.hasImage ?? false ? widget.area! : area,
                  appBarMaxHeight: 280,
                  scrollController: scrollController,
                  duration: const Duration(milliseconds: 450),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    if (area.bounds != null)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        child: FilledButton.tonalIcon(
                          label: const Text('المكان على الخريطة'),
                          icon: const Icon(Icons.map),
                          onPressed: () async => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  DataGeomap(initialArea: area),
                            ),
                          ),
                        ),
                      ),
                    HistoryProperty(
                      name: 'أخر تحديث للبيانات',
                      value: area.lastEdit?.time,
                      getHistoryStream: () => DatabaseService.I.history
                          .paginateEditHistory<Area>(id: area.id),
                    ),
                    ListTile(
                      title: const Text('الخدام المسؤولين'),
                      subtitle: area.adminUsers?.isNotEmpty ?? false
                          ? AdminUsers(users: area.adminUsers!)
                          : const Text('لا يوجد خدام محددين للمنطقة'),
                    ),
                    const Placeholder(
                      fallbackHeight: 1000,
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
