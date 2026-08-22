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

    final Class? oldClass = widget.class$?.copyWith(
      serviceId: widget.withService?.id,
      serviceStudyYear: widget.class$?.studyYear?.order,
    );

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
          ObjectSelectionField<StudyYear, StudyYear?>(
            initialValue: newClass.studyYear,
            listController: (s) => ViewableObjectListController(
              objectsPaginatableStream: DatabaseService.I.metadata.studyYears
                  .streamAll(searchQuery: s),
            ),
            dialogFieldLabel: 'السنة الدراسية',
            onChanged: (value) => newClass = newClass.copyWith(
              studyYear: value,
              serviceStudyYear: value?.order,
            ),
            builder: (context, state) => switch (state.value) {
              final studyYear? => Text(studyYear.name),
              null => null,
            },
            validator: (value) {
              if (value == null) {
                return 'يجب اختيار السنة الدراسية';
              } else if (newClass.service != null &&
                  (value.order < newClass.service!.studyYearFrom!.order ||
                      value.order > newClass.service!.studyYearTo!.order)) {
                return 'السنة الدراسية يجب ان تكون بين '
                    '${newClass.service!.studyYearFrom!.name} و${newClass.service!.studyYearTo!.name}';
              }

              return null;
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
