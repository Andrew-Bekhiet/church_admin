import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/widgets/save_and_cancel_buttons.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class EditClass extends StatefulWidget {
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
  late final EditObjectController<Class> _controller;

  @override
  void initState() {
    super.initState();

    final Class? _oldClass = widget.class$?.copyWith(
      serviceId: widget.service?.id,
      serviceStudyYear: widget.class$?.studyYear?.order,
    );

    _controller = EditObjectController(
      onCreate: (object) =>
          DatabaseService.I.classes.createObject(newObject: object),
      onUpdate: (oldClass, newClass) => DatabaseService.I.classes.updateObject(
        oldObject: oldClass,
        newObject: newClass,
      ),
      onDelete: (object) => DatabaseService.I.classes.deleteById(id: object.id),
      toJson: (object) => object.toJson(),
      newObject: _oldClass ??
          Class(
            id: const Uuid().v4(),
            name: 'اضافة فصل',
            service: widget.service,
            serviceId: widget.service?.id,
          ),
      initialObject: _oldClass,
    );
  }

  Class get initialClass => _controller.initialObject!;
  Class get newClass => _controller.newObject;
  set newClass(Class a) => _controller.newObject = a;

  @override
  Widget build(BuildContext context) {
    return EditObjectData(
      objectData: widget.class$,
      getController: () => _controller,
      builder: (context, _controller) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 24,
        children: [
          NameField(
            hintText: 'اسم الفصل',
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
            decoration: InputDecoration(
              errorMaxLines: 2,
              labelText: 'الخدمة الحالية',
              hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.outline,
                  ),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              floatingLabelStyle:
                  Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.primaryContainer,
                      ),
              border: outLineInputBorder(context),
              enabledBorder: outLineInputBorder(context),
              focusedBorder: outLineInputBorder(context),
            ),
            initialValue: newClass.service,
            listController: (s) => ViewableObjectListController(
              objectsPaginatableStream:
                  DatabaseService.I.services.streamAll(searchQuery: s),
            ),
            labelText: 'الخدمة الحالية',
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
                        isDense: true,
                      ),
                    )
                  : null;
            },
          ),
          // ObjectSelectionField<StudyYear, StudyYear?>(
          //   initialValue: newClass.studyYear,
          //   listController: (s) => ViewableObjectListController(
          //     objectsPaginatableStream: DatabaseService.I.metadata.studyYears
          //         .streamAll(searchQuery: s),
          //   ),
          //   labelText: 'السنة الدراسية',
          //   onChanged: (value) => newClass = newClass.copyWith(
          //     //Store the selected object
          //     //so we can build the widget based on it ...
          //     studyYear: value,
          //     //... and its id to send it in the mutation
          //     serviceStudyYear: value?.order,
          //   ),
          //   builder: (context, state) {
          //     return state.value != null ? Text(state.value!.name) : null;
          //   },
          //   validator: (value) {
          //     if (value == null) {
          //       return 'يجب اختيار السنة الدراسية';
          //     } else if (newClass.service != null &&
          //         (value.order < newClass.service!.studyYearFrom!.order ||
          //             value.order > newClass.service!.studyYearTo!.order)) {
          //       return 'السنة الدراسية يجب ان تكون بين '
          //           '${newClass.service!.studyYearFrom!.name} و${newClass.service!.studyYearTo!.name}';
          //     }
          //     return null;
          //   },
          // ),
          ColorField(
            initialValue: newClass.color,
            onChanged: (value) => setState(
              () => newClass = newClass.copyWith(color: value),
            ),
          ),
          SaveAndCancelButtonRow(
            onSave: () => _controller.save(context),
            onCancel: () {
              _controller.confirmExit(context).then(
                (value) {
                  if (value) {
                    Navigator.of(context).pop();
                  }
                },
              );
            },
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }

  OutlineInputBorder outLineInputBorder(BuildContext context) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
      borderSide: BorderSide(
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
    );
  }
}
