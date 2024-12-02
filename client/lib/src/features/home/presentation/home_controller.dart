import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class HomeController {
  final TickerProvider vsync;

  HomeController(this.vsync);

  final BehaviorSubject<ViewableObjectListType> servicesListTypeSubject =
      BehaviorSubject.seeded(ViewableObjectListType.grid);

  final BehaviorSubject<Type> tabTypeSubject = BehaviorSubject.seeded(Service);

  final BehaviorSubject<HomeMode> _modeSubject =
      BehaviorSubject.seeded(HomeMode.unspecified);

  Stream<HomeMode> get modeStream => _modeSubject.stream;

  TabController? _tabController;

  /// [TabController] for current [HomeMode].
  TabController? get tabController => _tabController;

  Animation<double>? get tabAnimation => _tabController?.animation;

  final Map<Type, ViewableObjectListController> _initializedControllers = {};
  final List<Timer> _timers = [];

  HomeMode get currentMode => _modeSubject.value;

  List<Type> get currentTypes => _typesForMode(currentMode);

  List<Type> _typesForMode(HomeMode currentMode) {
    return switch (currentMode) {
      HomeMode.sundaySchool => [Service, Person],
      HomeMode.churchData => [Area, Street, Family, Store, Person],
      _ => [],
    };
  }

  void switchHomeMode() {
    final newValue = switch (currentMode) {
      HomeMode.churchData => HomeMode.sundaySchool,
      HomeMode.sundaySchool => HomeMode.churchData,
      _ => HomeMode.unspecified,
    };

    onModeChanged(newValue);
  }

  void onModeChanged(HomeMode newValue) {
    assert(newValue != HomeMode.unspecified);

    final oldTabController = _tabController;

    final newTypes = _typesForMode(newValue);
    final newIndex = tabTypeSubject.value == Person
        ? newTypes.indexOf(tabTypeSubject.value)
        : 0;

    _tabController = TabController(
      vsync: vsync,
      length: newTypes.length,
      initialIndex: newIndex,
    )..addListener(() => onTabIndexChanged(_tabController!.index));

    _modeSubject.add(newValue);

    onTabIndexChanged(newIndex);
    oldTabController?.dispose();
  }

  void onTabIndexChanged(int value) {
    _tabController?.animateTo(value);
    tabTypeSubject.add(currentTypes[value]);
  }

  ViewableObjectListController<Area> get areasController =>
      _putControllerIfAbsentUsing<Area>(DatabaseService.I.areas.streamAll);

  ViewableObjectListController<Service> get servicesController =>
      _putControllerIfAbsentUsing<Service>(
        DatabaseService.I.services.streamAll,
      );

  ViewableObjectListController<Street> get streetsController =>
      _putControllerIfAbsentUsing<Street>(DatabaseService.I.streets.streamAll);

  ViewableObjectListController<Family> get familiesController =>
      _putControllerIfAbsentUsing<Family>(DatabaseService.I.families.streamAll);

  ViewableObjectListController<Store> get storesController =>
      _putControllerIfAbsentUsing<Store>(DatabaseService.I.stores.streamAll);

  ViewableObjectListController<Person> get personsController =>
      _putControllerIfAbsentUsing<Person>(DatabaseService.I.persons.streamAll);

  ViewableObjectListController<T>
      _putControllerIfAbsentUsing<T extends Viewable>(
    GQLPaginatableStream<T> Function() paginatableStreamFactory,
  ) {
    return _initializedControllers.putIfAbsent(
      T,
      () => ViewableObjectListController<T>(
        objectsPaginatableStream: paginatableStreamFactory(),
      ),
    ) as ViewableObjectListController<T>;
  }

  void dispose() {
    servicesListTypeSubject.close();
    tabTypeSubject.close();
    _modeSubject.close();

    _tabController?.dispose();

    for (final c in _initializedControllers.values) {
      c.dispose();
    }

    for (final t in _timers) {
      t.cancel();
    }
  }
}
