import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:uuid/uuid.dart' show Uuid;

class GroupFormController extends ObjectFormController<Group>
    implements DefaultMeetingOwner<Group> {
  final ServicesDAO _services;

  late final DefaultMeetingFormController? defaultMeeting = isCreate
      ? DefaultMeetingFormController(ownerName: name)
      : null;
  late final service = AdvancedFieldController<Service?, ObjectEditError>(
    initialValue: startingObject.service,
    validator: (service) =>
        service == null ? ObjectEditError.serviceRequired : null,
  );
  late final validity =
      AdvancedFieldController<DateTimeRange?, ObjectEditError>(
        initialValue: startingObject.validity,
      );

  GroupFormController({
    required GroupEditIntent intent,
    required this._services,
    required super.recordedByUserId,
  }) : super(
         savedObject: switch (intent) {
           UpdateGroup(:final group) => group,
           CreateGroup() => null,
         },
         startingObject: switch (intent) {
           UpdateGroup(:final group) => group,
           final CreateGroup create => create.draftGroup(const Uuid().v4()),
         },
         debugName: 'group',
       ) {
    registerFields([photo, name, service, validity, color]);
    if (defaultMeeting case final defaultMeeting?) addSubform(defaultMeeting);
  }

  ViewableObjectListController<Service> servicesMatching(
    Stream<String?> search,
  ) => SearchableDaoListController.over(_services)(search);

  @override
  Group toObject() => startingObject.copyWith(
    name: editedName,
    service: service.fieldValue,
    serviceId: service.fieldValue?.id,
    validity: validity.fieldValue,
    color: color.fieldValue,
  );

  @override
  Meeting? draftDefaultMeetingOf(Group created) => defaultMeeting?.draftFor(
    id: const Uuid().v4(),
    owner: created,
    groupId: created.id,
  );

  @override
  Group withDefaultMeeting(Group created, Meeting meeting) =>
      created.copyWith(defaultMeeting: meeting);
}
