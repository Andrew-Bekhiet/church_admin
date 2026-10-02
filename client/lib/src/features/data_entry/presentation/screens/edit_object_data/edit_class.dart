import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class EditClass extends StatefulWidget {
  final Class? class$;
  final Service? withService;

  const EditClass({
    required this.class$,
    this.withService,
    super.key,
  });

  @override
  State<EditClass> createState() => _EditClassState();
}

class _EditClassState extends State<EditClass> {
  late final EditObjectController<Class> _controller;

  Class get initialClass => _controller.initialObject!;
  Class get newClass => _controller.newObject;
  set newClass(Class a) => _controller.newObject = a;

  @override
  void initState() {
    super.initState();

    final Class? oldClass = switch (widget.class$) {
      final class$? => class$.copyWith(
        serviceId: widget.withService?.id,
        serviceStudyYear: class$.studyYearFromOrder,
        studyYearTo: class$.spansStudyYearRange ? class$.studyYearTo : null,
        serviceStudyYearTo: class$.spansStudyYearRange
            ? class$.studyYearToOrder
            : null,
      ),
      null => null,
    };

    _controller = EditObjectController(
      afterCreate: (object) => ViewClassRoute(
        id: object.id,
        $extra: object,
      ).pushReplacement(context),
      onCreate: (object) =>
          DatabaseService.I.classes.createObject(newObject: object),
      onUpdate: (oldClass, newClass) => DatabaseService.I.classes.updateObject(
        oldObject: oldClass,
        newObject: newClass,
      ),
      onDelete: (object) => DatabaseService.I.classes.deleteById(id: object.id),
      toJson: (object) => object.toJson(),
      newObject:
          oldClass ??
          Class(
            id: const Uuid().v4(),
            name: '',
            service: widget.withService,
            serviceId: widget.withService?.id,
          ),
      initialObject: oldClass,
    );
  }

  @override
  Widget build(BuildContext context) {
    return EditObjectData(
      objectData: widget.class$,
      getController: () => _controller,
      builder: (context, controller) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 24,
        children: [
          NameField(
            hintText: 'اسم الفصل',
            initialValue: newClass.name,
            onValueChanged: (value) => newClass = newClass.copyWith(
              name: value.trim(),
            ),
            padding: const EdgeInsets.symmetric(vertical: 8),
          ),
          GenderField(
            nullable: true,
            maleLabel: 'بنيــن',
            femaleLabel: 'بنات',
            nullLabel: 'بنيــن و بنات ',
            initialValue: newClass.serviceGender,
            onChanged: (v) {
              setState(() => newClass = newClass.copyWith(serviceGender: v));
            },
          ),
          ObjectSelectionField<Service, Service?>(
            decoration: const InputDecoration(errorMaxLines: 2),
            dialogFieldLabel: 'الخدمة الحالية',
            initialValue: newClass.service,
            listController: (s) => ViewableObjectListController(
              objectsPaginatableStream: DatabaseService.I.services.streamAll(
                searchQuery: s,
              ),
            ),
            onChanged: (value) => newClass = newClass.copyWith(
              service: value,
              serviceId: value?.id,
            ),
            validator: (value) => value == null ? 'يجب اختيار الخدمة' : null,
            builder: (context, state) => switch (state.value) {
              final service? => ObjectSelectionPreview(service),
              null => null,
            },
          ),
          StudyYearRangeField(
            label: 'السنوات الدراسية',
            initialValue: StudyYearRange(
              from: newClass.studyYear,
              to: newClass.studyYearTo,
            ),
            onChanged: (value) => newClass = newClass.copyWith(
              studyYear: value?.from,
              serviceStudyYear: value?.from?.order,
              studyYearTo: value?.to,
              serviceStudyYearTo: value?.to?.order,
            ),
            validator: (value) => switch ((value, newClass.service)) {
              (null || StudyYearRange(from: null), _) =>
                'يجب اختيار السنة الدراسية',

              (
                StudyYearRange(
                  from: StudyYear(order: final from),
                  to: StudyYear(order: final to),
                ),
                _,
              )
                  when from > to =>
                'السنة الدراسية الأولى لا يمكن أن تكون أكبر من الثانية',

              (
                StudyYearRange(:final from?, :final to),
                Service(
                  studyYearFrom: final serviceFrom?,
                  studyYearTo: final serviceTo?,
                ),
              )
                  when from.order < serviceFrom.order ||
                      (to ?? from).order > serviceTo.order =>
                'السنة الدراسية يجب ان تكون بين '
                    '${serviceFrom.name} و${serviceTo.name}',

              _ => null,
            },
          ),
          ColorField(
            initialValue: newClass.color,
            onChanged: (value) => setState(
              () => newClass = newClass.copyWith(color: value),
            ),
          ),
        ],
      ),
    );
  }
}
