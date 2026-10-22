import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:uuid/uuid.dart' show Uuid;

class ClassFormController extends ObjectFormController<Class> {
  final ServicesDAO _services;

  late final gender = AdvancedFieldController<bool?, ObjectEditError>(
    initialValue: startingObject.serviceGender,
  );
  late final service = AdvancedFieldController<Service?, ObjectEditError>(
    initialValue: startingObject.service,
    validator: (service) =>
        service == null ? ObjectEditError.serviceRequired : null,
  );
  late final studyYears =
      AdvancedFieldController<StudyYearRange?, ObjectEditError>(
        initialValue: StudyYearRange(
          from: startingObject.studyYear,
          to: startingObject.studyYearTo,
        ),
        validator: _invalidStudyYears,
      );

  ClassFormController({
    required ClassEditIntent intent,
    required this._services,
    required super.recordedByUserId,
  }) : super(
         savedObject: switch (intent) {
           UpdateClass(:final class$) => class$,
           CreateClass() => null,
         },
         startingObject: switch (intent) {
           UpdateClass(:final class$) => class$,
           final CreateClass create => create.draftClass(const Uuid().v4()),
         },
         debugName: 'class',
       ) {
    registerFields([photo, name, gender, service, studyYears, color]);
    studyYears.subscribeToFields([service]);
  }

  ViewableObjectListController<Service> servicesMatching(
    Stream<String?> search,
  ) => SearchableDaoListController.over(_services)(search);

  @override
  Class toObject() {
    final range = studyYears.fieldValue;
    final chosenService = service.fieldValue;

    return startingObject.copyWith(
      name: editedName,
      serviceGender: gender.fieldValue,
      service: chosenService,
      serviceId: chosenService?.id,
      studyYear: range?.from,
      serviceStudyYear: range?.from?.order,
      studyYearTo: range?.to,
      serviceStudyYearTo: range?.to?.order,
      color: color.fieldValue,
    );
  }

  ObjectEditError? _invalidStudyYears(StudyYearRange? range) => switch ((
    range,
    service.fieldValue,
  )) {
    (
      null || StudyYearRange(from: null) || StudyYearRange(to: null),
      _,
    ) =>
      ObjectEditError.studyYearsRequired,
    (
      StudyYearRange(:final from?, :final to?),
      Service(studyYearFrom: final serviceFrom?, studyYearTo: final serviceTo?),
    )
        when from.order <= to.order &&
            (from.order < serviceFrom.order || to.order > serviceTo.order) =>
      ObjectEditError.studyYearsOutsideService,
    (final range, _) => ServiceFormController.partialOrReversedStudyYears(
      range,
    ),
  };
}
