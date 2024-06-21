import 'dart:async';

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
    return ViewableObjectGrid(
      itemsExpandable: true,
      objectsController: listController,
      itemBuilder: _buildServiceCard,
    );
  }

  Widget _buildServiceCard(
    BuildContext context,
    Service s,
    ViewableObjectWidgetConfig? config,
  ) {
    return Card(
      elevation: 3,
      color: Theme.of(context).colorScheme.secondaryContainer,
      child: InkWell(
        onLongPress:
            config?.onLongPress != null ? () => config!.onLongPress!(s) : null,
        onTap: config?.onTap != null ? () => config!.onTap!(s) : null,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: IgnorePointer(
                  child: ImageObjectWidget(
                    s,
                    circleCrop: false,
                    size: 160,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(s.name, textAlign: TextAlign.center),
            ],
          ),
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
