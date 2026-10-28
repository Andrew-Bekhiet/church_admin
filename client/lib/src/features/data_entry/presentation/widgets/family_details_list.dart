import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class FamilyDetailsList extends StatelessWidget {
  final Family family;

  const FamilyDetailsList({required this.family, super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        PhoneBookCard(
          owner: family,
          family: family.contacts,
          onCall: (n, {required isFamilyNumber}) {
            AnalyticsService.I.track(
              ContactDialerOpen(family, isFamilyNumber: isFamilyNumber),
            );
            unawaited(
              LauncherService.I.launchCall(
                PhoneNumberService.I.formatInternational(n),
              ),
            );
          },
        ),
        CopiablePropertyWidget(
          'العنوان والموقع',
          family.address?.toString(),
          onCopied: () => AnalyticsService.I.track(
            const EntityPropertyCopy(CopiedEntityProperty.address),
          ),
          additionalOptions: [
            if (family.geolocation != null)
              IconButton(
                icon: const Icon(Symbols.map),
                onPressed: () {
                  AnalyticsService.I.track(EntityMapShow(family));
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ViewGeodataMap(
                        initialGeomapOptions: GeomapOptions(
                          selectedFamilies: {family},
                        ),
                      ),
                    ),
                  );
                },
                tooltip: 'إظهار على الخريطة',
              ),
          ],
        ),
        ListTile(
          title: const Text('الكنيسة'),
          subtitle: Text(family.church?.name ?? ''),
        ),
        ListTile(
          title: const Text('الحالة الاجتماعية'),
          subtitle: Text(family.status.label),
        ),
        if (family.marriageDate case final marriageDate?)
          ListTile(
            title: const Text('تاريخ الزواج'),
            subtitle: Text(DateFormat('yyyy/M/d').format(marriageDate)),
          ),
        if (family.deceasedSpouseName case final deceasedSpouseName?)
          ListTile(
            title: const Text('اسم المتوفي/ـة'),
            subtitle: Text(deceasedSpouseName),
          ),
        CopiablePropertyWidget(
          'ملاحظات',
          family.notes,
          onCopied: () => AnalyticsService.I.track(
            const EntityPropertyCopy(CopiedEntityProperty.notes),
          ),
          showErrorIfEmpty: false,
        ),
        ListTile(
          title: const Text('المنطقة'),
          subtitle: family.address?.area != null
              ? ViewableObjectCard(family.address!.area!)
              : null,
        ),
        ListTile(
          title: const Text('الشارع'),
          subtitle: family.address?.street != null
              ? ViewableObjectCard(family.address!.street!)
              : null,
        ),
        HistoryProperty(
          name: 'أخر افتقاد',
          trackedAs: TrackedHistory(HistoryKind.visit, family),
          value: family.lastVisit?.time,
          getHistoryListController: () => ViewableObjectListController(
            objectsPaginatableStream: DatabaseService.I.history
                .paginateFamilyVisitHistory(
                  familyId: family.id,
                ),
          ),
          onRecordNow: () => DatabaseService.I.history.updateFamilyLastVisit(
            familyId: family.id,
            lastVisit: DateTime.now(),
          ),
        ),
        HistoryProperty(
          name: 'أخر افتقاد للأب الكاهن',
          trackedAs: TrackedHistory(HistoryKind.fatherVisit, family),
          value: family.lastFatherVisit?.time,
          getHistoryListController: () => ViewableObjectListController(
            objectsPaginatableStream: DatabaseService.I.history
                .paginateFamilyVisitHistory(
                  familyId: family.id,
                  fatherVisit: true,
                ),
          ),
          onRecordNow: () => DatabaseService.I.history.updateFamilyLastVisit(
            familyId: family.id,
            lastVisit: DateTime.now(),
            isFatherVisit: true,
          ),
        ),
        HistoryProperty(
          name: 'أخر تحديث للبيانات',
          trackedAs: TrackedHistory(HistoryKind.edit, family),
          value: family.lastEdit?.time,
          getHistoryListController: () => ViewableObjectListController(
            objectsPaginatableStream: DatabaseService.I.history
                .paginateEditHistory<Family>(
                  id: family.id,
                ),
          ),
        ),
      ]),
    );
  }
}
