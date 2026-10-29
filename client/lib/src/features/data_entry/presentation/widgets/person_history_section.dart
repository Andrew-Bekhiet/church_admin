import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class PersonHistorySection extends StatelessWidget {
  final Person person;

  const PersonHistorySection({required this.person, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HistoryProperty(
          name: 'أخر تناول',
          trackedAs: TrackedHistory(HistoryKind.kodas, person),
          value: person.lastKodas?.time,
          showTime: false,
          getHistoryListController: () => ViewableObjectListController(
            objectsPaginatableStream: DatabaseService.I.history
                .paginatePersonKodasHistory(
                  personId: person.id,
                ),
          ),
          onRecordNow: () => DatabaseService.I.history.recordKodas(
            personId: person.id,
            day: DateTime.now(),
          ),
        ),
        HistoryProperty(
          name: 'أخر اعتراف',
          trackedAs: TrackedHistory(HistoryKind.confession, person),
          value: person.lastConfession?.time,
          showTime: false,
          getHistoryListController: () => ViewableObjectListController(
            objectsPaginatableStream: DatabaseService.I.history
                .paginatePersonConfessionHistory(personId: person.id),
          ),
          onRecordNow: () =>
              DatabaseService.I.history.updatePersonLastConfession(
                personId: person.id,
                lastConfession: DateTime.now(),
              ),
        ),
        const Divider(thickness: 1),
        HistoryProperty(
          name: 'أخر افتقاد',
          trackedAs: TrackedHistory(HistoryKind.visit, person),
          value: person.lastVisit?.time,
          getHistoryListController: () => ViewableObjectListController(
            objectsPaginatableStream: DatabaseService.I.history
                .paginatePersonVisitHistory(
                  personId: person.id,
                ),
          ),
          onRecordNow: () => DatabaseService.I.history.updatePersonLastVisit(
            personId: person.id,
            lastVisit: DateTime.now(),
          ),
        ),
        HistoryProperty(
          name: 'أخر مكالمة',
          trackedAs: TrackedHistory(HistoryKind.call, person),
          value: person.lastCall?.time,
          getHistoryListController: () => ViewableObjectListController(
            objectsPaginatableStream: DatabaseService.I.history
                .paginatePersonCallHistory(
                  personId: person.id,
                ),
          ),
          onRecordNow: () => DatabaseService.I.history.updatePersonLastCall(
            personId: person.id,
            lastCall: DateTime.now(),
          ),
        ),
        HistoryProperty(
          name: 'أخر تحديث للبيانات',
          trackedAs: TrackedHistory(HistoryKind.edit, person),
          value: person.lastEdit?.time,
          getHistoryListController: () => ViewableObjectListController(
            objectsPaginatableStream: DatabaseService.I.history
                .paginateEditHistory<Person>(
                  id: person.id,
                ),
          ),
        ),
      ],
    );
  }
}
