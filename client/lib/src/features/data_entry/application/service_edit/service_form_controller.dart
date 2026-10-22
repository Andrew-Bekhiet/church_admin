import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:uuid/uuid.dart' show Uuid;

class ServiceFormController extends ObjectFormController<Service>
    implements DefaultMeetingOwner<Service> {
  static ObjectEditError? partialOrReversedStudyYears(StudyYearRange? range) =>
      switch (range) {
        null || StudyYearRange(from: null, to: null) => null,
        StudyYearRange(from: null) ||
        StudyYearRange(to: null) => ObjectEditError.studyYearsRequired,
        StudyYearRange(
          from: StudyYear(order: final from),
          to: StudyYear(order: final to),
        )
            when from > to =>
          ObjectEditError.studyYearsReversed,
        _ => null,
      };

  final ServicesDAO _services;

  late final DefaultMeetingFormController? defaultMeeting = isCreate
      ? DefaultMeetingFormController(ownerName: name)
      : null;
  late final nextService = AdvancedFieldController<Service?, ObjectEditError>(
    initialValue: startingObject.nextService,
  );
  late final studyYears =
      AdvancedFieldController<StudyYearRange?, ObjectEditError>(
        initialValue: switch (startingObject) {
          Service(studyYearFrom: null, studyYearTo: null) => null,
          Service(:final studyYearFrom, :final studyYearTo) => StudyYearRange(
            from: studyYearFrom,
            to: studyYearTo,
          ),
        },
        validator: partialOrReversedStudyYears,
      );

  ServiceFormController({
    required ServiceEditIntent intent,
    required this._services,
    required super.recordedByUserId,
  }) : super(
         savedObject: switch (intent) {
           UpdateService(:final service) => service,
           CreateService() => null,
         },
         startingObject: switch (intent) {
           UpdateService(:final service) => service,
           final CreateService create => create.draftService(
             const Uuid().v4(),
           ),
         },
         debugName: 'service',
       ) {
    registerFields([photo, name, nextService, studyYears, color]);
    if (defaultMeeting case final defaultMeeting?) addSubform(defaultMeeting);
  }

  ViewableObjectListController<Service> servicesMatching(
    Stream<String?> search,
  ) => SearchableDaoListController.over(_services)(search);

  @override
  Service toObject() {
    final range = studyYears.fieldValue;
    final next = nextService.fieldValue;

    return startingObject.copyWith(
      name: editedName,
      nextService: next,
      nextServiceId: next?.id,
      studyYearFrom: range?.from,
      studyYearFromId: range?.from?.order,
      studyYearTo: range?.to,
      studyYearToId: range?.to?.order,
      color: color.fieldValue,
    );
  }

  @override
  Meeting? draftDefaultMeetingOf(Service created) => defaultMeeting?.draftFor(
    id: const Uuid().v4(),
    owner: created,
    serviceId: created.id,
  );

  @override
  Service withDefaultMeeting(Service created, Meeting meeting) =>
      created.copyWith(defaultMeeting: meeting);
}
