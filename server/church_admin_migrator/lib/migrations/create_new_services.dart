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
    final newService = Service(
      id: service.ref.id,
      name: service.name,
      studyYearFromId:
          int.tryParse(service.studyYearRange?.from?.id ?? '') ?? 0,
      studyYearToId: int.tryParse(service.studyYearRange?.to?.id ?? '') ?? 0,
      color: service.color,
    );

    churchAdminContext.services[oldRef] = newService;
  }
}
