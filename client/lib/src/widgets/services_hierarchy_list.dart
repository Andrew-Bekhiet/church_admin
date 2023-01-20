import 'dart:async';
import 'dart:math';

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
            DatabaseService.I.services.paginateServices(searchQuery: search),
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
    Service s,
    ViewableObjectWidgetConfig? config,
  ) {
    final _topController = _animationControllers[s] ??= AnimationController(
      duration: const Duration(milliseconds: 225),
      vsync: this,
    );

    return AnimatedBuilder(
      animation: _topController.drive(
        Tween(begin: 0, end: 1).chain(
          CurveTween(curve: Curves.easeIn),
        ),
      ),
      builder: (contex, child) => Card(
        elevation: _topController.value * 3,
        child: ExpansionTile(
          key: PageStorageKey(s),
          leading: ImageObjectWidget(
            s,
            circleCrop: false,
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Transform.rotate(
                angle: _topController.value * pi,
                child: const Icon(Icons.expand_more),
              ),
              if (widget.serviceTrailingBuilder != null)
                widget.serviceTrailingBuilder!(
                  context,
                  s,
                  onLongPress: config?.onLongPress,
                  onTap: config?.onTap,
                  trailing: config?.trailing,
                ),
            ],
          ),
          onExpansionChanged: (e) =>
              e ? _topController.forward() : _topController.animateBack(0),
          expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
          maintainState: true,
          title: GestureDetector(
            onLongPress: config?.onLongPress != null
                ? () => config!.onLongPress!(s)
                : null,
            child: Text(s.name),
          ),
          children: [
            if (widget.showClasses)
              _Classes(
                service: s,
                topController: _topController,
                classBuilder: widget.classBuilder,
                studyYearBuilder: widget.studyYearBuilder,
              ),
            if (widget.showClasses &&
                widget.showGroups &&
                s.fromStudyYear != null &&
                s.toStudyYear != null &&
                s.toStudyYear!.order - s.fromStudyYear!.order >= 1 &&
                (s.groups?.isNotEmpty ?? false))
              const Divider(),
            if (widget.showGroups)
              _Groups(
                service: s,
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
        for (final sc
            in service.classes?.groupListsBy((c) => c.studyYear!).entries ??
                <StudyYear, List<Class>>{}.entries)
          if (sc.value.length > 1)
            Padding(
              padding: EdgeInsets.only(right: topController.value * 20),
              child: studyYearBuilder?.call(
                    context,
                    service: service,
                    studyYear: sc.key,
                  ) ??
                  Card(
                    elevation: 0,
                    child: ExpansionTile(
                      key: PageStorageKey(sc.key),
                      title: Text(sc.key.name),
                      expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
                      maintainState: true,
                      children: [
                        for (final c in sc.value)
                          Padding(
                            padding: EdgeInsets.only(
                              right: topController.value * 20,
                            ),
                            child: classBuilder?.call(
                                  context,
                                  studyYear: sc.key,
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
                                  dense: true,
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
                    studyYear: sc.key,
                    $class: sc.value.single,
                  ) ??
                  ViewableObjectWidget(
                    sc.value.single,
                    photo: ImageObjectWidget(
                      sc.value.single,
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
