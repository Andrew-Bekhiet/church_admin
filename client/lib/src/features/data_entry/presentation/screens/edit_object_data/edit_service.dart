import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
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

  late final TextEditingController _nameController = TextEditingController(
    text: newService.name,
  );
  String? _defaultMeetingName;

  @override
  void initState() {
    super.initState();
    final Service? oldService = widget.service?.copyWith(
      nextServiceId: widget.service?.nextService?.id,
      studyYearFromId: widget.service?.studyYearFrom?.order,
      studyYearToId: widget.service?.studyYearTo?.order,
    );

    _controller = EditObjectController(
      afterCreate: (object) => ViewServiceRoute(
        id: object.id,
        $extra: object,
      ).pushReplacement(context),
      onCreate: _createService,
      onUpdate: (oldService, newService) =>
          DatabaseService.I.services.updateObject(
            oldObject: oldService,
            newObject: newService,
          ),
      onDelete: (object) =>
          DatabaseService.I.services.deleteById(id: object.id),
      toJson: (object) => object.toJson(),
      newObject:
          oldService ??
          Service(
            id: const Uuid().v4(),
            name: '',
          ),
      initialObject: oldService,
    );
  }

  Service get initialService => _controller.initialObject!;
  Service get newService => _controller.newObject;
  set newService(Service a) => _controller.newObject = a;

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return EditObjectData(
      objectData: widget.service,
      getController: () => _controller,
      builder: (context, controller) => Column(
        spacing: 24,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          NameField(
            controller: _nameController,
            hintText: 'اسم الخدمة',
            onValueChanged: (value) =>
                newService = newService.copyWith(name: value.trim()),
            padding: const EdgeInsets.symmetric(vertical: 8),
          ),
          ObjectSelectionField<Service, Service?>(
            decoration: const InputDecoration(
              errorMaxLines: 2,
            ),
            dialogFieldLabel: 'الخدمة التالية',
            initialValue: newService.nextService,
            listController: (s) => ViewableObjectListController(
              objectsPaginatableStream: DatabaseService.I.services.streamAll(
                searchQuery: s,
              ),
            ),
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
          if (_controller.isCreate)
            DefaultMeetingField(
              parentNameController: _nameController,
              onChanged: (name) => _defaultMeetingName = name,
            ),
          ColorField(
            initialValue: newService.color,
            onChanged: (value) => setState(
              () => newService = newService.copyWith(color: value),
            ),
          ),
        ],
      ),
    );
  }

  Future<Service> _createService(Service newObject) async {
    final createdService = await DatabaseService.I.services.createObject(
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
          color: createdService.color,
          serviceId: createdService.id,
        ),
      );

      final updatedService = await DatabaseService.I.services.updateObject(
        oldObject: createdService,
        newObject: createdService.copyWith(defaultMeeting: defaultMeeting),
      );

      return updatedService ?? createdService;
    }

    return createdService;
  }
}
