import 'dart:async';
import 'dart:math' as math;

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

typedef ServiceTrailingBuilder = Widget Function(
  BuildContext,
  Service, {
  void Function(Service)? onLongPress,
  void Function(Service)? onTap,
  Widget? trailing,
});

typedef StudyYearBuilder = Widget Function(
  BuildContext, {
  required Service service,
  required StudyYear studyYear,
});

typedef GroupBuilder = Widget Function(
  BuildContext, {
  required Service service,
  required Group group,
});

typedef ClassBuilder = Widget Function(
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

  final ViewableObjectListController<Service>? listController;
  final Stream<String?>? search;

  const ServicesHierarchyList({
    this.showClasses = true,
    this.showGroups = true,
    this.serviceTrailingBuilder,
    this.studyYearBuilder,
    this.classBuilder,
    this.groupBuilder,
    this.listController,
    this.search,
    super.key,
  }) : assert(showClasses || showGroups);

  @override
  State<ServicesHierarchyList> createState() => _ServicesHierarchyListState();
}

class _ServicesHierarchyListState extends State<ServicesHierarchyList>
    with TickerProviderStateMixin {
  late final search = widget.search ?? BehaviorSubject<String?>.seeded(null);
  late final listController = widget.listController ??
      ViewableObjectListController<Service>(
        objectsPaginatableStream:
            DatabaseService.I.services.streamAll(searchQuery: search),
      );

  final _animationControllers = <Object, AnimationController>{};

  @override
  Widget build(BuildContext context) {
    return ViewableObjectList(
      itemsExpandable: true,
      objectsController: listController,
      itemBuilder: _buildServiceTile,
    );
  }

  Widget _buildServiceTile(
    BuildContext context,
    Service service,
    ViewableObjectWidgetConfig? config,
  ) {
    final value = PageStorage.maybeOf(context)?.readState(
      context,
      identifier: 'ServicesAnimationControllers:' + service.id,
    );
    final _topController =
        _animationControllers[service] ??= AnimationController(
      duration: const Duration(milliseconds: 225),
      vsync: this,
      value: value,
    );

    return AnimatedBuilder(
      animation: _topController.drive(
        Tween(begin: 0, end: 1).chain(
          CurveTween(curve: Curves.easeIn),
        ),
      ),
      builder: (context, child) => Card.filled(
        elevation: _topController.value * 3,
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
                angle: _topController.value * math.pi,
                child: const Icon(Icons.expand_more),
              ),
              if (widget.serviceTrailingBuilder != null)
                widget.serviceTrailingBuilder!(
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
              await _topController.forward();
            } else {
              await _topController.animateBack(0);
            }

            if (context.mounted) {
              PageStorage.maybeOf(context)?.writeState(
                context,
                _animationControllers[service]!.value,
                identifier: 'ServicesAnimationControllers:' + service.id,
              );
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
            if (widget.showClasses)
              _Classes(
                service: service,
                topController: _topController,
                classBuilder: widget.classBuilder,
                studyYearBuilder: widget.studyYearBuilder,
              ),
            if (widget.showClasses &&
                widget.showGroups &&
                service.studyYearFrom != null &&
                service.studyYearTo != null &&
                service.studyYearTo!.order - service.studyYearFrom!.order >=
                    1 &&
                (service.groups?.isNotEmpty ?? false))
              const Divider(),
            if (widget.showGroups)
              _Groups(
                service: service,
                topController: _topController,
                groupBuilder: widget.groupBuilder,
              ),
          ],
        ),
      ),
    );
  }

  @override
  Future<void> dispose() async {
    for (final c in _animationControllers.values) {
      c.dispose();
    }

    super.dispose();

    if (search is BehaviorSubject) {
      await (search as BehaviorSubject).close();
    }
    if (widget.listController == null) {
      await listController.dispose();
    }
  }
}

class _Classes extends StatelessWidget {
  final Service service;
  final AnimationController topController;

  final StudyYearBuilder? studyYearBuilder;

  final ClassBuilder? classBuilder;

  const _Classes({
    required this.topController,
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
              padding: EdgeInsets.only(right: topController.value * 20),
              child: studyYearBuilder?.call(
                    context,
                    service: service,
                    studyYear: studyYear,
                  ) ??
                  Card(
                    elevation: 0,
                    color: Theme.of(context).colorScheme.surface,
                    child: ExpansionTile(
                      key: PageStorageKey(studyYear),
                      title: Text(studyYear.name),
                      expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
                      maintainState: true,
                      children: [
                        for (final c in classes)
                          Padding(
                            padding: EdgeInsets.only(
                              right: topController.value * 20,
                            ),
                            child: classBuilder?.call(
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
              padding: EdgeInsets.only(right: topController.value * 20),
              child: classBuilder?.call(
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
  final AnimationController topController;

  const _Groups({
    required this.topController,
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
            padding: EdgeInsets.only(right: topController.value * 20),
            child: groupBuilder?.call(context, group: g, service: service) ??
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
