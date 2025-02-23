import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class EditGroup extends StatefulWidget {
  final Group? group;
  final Service? service;

  const EditGroup({
    required this.group,
    required this.service,
    super.key,
  });

  @override
  State<EditGroup> createState() => _EditGroupState();
}

class _EditGroupState extends State<EditGroup> {
  late final EditObjectController<Group> _controller;

  @override
  void initState() {
    super.initState();

    final Group? oldGroup = widget.group?.copyWith(
      serviceId: widget.service?.id,
    );

    _controller = EditObjectController(
      onCreate: (object) =>
          DatabaseService.I.groups.createObject(newObject: object),
      onUpdate: (oldGroup, newGroup) => DatabaseService.I.groups.updateObject(
        oldObject: oldGroup,
        newObject: newGroup,
      ),
      onDelete: (object) => DatabaseService.I.groups.deleteById(id: object.id),
      toJson: (object) => object.toJson(),
      newObject: oldGroup ??
          Group(
            id: const Uuid().v4(),
            name: 'مجموعة جديدة',
            service: widget.service,
            serviceId: widget.service?.id,
          ),
      initialObject: oldGroup,
    );
  }

  Group get initialGroup => _controller.initialObject!;
  Group get newGroup => _controller.newObject;
  set newGroup(Group a) => _controller.newObject = a;

  @override
  Widget build(BuildContext context) {
    return EditObjectData(
      objectData: widget.group,
      getController: () => _controller,
      builder: (context, controller) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          NameField(
            initialValue: newGroup.name,
            onValueChanged: (value) => newGroup = newGroup.copyWith(
              name: value.trim(),
            ),
            padding: const EdgeInsets.symmetric(vertical: 8),
          ),
          ObjectSelectionField<Service, Service?>(
            decoration: const InputDecoration(errorMaxLines: 2),
            initialValue: newGroup.service,
            listController: (s) => ViewableObjectListController(
              objectsPaginatableStream:
                  DatabaseService.I.services.streamAll(searchQuery: s),
            ),
            dialogFieldLabel: 'الخدمة',
            onChanged: (value) => newGroup = newGroup.copyWith(
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
          DateTimeRangeField(
            label: 'الصلاحية',
            initialValue: newGroup.validity,
            startFirstDate: DateTime.now(),
            nullable: true,
            onChanged: (value) => newGroup = newGroup.copyWith(validity: value),
          ),
          ColorField(
            initialValue: newGroup.color,
            onChanged: (value) => setState(
              () => newGroup = newGroup.copyWith(color: value),
            ),
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
