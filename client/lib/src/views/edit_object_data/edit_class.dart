import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

class EditClass extends StatefulWidget {
  static final route = GoRoute(
    path: 'editClass',
    builder: (context, state) {
      return EditClass(
        class$: (state.extra as Map?)?['class'] as Class?,
        service: (state.extra as Map?)?['service'] as Service?,
      );
    },
  );

  final Class? class$;
  final Service? service;

  const EditClass({
    required this.class$,
    required this.service,
    super.key,
  });

  @override
  State<EditClass> createState() => _EditClassState();
}

class _EditClassState extends State<EditClass> {
  late final EditObjectController<Class> _controller = EditObjectController(
    onCreate: (object) =>
        DatabaseService.I.classes.createObject(newObject: object),
    onUpdate: (oldClass, newClass) => DatabaseService.I.classes.updateObject(
      oldObject: oldClass,
      newObject: newClass,
    ),
    onDelete: (object) => DatabaseService.I.classes.deleteById(id: object.id),
    toJson: (object) => object.toJson(),
    newObject: widget.class$ ??
        Class(
          id: const Uuid().v4(),
          name: 'فصل جديد',
          service: widget.service,
          serviceId: widget.service?.id,
        ),
    initialObject: widget.class$,
  );

  Class get initialClass => _controller.initialObject!;
  Class get newClass => _controller.newObject;
  set newClass(Class a) => _controller.newObject = a;

  @override
  Widget build(BuildContext context) {
    return EditObjectData(
      objectData: widget.class$,
      getController: () => _controller,
      objectOnEmptyPhoto: Class(id: '', name: ''),
      builder: (context, _controller) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          NameField(
            initialValue: newClass.name,
            onValueChanged: (value) => newClass = newClass.copyWith(
              name: value.trim(),
            ),
            padding: const EdgeInsets.symmetric(vertical: 8),
          ),
          ObjectSelectionField<Service, Service?>(
            decoration: const InputDecoration(errorMaxLines: 2),
            initialValue: newClass.service,
            listController: (s) => ViewableObjectListController(
              objectsPaginatableStream:
                  DatabaseService.I.services.streamAll(searchQuery: s),
            ),
            labelText: 'الخدمة',
            onChanged: (value) => newClass = newClass.copyWith(
              service: value,
              serviceId: value?.id,
            ),
            validator: (value) => value == null ? 'يجب اختيار الخدمة' : null,
            builder: (context, state) {
              return state.value != null
                  ? IgnorePointer(
                      child: ViewableObjectWidget(
                        state.value!,
                        dense: true,
                      ),
                    )
                  : null;
            },
          ),
          ObjectSelectionField<StudyYear, StudyYear?>(
            initialValue: newClass.studyYear,
            listController: (s) => ViewableObjectListController(
              objectsPaginatableStream: DatabaseService.I.metadata.studyYears
                  .streamAll(searchQuery: s),
            ),
            labelText: 'السنة الدراسية',
            onChanged: (value) => newClass = newClass.copyWith(
              //Store the selected object
              //so we can build the widget based on it ...
              studyYear: value,
              //... and its id to send it in the mutation
              serviceStudyYear: value?.order,
            ),
            builder: (context, state) {
              return state.value != null ? Text(state.value!.name) : null;
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
          DropdownButtonFormField<bool>(
            decoration: const InputDecoration(
              labelText: 'النوع',
            ),
            items: const [
              DropdownMenuItem(
                child: Text('بنين وبنات'),
              ),
              DropdownMenuItem(
                value: true,
                child: Text('بنين'),
              ),
              DropdownMenuItem(
                value: false,
                child: Text('بنات'),
              ),
            ],
            onChanged: (v) {
              setState(() => newClass = newClass.copyWith(serviceGender: v));
            },
            value: newClass.serviceGender,
          ),
          ColorField(
            initialValue: newClass.color,
            onChanged: (value) => setState(
              () => newClass = newClass.copyWith(color: value),
            ),
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
