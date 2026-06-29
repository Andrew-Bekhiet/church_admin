import 'package:church_admin/church_admin.dart';
import 'package:church_admin_migrator/models/church_admin_context.dart';
import 'package:church_admin_migrator/models/id_reference.dart';
import 'package:church_admin_migrator/models/meetinghelper_context.dart';

final _newServices = [
  Service(
    id: 'خدمة KG',
    name: 'خدمة KG',
    studyYearFromId: -4,
    studyYearToId: 0,
  ),
  Service(
    id: 'خدمة ابتدائي',
    name: 'خدمة ابتدائي',
    studyYearFromId: 1,
    studyYearToId: 6,
  ),
  Service(
    id: 'خدمة إعدادي',
    name: 'خدمة إعدادي',
    studyYearFromId: 7,
    studyYearToId: 9,
  ),
  Service(
    id: 'خدمة ثانوي',
    name: 'خدمة ثانوي',
    studyYearFromId: 10,
    studyYearToId: 12,
  ),
  Service(
    id: 'خدمة جامعة',
    name: 'خدمة جامعة',
    studyYearFromId: 13,
    studyYearToId: 17,
  ),
  Service(id: 'خدمة إعداد خدام', name: 'خدمة إعداد خدام'),
];

Future<void> migrateAndCreateNewServices(
  MeetingHelperContext meetingHelperContext,
  ChurchAdminContext churchAdminContext,
) async {
  for (var i = 0; i < _newServices.length; i++) {
    final service = _newServices[i];
    churchAdminContext.services[IdReference.fromPath(
      'Services/${service.id}',
    )] = service.copyWith(
      nextService: _newServices.elementAtOrNull(i + 1),
    );
  }

  for (final MapEntry(key: oldRef, value: service)
      in meetingHelperContext.services.entries) {
    // The legacy StudyYearRange holds references to MeetingHelper StudyYear
    // docs, not numbers. Resolve them to the new study-year `order` scale.
    final fromOrder = _resolveStudyYearOrder(
      service.studyYearRange?.from,
      meetingHelperContext,
      churchAdminContext,
    );
    final toOrder = _resolveStudyYearOrder(
      service.studyYearRange?.to,
      meetingHelperContext,
      churchAdminContext,
    );

    // The services table requires the range to be either fully null or a valid
    // ordered pair (study_year_from_id <= study_year_to_id).
    final hasValidRange =
        fromOrder != null && toOrder != null && fromOrder <= toOrder;

    final newService = Service(
      id: service.ref.id,
      name: service.name,
      studyYearFromId: hasValidRange ? fromOrder : null,
      studyYearToId: hasValidRange ? toOrder : null,
      color: service.color,
    );

    churchAdminContext.services[oldRef] = newService;
  }
}

int? _resolveStudyYearOrder(
  IdReference? studyYearRef,
  MeetingHelperContext meetingHelperContext,
  ChurchAdminContext churchAdminContext,
) {
  if (studyYearRef == null) return null;

  final grade = meetingHelperContext.studyYears[studyYearRef]?.grade;
  if (grade == null) return null;

  return churchAdminContext.studyYears[grade]?.order;
}

/// Returns the standard migrated [Service] whose study-year range contains
/// [studyYearOrder], or `null` when [studyYearOrder] falls outside every
/// range. Unlike [serviceForStudyYearOrder] there is no servants-preparation
/// fallback — used to auto-enrol persons into the study-year service they
/// belong to, where an out-of-range person should simply not be enrolled.
Service? standardServiceForStudyYearOrder(
  ChurchAdminContext churchAdminContext,
  int studyYearOrder,
) {
  for (final base in _newServices) {
    final from = base.studyYearFromId;
    final to = base.studyYearToId;
    if (from != null &&
        to != null &&
        studyYearOrder >= from &&
        studyYearOrder <= to) {
      return churchAdminContext.services[IdReference.fromPath(
        'Services/${base.id}',
      )];
    }
  }

  return null;
}

/// Returns the standard migrated [Service] whose study-year range contains
/// [studyYearOrder]. Falls back to the servants-preparation service for orders
/// that fall outside every range. Used to attach migrated classes to a service.
Service? serviceForStudyYearOrder(
  ChurchAdminContext churchAdminContext,
  int studyYearOrder,
) {
  return standardServiceForStudyYearOrder(churchAdminContext, studyYearOrder) ??
      churchAdminContext.services[IdReference.fromPath(
        'Services/خدمة إعداد خدام',
      )];
}
