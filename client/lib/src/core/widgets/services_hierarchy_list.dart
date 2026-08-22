import 'dart:async';
import 'dart:math' as math;

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

typedef ServiceTrailingBuilder =
    Widget Function(
      BuildContext,
      Service, {
      void Function(Service)? onLongPress,
      void Function(Service)? onTap,
      Widget? trailing,
    });

typedef StudyYearBuilder =
    Widget Function(
      BuildContext, {
      required Service service,
      required StudyYear studyYear,
    });

typedef GroupBuilder =
    Widget Function(
      BuildContext, {
      required Service service,
      required Group group,
    });

typedef ClassBuilder =
    Widget Function(
      BuildContext, {
      required Service service,
      required Class $class,
      required StudyYear studyYear,
    });

class ServicesHierarchyList extends StatefulWidget {
  final bool showClasses;
  final bool showGroups;

  final ServiceTrailingBuilder? serviceTrailingBuilder;

  final StudyYearBuilder? studyYearBuilder;

  final GroupBuilder? groupBuilder;

  final ClassBuilder? classBuilder;

  final ViewableObjectListController<Service> listController;
  final ViewableObjectListType? type;

  const ServicesHierarchyList({
    required this.listController,
    this.showClasses = true,
    this.showGroups = true,
    this.serviceTrailingBuilder,
    this.studyYearBuilder,
    this.classBuilder,
    this.groupBuilder,
    this.type,
    super.key,
  }) : assert(showClasses || showGroups);

  @override
  State<ServicesHierarchyList> createState() => _ServicesHierarchyListState();
}

class _ServicesHierarchyListState extends State<ServicesHierarchyList>
    with TickerProviderStateMixin {
  final _animationControllers = <Object, AnimationController>{};

  @override
  Widget build(BuildContext context) {
    final listType = widget.type ?? ViewableObjectListType.list;

    return ViewableObjectList(
      type: listType,
      addSeparator: false,
      itemsExpandable: true,
      objectsController: widget.listController,
      itemBuilder:
          listType == ViewableObjectListType.grid ||
              listType == ViewableObjectListType.grid3
          ? (
              BuildContext context,
              Service service,
              ViewableObjectWidgetConfig<Service>? config,
            ) => _ServiceCard(service: service, config: config)
          : (
              BuildContext context,
              Service service,
              ViewableObjectWidgetConfig<Service>? config,
            ) => _HierarchyServiceTile(
              service: service,
              config: config,
              controllers: _animationControllers,
              vsync: this,
              showClasses: widget.showClasses,
              showGroups: widget.showGroups,
              serviceTrailingBuilder: widget.serviceTrailingBuilder,
              classBuilder: widget.classBuilder,
              studyYearBuilder: widget.studyYearBuilder,
              groupBuilder: widget.groupBuilder,
            ),
    );
  }

  @override
  Future<void> dispose() async {
    for (final c in _animationControllers.values) {
      c.dispose();
    }

    super.dispose();
  }
}

class _ServiceCard extends StatelessWidget {
  final Service service;
  final ViewableObjectWidgetConfig<Service>? config;

  const _ServiceCard({required this.service, required this.config});

  @override
  Widget build(BuildContext context) {
    return ViewableObjectCard(
      service,
      title: Text(
        service.name,
        style: Theme.of(context).textTheme.headlineMedium,
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      config: config,
      size: null,
    );
  }
}

class _HierarchyServiceTile extends StatelessWidget {
  final Service service;
  final ViewableObjectWidgetConfig<Service>? config;
  final Map<Object, AnimationController> controllers;
  final TickerProvider vsync;
  final bool showClasses;
  final bool showGroups;
  final ServiceTrailingBuilder? serviceTrailingBuilder;
  final ClassBuilder? classBuilder;
  final StudyYearBuilder? studyYearBuilder;
  final GroupBuilder? groupBuilder;

  const _HierarchyServiceTile({
    required this.service,
    required this.config,
    required this.controllers,
    required this.vsync,
    required this.showClasses,
    required this.showGroups,
    this.serviceTrailingBuilder,
    this.classBuilder,
    this.studyYearBuilder,
    this.groupBuilder,
  });

  @override
  Widget build(BuildContext context) {
    final topController = controllers[service] ??= AnimationController(
      duration: const Duration(milliseconds: 225),
      vsync: vsync,
    );

    return AnimatedBuilder(
      animation: topController.drive(
        Tween(begin: 0, end: 1).chain(
          CurveTween(curve: Curves.easeIn),
        ),
      ),
      builder: (context, child) => Card.filled(
        elevation: topController.value * 3,
        child: ExpansionTile(
          key: PageStorageKey(service),
          leading: ImageObjectWidget(
            service,
            circleCrop: false,
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Transform.rotate(
                angle: topController.value * math.pi,
                child: const Icon(Symbols.expand_more),
              ),
              if (serviceTrailingBuilder != null)
                serviceTrailingBuilder!(
                  context,
                  service,
                  onLongPress: config?.onLongPress,
                  onTap: config?.onTap,
                  trailing: config?.trailing,
                ),
            ],
          ),
          onExpansionChanged: (e) async {
            if (e) {
              await topController.forward();
            } else {
              await topController.animateBack(0);
            }
          },
          expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
          maintainState: true,
          title: GestureDetector(
            onLongPress: config?.onLongPress != null
                ? () => config!.onLongPress!(service)
                : null,
            child: Text(service.name),
          ),
          children: [
            if (showClasses)
              _Classes(
                service: service,
                animationValue: topController.value,
                classBuilder: classBuilder,
                studyYearBuilder: studyYearBuilder,
              ),
            if (showClasses &&
                showGroups &&
                service.studyYearFrom != null &&
                service.studyYearTo != null &&
                service.studyYearTo!.order - service.studyYearFrom!.order >=
                    1 &&
                (service.groups?.isNotEmpty ?? false))
              const Divider(),
            if (showGroups)
              _Groups(
                service: service,
                animationValue: topController.value,
                groupBuilder: groupBuilder,
              ),
          ],
        ),
      ),
    );
  }
}

class _Classes extends StatelessWidget {
  final Service service;
  final double animationValue;

  final StudyYearBuilder? studyYearBuilder;

  final ClassBuilder? classBuilder;

  const _Classes({
    required this.animationValue,
    required this.service,
    this.studyYearBuilder,
    this.classBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (final MapEntry(key: studyYear, value: classes)
            in service.classes?.groupListsBy((c) => c.studyYear!).entries ??
                <StudyYear, List<Class>>{}.entries)
          if (classes.length > 1)
            Padding(
              padding: EdgeInsets.only(right: animationValue * 20),
              child:
                  studyYearBuilder?.call(
                    context,
                    service: service,
                    studyYear: studyYear,
                  ) ??
                  Card.outlined(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    child: ExpansionTile(
                      key: PageStorageKey(studyYear),
                      title: Text(studyYear.name),
                      expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
                      maintainState: true,
                      children: [
                        for (final c in classes)
                          Padding(
                            padding: EdgeInsets.only(
                              right: animationValue * 20,
                            ),
                            child:
                                classBuilder?.call(
                                  context,
                                  studyYear: studyYear,
                                  service: service,
                                  $class: c,
                                ) ??
                                ViewableObjectWidget(
                                  c,
                                  photo: ImageObjectWidget(
                                    c,
                                    circleCrop: false,
                                  ),
                                  forceShowSecondLine: false,
                                  wrapInCard: false,
                                  isDense: true,
                                ),
                          ),
                      ],
                    ),
                  ),
            )
          else
            Padding(
              padding: EdgeInsets.only(right: animationValue * 20),
              child:
                  classBuilder?.call(
                    context,
                    service: service,
                    studyYear: studyYear,
                    $class: classes.single,
                  ) ??
                  ViewableObjectWidget(
                    classes.single,
                    photo: ImageObjectWidget(
                      classes.single,
                      circleCrop: false,
                    ),
                    forceShowSecondLine: false,
                    wrapInCard: false,
                  ),
            ),
      ],
    );
  }
}

class _Groups extends StatelessWidget {
  final Service service;
  final GroupBuilder? groupBuilder;
  final double animationValue;

  const _Groups({
    required this.animationValue,
    required this.service,
    this.groupBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (final g in service.groups ?? <Group>[])
          Padding(
            padding: EdgeInsets.only(right: animationValue * 20),
            child:
                groupBuilder?.call(context, group: g, service: service) ??
                ViewableObjectWidget(
                  g,
                  photo: ImageObjectWidget(
                    g,
                    circleCrop: false,
                  ),
                  forceShowSecondLine: false,
                  wrapInCard: false,
                ),
          ),
      ],
    );
  }
}
