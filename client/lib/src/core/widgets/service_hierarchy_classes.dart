import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class ServiceHierarchyClasses extends StatelessWidget {
  final Service service;
  final double animationValue;
  final StudyYearBuilder? studyYearBuilder;
  final ClassBuilder? classBuilder;

  const ServiceHierarchyClasses({
    required this.animationValue,
    required this.service,
    this.studyYearBuilder,
    this.classBuilder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (final MapEntry(key: (studyYear, studyYearTo), value: classes)
            in service.classes
                    ?.groupListsBy((c) => (c.studyYear!, c.studyYearToOrder))
                    .entries ??
                <(StudyYear, int?), List<Class>>{}.entries)
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
                    color: ColorScheme.of(context).secondaryContainer,
                    child: ExpansionTile(
                      key: PageStorageKey((studyYear, studyYearTo)),
                      title: SessionReplayUnmask(
                        child: Text(
                          classes.first.studyYearRangeName ?? studyYear.name,
                        ),
                      ),
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
