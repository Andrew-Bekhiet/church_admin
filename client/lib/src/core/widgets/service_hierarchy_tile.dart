import 'dart:math' as math;

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class ServiceHierarchyTile extends StatelessWidget {
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

  const ServiceHierarchyTile({
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
    super.key,
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
          onExpansionChanged: (expanded) async {
            if (expanded) {
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
            child: SessionReplayUnmask(child: Text(service.name)),
          ),
          children: [
            if (showClasses)
              ServiceHierarchyClasses(
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
              ServiceHierarchyGroups(
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
