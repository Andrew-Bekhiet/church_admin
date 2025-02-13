import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:uuid/uuid.dart';

class EditService extends StatefulWidget {
  final Service? service;

  const EditService({
    required this.service,
    super.key,
  });

  @override
  State<EditService> createState() => _EditServiceState();
}

class _EditServiceState extends State<EditService> {
  late final EditObjectController<Service> _controller;

  @override
  void initState() {
    super.initState();
    final Service? _oldService = widget.service?.copyWith(
      nextServiceId: widget.service?.nextService?.id,
      studyYearFromId: widget.service?.studyYearFrom?.order,
      studyYearToId: widget.service?.studyYearTo?.order,
    );

    _controller = EditObjectController(
      onCreate: (object) =>
          DatabaseService.I.services.createObject(newObject: object),
      onUpdate: (oldService, newService) =>
          DatabaseService.I.services.updateObject(
        oldObject: oldService,
        newObject: newService,
      ),
      onDelete: (object) =>
          DatabaseService.I.services.deleteById(id: object.id),
      toJson: (object) => object.toJson(),
      newObject: _oldService ??
          Service(
            id: const Uuid().v4(),
            name: 'خدمة جديدة',
          ),
      initialObject: _oldService,
    );
  }

  Service get initialService => _controller.initialObject!;
  Service get newService => _controller.newObject;
  set newService(Service a) => _controller.newObject = a;

  @override
  Widget build(BuildContext context) {
    return EditObjectData(
      objectData: widget.service,
      getController: () => _controller,
      builder: (context, _controller) => Column(
        spacing: 24,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          NameField(
            hintText: 'اسم الخدمة',
            onValueChanged: (value) => newService = newService.copyWith(
              name: value.trim(),
            ),
            padding: const EdgeInsets.symmetric(vertical: 8),
          ),
          ObjectSelectionField<Service, Service?>(
            decoration: InputDecoration(
              hintText: 'الخدمة التالية',
              hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.outline,
                  ),
              errorMaxLines: 2,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              floatingLabelStyle:
                  Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.primaryContainer,
                      ),
              border: outLineInputBorder(context),
              enabledBorder: outLineInputBorder(context),
              focusedBorder: outLineInputBorder(context),
            ),
            initialValue: newService.nextService,
            listController: (s) => ViewableObjectListController(
              objectsPaginatableStream:
                  DatabaseService.I.services.streamAll(searchQuery: s),
            ),
            labelText: 'الخدمة التالية',
            onChanged: (value) => newService = newService.copyWith(
              nextService: value,
              nextServiceId: value?.id,
            ),
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
          StudyYearRangeField(
            decoration: InputDecoration(
              border: outLineInputBorder(context),
              enabledBorder: outLineInputBorder(context),
              focusedBorder: outLineInputBorder(context),
            ),
            label: 'السنوات الدراسية',
            initialValue: (newService.studyYearFrom, newService.studyYearTo),
            nullable: true,
            onChanged: (value) => newService = newService.copyWith(
              studyYearFrom: value?.$1,
              studyYearTo: value?.$2,
              studyYearFromId: value?.$1?.order,
              studyYearToId: value?.$2?.order,
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (v) {
              if (v != null) {
                if (v.$1 == null || v.$2 == null) {
                  return 'برجاء ادخال السنتين الدراسيتين';
                } else if (v.$1!.order > v.$2!.order) {
                  return 'السنة الدراسية الأولى لا يمكن أن تكون أكبر من الثانية';
                }
              }
              return null;
            },
          ),
          ColorField(
            initialValue: newService.color,
            onChanged: (value) => setState(
              () => newService = newService.copyWith(color: value),
            ),
          ),
          Row(
            spacing: 16,
            children: [
              Expanded(
                child: FilledButton.icon(
                  icon: const Icon(Symbols.save),
                  label: Text(
                    'حــفــظ',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                  ),
                  onPressed: () => _controller.save(context),
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    backgroundColor: WidgetStateProperty.all(
                      Theme.of(context).colorScheme.primaryContainer,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FilledButton.icon(
                  icon: const Icon(Symbols.cancel_rounded),
                  label: Text(
                    'الــــغـــــاء',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                  ),
                  onPressed: () {
                    _controller.confirmExit(context).then(
                      (value) {
                        if (value) {
                          Navigator.of(context).pop();
                        }
                      },
                    );
                  },
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    backgroundColor: WidgetStateProperty.all(
                      Theme.of(context).colorScheme.primaryContainer,
                    ),
                  ),
                ),
              ),
            ],
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
