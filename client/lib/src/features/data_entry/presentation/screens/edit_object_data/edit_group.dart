import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class EditGroup extends StatefulWidget {
  final Group? group;
  final Service? withService;

  const EditGroup({
    required this.group,
    this.withService,
    super.key,
  });

  @override
  State<EditGroup> createState() => _EditGroupState();
}

class _EditGroupState extends State<EditGroup> {
  late final EditObjectController<Group> _controller;

  late final TextEditingController _groupNameController = TextEditingController(
    text: newGroup.name,
  );
  String? _defaultMeetingName;

  Group get initialGroup => _controller.initialObject!;
  Group get newGroup => _controller.newObject;
  set newGroup(Group a) => _controller.newObject = a;

  @override
  void initState() {
    super.initState();

    final Group? oldGroup = widget.group?.copyWith(
      serviceId: widget.withService?.id,
    );

    _controller = EditObjectController(
      afterCreate: (object) => ViewGroupRoute(
        id: object.id,
        $extra: object,
      ).pushReplacement(context),
      onCreate: _createGroup,
      onUpdate: (oldGroup, newGroup) => DatabaseService.I.groups.updateObject(
        oldObject: oldGroup,
        newObject: newGroup,
      ),
      onDelete: (object) => DatabaseService.I.groups.deleteById(id: object.id),
      toJson: (object) => object.toJson(),
      newObject:
          oldGroup ??
          Group(
            id: const Uuid().v4(),
            name: '',
            service: widget.withService,
            serviceId: widget.withService?.id,
          ),
      initialObject: oldGroup,
    );
  }

  @override
  Widget build(BuildContext context) {
    return EditObjectData(
      objectData: widget.group,
      getController: () => _controller,
      builder: (context, controller) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          NameField(
            controller: _groupNameController,
            onValueChanged: (value) =>
                newGroup = newGroup.copyWith(name: value.trim()),
            padding: const EdgeInsets.symmetric(vertical: 8),
          ),
          ObjectSelectionField<Service, Service?>(
            decoration: const InputDecoration(errorMaxLines: 2),
            initialValue: newGroup.service,
            listController: (s) => ViewableObjectListController(
              objectsPaginatableStream: DatabaseService.I.services.streamAll(
                searchQuery: s,
              ),
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
          if (_controller.isCreate)
            DefaultMeetingField(
              parentNameController: _groupNameController,
              onChanged: (name) => _defaultMeetingName = name,
            ),
          ColorField(
            initialValue: newGroup.color,
            onChanged: (value) => setState(
              () => newGroup = newGroup.copyWith(color: value),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _groupNameController.dispose();
    super.dispose();
  }

  Future<Group> _createGroup(Group newObject) async {
    final createdGroup = await DatabaseService.I.groups.createObject(
      newObject: newObject,
    );

    if (_defaultMeetingName case final meetingName?
        when meetingName.isNotEmpty) {
      final defaultMeeting = await DatabaseService.I.meetings.createObject(
        newObject: Meeting(
          id: const Uuid().v4(),
          name: meetingName,
          audience: MeetingAudience.personsAndServants,
          isArchived: false,
          color: createdGroup.color,
          groupId: createdGroup.id,
        ),
      );

      final updatedGroup = await DatabaseService.I.groups.updateObject(
        oldObject: createdGroup,
        newObject: createdGroup.copyWith(defaultMeeting: defaultMeeting),
      );

      return updatedGroup ?? createdGroup;
    }

    return createdGroup;
  }
}
