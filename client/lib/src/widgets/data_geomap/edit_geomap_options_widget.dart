import 'dart:async';

import 'package:church_admin/church_admin.dart' hide Polygon;
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class EditGeomapOptionsWidget extends StatefulWidget {
  const EditGeomapOptionsWidget({
    required this.mapOptions,
    required this.sheetScrollController,
    required this.apply,
    super.key,
  });

  final GeomapOptions mapOptions;
  final ScrollController sheetScrollController;
  final void Function(GeomapOptions) apply;

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
                    ? () => widget.apply(stagingMapOptions)
                    : null,
                icon: const Icon(Icons.done),
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
                ListTile(
                  title: const Text('المناطق'),
                  subtitle: stagingMapOptions.selectedAreas.isEmpty
                      ? const Text('الكل')
                      : Text(
                          stagingMapOptions.selectedAreas
                              .take(10)
                              .map((e) => e.name)
                              .join(','),
                        ),
                  trailing: TextButton(
                    onPressed: _selectAreas,
                    child: const Text('اختيار'),
                  ),
                ),
                ListTile(
                  title: const Text('الشوارع'),
                  subtitle: stagingMapOptions.selectedStreets.isEmpty
                      ? const Text('الكل')
                      : Text(
                          stagingMapOptions.selectedStreets
                              .take(10)
                              .map((e) => e.name)
                              .join(','),
                        ),
                  trailing: TextButton(
                    onPressed: _selectStreets,
                    child: const Text('اختيار'),
                  ),
                ),
                ListTile(
                  title: const Text('العائلات'),
                  subtitle: stagingMapOptions.selectedFamilies.isEmpty
                      ? const Text('الكل')
                      : Text(
                          stagingMapOptions.selectedFamilies
                              .take(10)
                              .map((e) => e.name)
                              .join(','),
                        ),
                  trailing: TextButton(
                    onPressed: _selectFamilies,
                    child: const Text('اختيار'),
                  ),
                ),
                ListTile(
                  title: const Text('المتاجر'),
                  subtitle: stagingMapOptions.selectedStores.isEmpty
                      ? const Text('الكل')
                      : Text(
                          stagingMapOptions.selectedStores
                              .take(10)
                              .map((e) => e.name)
                              .join(','),
                        ),
                  trailing: TextButton(
                    onPressed: _selectStores,
                    child: const Text('اختيار'),
                  ),
                ),
                const Divider(thickness: 1),
                ListTile(
                  title: const Text('الخدمات'),
                  subtitle: stagingMapOptions.selectedServices.isEmpty
                      ? const Text('الكل')
                      : Text(
                          stagingMapOptions.selectedServices
                              .take(10)
                              .map((e) => e.name)
                              .join(','),
                        ),
                  trailing: TextButton(
                    onPressed: _selectServices,
                    child: const Text('اختيار'),
                  ),
                ),
                ListTile(
                  title: const Text('الفصول'),
                  subtitle: stagingMapOptions.selectedClasses.isEmpty
                      ? const Text('الكل')
                      : Text(
                          stagingMapOptions.selectedClasses
                              .take(10)
                              .map((e) => e.name)
                              .join(','),
                        ),
                  trailing: TextButton(
                    onPressed: _selectClasses,
                    child: const Text('اختيار'),
                  ),
                ),
                ListTile(
                  title: const Text('المجموعات'),
                  subtitle: stagingMapOptions.selectedGroups.isEmpty
                      ? const Text('الكل')
                      : Text(
                          stagingMapOptions.selectedGroups
                              .take(10)
                              .map((e) => e.name)
                              .join(','),
                        ),
                  trailing: TextButton(
                    onPressed: _selectGroups,
                    child: const Text('اختيار'),
                  ),
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
              children: [
                CheckboxListTile(
                  title: const Text('المناطق'),
                  value: stagingMapOptions.layers.contains(GeoMapLayer.areas),
                  onChanged: _onChanged(GeoMapLayer.areas),
                ),
                CheckboxListTile(
                  title: const Text('الشوارع'),
                  value: stagingMapOptions.layers.contains(GeoMapLayer.streets),
                  onChanged: _onChanged(GeoMapLayer.streets),
                ),
                CheckboxListTile(
                  title: const Text('العائلات'),
                  value:
                      stagingMapOptions.layers.contains(GeoMapLayer.families),
                  onChanged: _onChanged(GeoMapLayer.families),
                ),
                CheckboxListTile(
                  title: const Text('المتاجر'),
                  value: stagingMapOptions.layers.contains(GeoMapLayer.stores),
                  onChanged: _onChanged(GeoMapLayer.stores),
                ),
                CheckboxListTile(
                  title: const Text('المخدومين'),
                  value: stagingMapOptions.layers.contains(GeoMapLayer.persons),
                  onChanged: _onChanged(GeoMapLayer.persons),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _selectGroups() async {
    final rslt = await _select<Group>(
      stream: DatabaseService.I.groups.streamAll(),
      selected: stagingMapOptions.selectedGroups.toList(),
      title: 'اختيار المجموعات',
    );

    if (rslt != null) {
      stagingMapOptions = stagingMapOptions.copyWith(
        selectedGroups: rslt.toSet(),
      );
      if (mounted) setState(() {});
    }
  }

  Future<void> _selectClasses() async {
    final rslt = await _select<Class>(
      stream: DatabaseService.I.classes.streamAll(),
      selected: stagingMapOptions.selectedClasses.toList(),
      title: 'اختيار الفصول',
    );

    if (rslt != null) {
      stagingMapOptions = stagingMapOptions.copyWith(
        selectedClasses: rslt.toSet(),
      );
      if (mounted) setState(() {});
    }
  }

  Future<void> _selectServices() async {
    final rslt = await _select<Service>(
      stream: DatabaseService.I.services.streamAll(),
      selected: stagingMapOptions.selectedServices.toList(),
      title: 'اختيار الخدمات',
    );

    if (rslt != null) {
      stagingMapOptions = stagingMapOptions.copyWith(
        selectedServices: rslt.toSet(),
      );
      if (mounted) setState(() {});
    }
  }

  Future<void> _selectStores() async {
    final rslt = await _select<Store>(
      stream: DatabaseService.I.stores.streamAll(),
      selected: stagingMapOptions.selectedStores.toList(),
      title: 'اختيار المتاجر',
    );

    if (rslt != null) {
      stagingMapOptions = stagingMapOptions.copyWith(
        selectedStores: rslt.toSet(),
      );
      if (mounted) setState(() {});
    }
  }

  Future<void> _selectFamilies() async {
    final rslt = await _select<Family>(
      stream: DatabaseService.I.families.streamAll(),
      selected: stagingMapOptions.selectedFamilies.toList(),
      title: 'اختيار العائلات',
    );

    if (rslt != null) {
      stagingMapOptions = stagingMapOptions.copyWith(
        selectedFamilies: rslt.toSet(),
      );
      if (mounted) setState(() {});
    }
  }

  Future<void> _selectStreets() async {
    final rslt = await _select<Street>(
      stream: DatabaseService.I.streets.streamAll(),
      selected: stagingMapOptions.selectedStreets.toList(),
      title: 'اختيار الشوارع',
    );

    if (rslt != null) {
      stagingMapOptions = stagingMapOptions.copyWith(
        selectedStreets: rslt.toSet(),
      );
      if (mounted) setState(() {});
    }
  }

  Future<void> _selectAreas() async {
    final rslt = await _select<Area>(
      stream: DatabaseService.I.areas.streamAll(),
      selected: stagingMapOptions.selectedAreas.toList(),
      title: 'اختيار المناطق',
    );

    if (rslt != null) {
      stagingMapOptions = stagingMapOptions.copyWith(
        selectedAreas: rslt.toSet(),
      );
      if (mounted) setState(() {});
    }
  }

  void Function(bool?)? _onChanged(GeoMapLayer value) =>
      stagingMapOptions.layers.length == 1 &&
              stagingMapOptions.layers.single == value
          ? null
          : (v) => setState(
                () => stagingMapOptions = stagingMapOptions.copyWith(
                  layers: v ?? false
                      ? stagingMapOptions.layers.union({value})
                      : stagingMapOptions.layers
                          .difference(<GeoMapLayer>{value}),
                ),
              );

  Future<List<T>?> _select<T extends ViewableWithID>({
    required DelegatingPaginatableStream<T> stream,
    required List<T> selected,
    required String title,
  }) async {
    final _search = BehaviorSubject<String?>.seeded(null);

    final _controller = ViewableObjectListController<T>(
      objectsPaginatableStream: stream,
      filterStream: _search.map((s) => s ?? ''),
    )..selectionController.selectAll(selected);

    final rslt = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: TitleSearchField(
              searchStream: _search,
              title: Text(title),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.select_all),
                onPressed: () => _controller.selectionController.selectAll(
                  _controller.objectsPaginatableStream.currentValue,
                ),
                tooltip: 'تحديد الكل',
              ),
              IconButton(
                icon: const Icon(Icons.check_box_outline_blank),
                onPressed: _controller.selectionController.selectNone,
                tooltip: 'تحديد لا شئ',
              ),
              IconButton(
                icon: const Icon(Icons.done),
                onPressed: () => Navigator.of(context).pop(true),
                tooltip: 'تم',
              ),
            ],
          ),
          body: ViewableObjectList(objectsController: _controller),
        ),
      ),
    );

    if (rslt == true) {
      unawaited(
        _controller.dispose().then((_) async {
          if (!_search.isClosed) await _search.close();
        }),
      );

      return _controller.selectionController.currentValue
          ?.whereType<T>()
          .toList();
    }
    await _controller.dispose().then((_) async {
      if (!_search.isClosed) await _search.close();
    });

    return null;
  }
}
