import 'dart:async';

import 'package:church_admin/church_admin.dart' hide Polygon;
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';
import 'package:rxdart/rxdart.dart';

class EditGeomapOptionsWidget extends StatefulWidget {
  final GeomapOptions mapOptions;
  final ScrollController sheetScrollController;
  final void Function(GeomapOptions) apply;
  const EditGeomapOptionsWidget({
    required this.mapOptions,
    required this.sheetScrollController,
    required this.apply,
    super.key,
  });

  @override
  State<EditGeomapOptionsWidget> createState() =>
      EditGeomapOptionsWidgetState();
}

class EditGeomapOptionsWidgetState extends State<EditGeomapOptionsWidget> {
  late GeomapOptions stagingMapOptions = widget.mapOptions.copyWith();

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: ListView(
        controller: widget.sheetScrollController,
        shrinkWrap: true,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'اعدادات الخريطة',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              OutlinedButton.icon(
                onPressed: stagingMapOptions != widget.mapOptions
                    ? _apply
                    : null,
                icon: const Icon(Symbols.done),
                label: const Text('تطبيق'),
              ),
              const SizedBox(width: 20),
            ],
          ),
          ListTile(
            title: Text(
              'اختيار البيانات',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            subtitle: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GeomapOptionsDataSelectionTile(
                  title: 'المناطق',
                  selected: stagingMapOptions.selectedAreas,
                  onSelect: _selectAreas,
                ),
                GeomapOptionsDataSelectionTile(
                  title: 'الشوارع',
                  selected: stagingMapOptions.selectedStreets,
                  onSelect: _selectStreets,
                ),
                GeomapOptionsDataSelectionTile(
                  title: 'العائلات',
                  selected: stagingMapOptions.selectedFamilies,
                  onSelect: _selectFamilies,
                ),
                GeomapOptionsDataSelectionTile(
                  title: 'المتاجر',
                  selected: stagingMapOptions.selectedStores,
                  onSelect: _selectStores,
                ),
                const Divider(thickness: 1),
                GeomapOptionsDataSelectionTile(
                  title: 'الخدمات',
                  selected: stagingMapOptions.selectedServices,
                  onSelect: _selectServices,
                ),
                GeomapOptionsDataSelectionTile(
                  title: 'الفصول',
                  selected: stagingMapOptions.selectedClasses,
                  onSelect: _selectClasses,
                ),
                GeomapOptionsDataSelectionTile(
                  title: 'المجموعات',
                  selected: stagingMapOptions.selectedGroups,
                  onSelect: _selectGroups,
                ),
                const Divider(thickness: 1),
              ],
            ),
          ),
          ListTile(
            title: Text(
              'الطبقات',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            subtitle: Column(
              mainAxisSize: MainAxisSize.min,
              children: GeoMapLayer.values
                  .map(
                    (e) => CheckboxListTile(
                      title: Text(e.label),
                      value: stagingMapOptions.layers.contains(e),
                      onChanged:
                          stagingMapOptions.layers.length == 1 &&
                              stagingMapOptions.layers.single == e
                          ? null
                          : (v) => _toggleLayer(e, isEnabled: v ?? false),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  void _apply() {
    AnalyticsService.I.track(MapsOptionsApply(stagingMapOptions));
    widget.apply(stagingMapOptions);
  }

  void _toggleLayer(GeoMapLayer layer, {required bool isEnabled}) {
    AnalyticsService.I.track(MapsLayerToggle(layer, isEnabled: isEnabled));
    setState(
      () => stagingMapOptions = stagingMapOptions.copyWith(
        layers: isEnabled
            ? stagingMapOptions.layers.union({layer})
            : stagingMapOptions.layers.difference({layer}),
      ),
    );
  }

  Future<void> _selectGroups() async {
    final rslt = await _select<Group>(
      stream: DatabaseService.I.groups.streamAll(),
      selected: stagingMapOptions.selectedGroups.toList(),
      title: 'اختيار المجموعات',
      entityType: AnalyticsEntityType.group,
    );

    if (rslt != null && mounted) {
      setState(() {
        stagingMapOptions = stagingMapOptions.copyWith(
          selectedGroups: rslt.toSet(),
        );
      });
    }
  }

  Future<void> _selectClasses() async {
    final rslt = await _select<Class>(
      stream: DatabaseService.I.classes.streamAll(),
      selected: stagingMapOptions.selectedClasses.toList(),
      title: 'اختيار الفصول',
      entityType: AnalyticsEntityType.class$,
    );

    if (rslt != null && mounted) {
      setState(() {
        stagingMapOptions = stagingMapOptions.copyWith(
          selectedClasses: rslt.toSet(),
        );
      });
    }
  }

  Future<void> _selectServices() async {
    final rslt = await _select<Service>(
      stream: DatabaseService.I.services.streamAll(),
      selected: stagingMapOptions.selectedServices.toList(),
      title: 'اختيار الخدمات',
      entityType: AnalyticsEntityType.service,
    );

    if (rslt != null && mounted) {
      setState(() {
        stagingMapOptions = stagingMapOptions.copyWith(
          selectedServices: rslt.toSet(),
        );
      });
    }
  }

  Future<void> _selectStores() async {
    final rslt = await _select<Store>(
      stream: DatabaseService.I.stores.streamAll(),
      selected: stagingMapOptions.selectedStores.toList(),
      title: 'اختيار المتاجر',
      entityType: AnalyticsEntityType.store,
    );

    if (rslt != null && mounted) {
      setState(() {
        stagingMapOptions = stagingMapOptions.copyWith(
          selectedStores: rslt.toSet(),
        );
      });
    }
  }

  Future<void> _selectFamilies() async {
    final rslt = await _select<Family>(
      stream: DatabaseService.I.families.streamAll(),
      selected: stagingMapOptions.selectedFamilies.toList(),
      title: 'اختيار العائلات',
      entityType: AnalyticsEntityType.family,
    );

    if (rslt != null && mounted) {
      setState(() {
        stagingMapOptions = stagingMapOptions.copyWith(
          selectedFamilies: rslt.toSet(),
        );
      });
    }
  }

  Future<void> _selectStreets() async {
    final rslt = await _select<Street>(
      stream: DatabaseService.I.streets.streamAll(),
      selected: stagingMapOptions.selectedStreets.toList(),
      title: 'اختيار الشوارع',
      entityType: AnalyticsEntityType.street,
    );

    if (rslt != null && mounted) {
      setState(() {
        stagingMapOptions = stagingMapOptions.copyWith(
          selectedStreets: rslt.toSet(),
        );
      });
    }
  }

  Future<void> _selectAreas() async {
    final rslt = await _select<Area>(
      stream: DatabaseService.I.areas.streamAll(),
      selected: stagingMapOptions.selectedAreas.toList(),
      title: 'اختيار المناطق',
      entityType: AnalyticsEntityType.area,
    );

    if (rslt != null && mounted) {
      setState(() {
        stagingMapOptions = stagingMapOptions.copyWith(
          selectedAreas: rslt.toSet(),
        );
      });
    }
  }

  Future<List<T>?> _select<T extends ViewableWithID>({
    required PaginatableStreamBase<T> stream,
    required List<T> selected,
    required String title,
    required AnalyticsEntityType entityType,
  }) async {
    final search = BehaviorSubject<String?>.seeded(null);

    final controller = ViewableObjectListController<T>(
      objectsPaginatableStream: stream,
      filterStream: search.map((s) => s ?? ''),
    );
    final selection = ListSelectionCubit.alwaysActive(selected);

    final rslt = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: TitleSearchField(
              searchStream: search,
              title: Text(title),
            ),
            actions: [
              SelectAllOrNoneButton(
                selection: selection,
                list: controller,
              ),
              IconButton(
                icon: const Icon(Symbols.done),
                onPressed: () => Navigator.of(context).pop(true),
                tooltip: 'تم',
              ),
            ],
          ),
          body: ViewableObjectList(
            objectsController: controller,
            selection: selection,
          ),
        ),
      ),
    );

    if (rslt == true) {
      final confirmedSelection = selection.state.selectedOfType<T>().toList();
      unawaited(selection.close());
      AnalyticsService.I.track(
        MapsDataSelect(entityType, selectedCount: confirmedSelection.length),
      );
      unawaited(
        controller.dispose().then((_) async {
          if (search.isClosed) return;

          await search.close();
        }),
      );

      return confirmedSelection;
    }
    await selection.close();
    await controller.dispose().then((_) async {
      if (search.isClosed) return;

      await search.close();
    });

    return null;
  }
}
