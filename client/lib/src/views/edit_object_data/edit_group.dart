import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

class EditGroup extends StatefulWidget {
  static final route = GoRoute(
    path: 'editGroup',
    builder: (context, state) {
      return EditGroup(
        group: (state.extra as Map?)?['group'] as Group?,
        service: (state.extra as Map?)?['service'] as Service?,
      );
    },
  );

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
  late final EditObjectController<Group> _controller = EditObjectController(
    onCreate: (object) =>
        DatabaseService.I.groups.insertGroup(newGroup: object),
    onUpdate: (oldGroup, newGroup) => DatabaseService.I.groups.updateGroup(
      oldGroup: oldGroup,
      newGroup: newGroup,
    ),
    onDelete: (object) =>
        DatabaseService.I.groups.deleteGroup(groupId: object.id),
    toJson: (object) => object.toJson(),
    newObject: widget.group ??
        Group(
          id: const Uuid().v4(),
          name: 'مجموعة جديدة',
          service: widget.service,
          serviceId: widget.service?.id,
        ),
    initialObject: widget.group,
  );

  Group get initialGroup => _controller.initialObject!;
  Group get newGroup => _controller.newObject;
  set newGroup(Group a) => _controller.newObject = a;

  @override
  Widget build(BuildContext context) {
    return EditObjectData(
      objectData: widget.group,
      getController: () => _controller,
      objectOnEmptyPhoto: Group(id: '', name: ''),
      builder: (context, _controller) => Column(
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
            labelText: 'الخدمة',
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
                        dense: true,
                      ),
                    )
                  : null;
            },
          ),
          DateTimeRangeField(
            label: 'الصلاحية',
            initialValue: newGroup.validity,
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
