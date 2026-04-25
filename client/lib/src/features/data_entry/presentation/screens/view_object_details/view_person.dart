import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:derived_colors/derived_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart' as contacts;
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rxdart/rxdart.dart';

class ViewPerson extends StatefulWidget {
  final Person? person;
  final String personId;

  const ViewPerson({required this.personId, this.person, super.key});

  @override
  State<ViewPerson> createState() => _ViewPersonState();
}

class _ViewPersonState extends State<ViewPerson> {
  final scrollController = ScrollController();

  final _servicesLimit = BehaviorSubject<int?>.seeded(4);
  final _classesLimit = BehaviorSubject<int?>.seeded(4);
  final _groupsLimit = BehaviorSubject<int?>.seeded(4);

  late final stream =
      Rx.combineLatest3(
        _servicesLimit.distinct(),
        _classesLimit.distinct(),
        _groupsLimit.distinct(),
        (a, b, c) => (a, b, c),
      ).switchMap(
        (limits) => DatabaseService.I.persons.streamSingleById(
          id: widget.personId,
          servicesLimit: limits.$1,
          classesLimit: limits.$2,
          groupsLimit: limits.$3,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return ViewObjectDetails<Person>(
      objectId: widget.personId,
      object: widget.person,
      objectStream: stream,
      detailsBuilder: (context, person) {
        final labelSmall = Theme.of(context).textTheme.labelSmall!;

        return SliverList(
          delegate: SliverChildListDelegate([
            if (person.nationalId != null)
              ListTile(
                title: const Text('الرقم القومي'),
                subtitle: Text(person.nationalId?.toString() ?? ''),
              ),
            PhoneNumberProperty(
              'رقم الهاتف',
              person.mainPhone ?? '',
              (n) => _phoneCall(context, n),
              addToContacts: (n) => _contactAdd(context, n, person),
            ),
            ...person.otherPhones.entries.map(
              (e) => PhoneNumberProperty(
                e.key,
                e.value,
                (n) => _phoneCall(context, n),
                addToContacts: (n) => _contactAdd(context, n, person),
              ),
            ),
            CopiablePropertyWidget(
              'العنوان والموقع',
              person.address?.toString(),
              additionalOptions: [
                if (person.geolocation != null)
                  IconButton(
                    icon: const Icon(Symbols.location_pin),
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ViewGeodataMap(
                          initialPerson: person,
                          initialGeomapOptions: GeomapOptions(),
                        ),
                      ),
                    ),
                    tooltip: 'إظهار على الخريطة',
                  ),
              ],
            ),
            ListTile(
              title: const Text('السن'),
              subtitle: person.birthdate != null
                  ? Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            person.birthdate!.toDurationString(
                              appendSince: false,
                            ),
                          ),
                        ),
                        Text(
                          DateFormat('yyyy/M/d').format(person.birthdate!),
                          style: labelSmall,
                        ),
                      ],
                    )
                  : null,
            ),
            const Divider(thickness: 1),
            ListTile(
              title: const Text('الخدمات التي يوجد بها'),
              subtitle: _ShowMore<Service>(
                person: person,
                getField: (p) => p?.services,
                loadAll: () => _servicesLimit.add(null),
              ),
            ),
            ListTile(
              title: const Text('الفصول التي يوجد بها'),
              subtitle: _ShowMore<Class>(
                person: person,
                getField: (p) => p?.classes,
                loadAll: () => _classesLimit.add(null),
              ),
            ),
            ListTile(
              title: const Text('المجموعات التي يشارك بها'),
              subtitle: _ShowMore<Group>(
                person: person,
                getField: (p) => p?.groups,
                loadAll: () => _groupsLimit.add(null),
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text('حالة العمل'),
              subtitle: Text(person.workStatus?.label ?? ''),
            ),
            if (person.isStudent) ...[
              ListTile(
                title: const Text('السنة الدراسية'),
                subtitle: Text(person.studyYear?.name ?? ''),
              ),
              if ((person.studyYearId ?? person.studyYear?.order) != null &&
                  (person.studyYearId ?? person.studyYear?.order)! > 12)
                ListTile(
                  title: const Text('الكلية'),
                  subtitle: Text(person.college?.name ?? ''),
                )
              else
                ListTile(
                  title: const Text('المدرسة'),
                  subtitle: Text(person.school?.name ?? ''),
                ),
            ] else
              ListTile(
                title: const Text('المؤهل'),
                subtitle: Text(person.qualification?.name ?? ''),
              ),
            if (person.workStatus == WorkStatus.employed ||
                person.workStatus == WorkStatus.retired) ...[
              ListTile(
                title: const Text('الوظيفة'),
                subtitle: Text(person.job?.name ?? ''),
              ),
              ListTile(
                title: const Text('تفاصيل الوظيفة'),
                subtitle: Text(person.jobDescription ?? ''),
              ),
            ],
            const Divider(thickness: 1),
            ListTile(
              title: const Text('النوع'),
              subtitle: Text(person.gender ? 'ذكر' : 'أنثى'),
            ),
            ListTile(
              title: const Text('الحالة الاجتماعية'),
              subtitle: Text(person.martialStatus?.label ?? ''),
            ),
            ListTile(
              title: const Text('نوع الفرد في العائلة'),
              subtitle: Text(person.personType?.name ?? ''),
            ),
            const Divider(thickness: 1),
            ListTile(
              title: const Text('الكنيسة'),
              subtitle: Text(person.church?.name ?? ''),
            ),
            ListTile(
              title: const Text('أب الاعتراف'),
              subtitle: Text(person.father?.name ?? ''),
            ),
            ListTile(
              title: const Text('خادم؟'),
              subtitle: Text(person.isServant ? 'نعم' : 'لا'),
              trailing: person.isServant && person.user?.email != null
                  ? IconButton(
                      onPressed: () => ViewUserRoute(
                        uid: person.user!.uid,
                        $extra: person.user,
                      ).push(context),
                      icon: const Icon(Symbols.manage_accounts),
                      tooltip: 'عرض بيانات الخادم',
                    )
                  : null,
            ),
            if (person.isServant)
              ListTile(
                title: const Text('الكنيسة التي يخدم بها'),
                subtitle: Text(person.servingChurch?.name ?? ''),
              ),
            if (person.isServant)
              ListTile(
                title: const Text('نوع الخدمة'),
                subtitle: Text(person.serviceType ?? ''),
              ),
            if (person.gender)
              ListTile(
                title: const Text('شماس؟'),
                subtitle: Text(person.isShammas ? 'نعم' : 'لا'),
              ),
            if (person.gender && person.isShammas)
              ListTile(
                title: const Text('رتبة الشموسية'),
                subtitle: Text(person.shammasLevel?.name ?? ''),
              ),
            ListTile(
              title: const Text('الحالة الروحية'),
              subtitle: Text(person.state?.name ?? ''),
              trailing: person.state?.color == null
                  ? null
                  : ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      child: Container(
                        width: 50,
                        height: 50,
                        color: person.state!.color,
                      ),
                    ),
            ),
            const Divider(),
            ListTile(
              title: const Text('الهوايات'),
              subtitle: Wrap(
                spacing: 3,
                children: [
                  for (final hobby in person.hobbies ?? <Hobby>[])
                    Chip(
                      side: BorderSide(
                        color: hobby.color?.findInvert() ?? labelSmall.color!,
                      ),
                      label: Text(
                        hobby.name,
                        style: labelSmall.copyWith(
                          color: hobby.color?.findInvert(),
                        ),
                      ),
                      color: WidgetStateProperty.all(hobby.color),
                    ),
                ],
              ),
            ),
            ListTile(
              title: const Text('الشارات'),
              subtitle: Wrap(
                spacing: 3,
                children: [
                  for (final tag in person.tags ?? <Tag>[])
                    Chip(
                      side: BorderSide(
                        color: tag.color?.findInvert() ?? labelSmall.color!,
                      ),
                      label: Text(
                        tag.name,
                        style: labelSmall.copyWith(
                          color: tag.color?.findInvert(),
                        ),
                      ),
                      color: WidgetStateProperty.all(tag.color),
                    ),
                ],
              ),
            ),
            CopiablePropertyWidget(
              'ملاحظات',
              person.notes,
              showErrorIfEmpty: false,
            ),
            const Divider(thickness: 1),
            HistoryProperty(
              name: 'أخر تناول',
              value: person.lastKodas?.time,
              showTime: false,
              getHistoryListController: () => ViewableObjectListController(
                objectsPaginatableStream: DatabaseService.I.history
                    .paginatePersonKodasHistory(
                      personId: person.id,
                    ),
              ),
              onRecordNow: () =>
                  DatabaseService.I.history.updatePersonLastKodas(
                    personId: widget.personId,
                    lastKodas: DateTime.now(),
                  ),
            ),
            HistoryProperty(
              name: 'أخر اعتراف',
              value: person.lastConfession?.time,
              showTime: false,
              getHistoryListController: () => ViewableObjectListController(
                objectsPaginatableStream: DatabaseService.I.history
                    .paginatePersonConfessionHistory(personId: person.id),
              ),
              onRecordNow: () =>
                  DatabaseService.I.history.updatePersonLastConfession(
                    personId: widget.personId,
                    lastConfession: DateTime.now(),
                  ),
            ),
            const Divider(thickness: 1),
            HistoryProperty(
              name: 'أخر افتقاد',
              value: person.lastVisit?.time,
              getHistoryListController: () => ViewableObjectListController(
                objectsPaginatableStream: DatabaseService.I.history
                    .paginatePersonVisitHistory(
                      personId: person.id,
                    ),
              ),
              onRecordNow: () =>
                  DatabaseService.I.history.updatePersonLastVisit(
                    personId: widget.personId,
                    lastVisit: DateTime.now(),
                  ),
            ),
            HistoryProperty(
              name: 'أخر مكالمة',
              value: person.lastCall?.time,
              getHistoryListController: () => ViewableObjectListController(
                objectsPaginatableStream: DatabaseService.I.history
                    .paginatePersonCallHistory(
                      personId: person.id,
                    ),
              ),
              onRecordNow: () => DatabaseService.I.history.updatePersonLastCall(
                personId: widget.personId,
                lastCall: DateTime.now(),
              ),
            ),
            HistoryProperty(
              name: 'أخر تحديث للبيانات',
              value: person.lastEdit?.time,
              getHistoryListController: () => ViewableObjectListController(
                objectsPaginatableStream: DatabaseService.I.history
                    .paginateEditHistory<Person>(
                      id: person.id,
                    ),
              ),
            ),
            ListTile(
              title: FilledButton.icon(
                icon: const Icon(Symbols.query_stats),
                label: const Text('احصائيات'),
                onPressed: () => _analysis(context, person),
              ),
            ),
            const Divider(thickness: 1),
            ListTile(
              title: const Text('المنطقة'),
              subtitle: person.address?.area != null
                  ? ViewableObjectCard(person.address!.area!)
                  : null,
            ),
            ListTile(
              title: const Text('الشارع'),
              subtitle: person.address?.street != null
                  ? ViewableObjectCard(person.address!.street!)
                  : null,
            ),
            if (person.family != null)
              ListTile(
                title: const Text('العائلة'),
                subtitle: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: ViewableObjectCard(person.family!),
                ),
              ),
            /* if (person.store != null)
                      ListTile(
                        title: const Text('داخل متجر'),
                        subtitle: ViewableObjectWidget<Store>(
                          person.store!,
                          dense: true,
                          forceShowSecondLine: false,
                        ),
                      ), */
            const SizedBox(height: 50),
          ]),
        );
      },
      editButtonBuilder: (context, person) => IconButton(
        tooltip: 'تعديل',
        onPressed: () => EditPersonRoute(
          $extra: EditPersonExtra(person: person),
        ).push(context),
        icon: const Icon(Symbols.edit),
      ),
      notFoundBuilder: (context) => Center(
        child: Text(
          'لم يتم العثور على المخدوم',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }

  Future<void> _analysis(BuildContext context, Person person) async {
    await PersonAnalysisRoute(
      $extra: PersonAnalysisExtra(
        editOptionsBuilder:
            (
              context,
              options,
              void Function(PersonAnalysisOptions) onComplete,
            ) => _SelectAttendanceOptions(
              person: person,
              onComplete: onComplete,
              options: options,
            ),
        person: person,
      ),
    ).push(context);
  }

  Future<void> _phoneCall(BuildContext context, String? number) async {
    final doMakeCallResult = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('هل تريد اجراء مكالمة الأن'),
        actions: [
          FilledButton.icon(
            icon: const Icon(Symbols.call),
            label: const Text('اجراء مكالمة الأن'),
            onPressed: () => Navigator.of(context).pop(true),
          ),
          FilledButton.tonalIcon(
            style: Theme.of(context).filledTonalButtonStyleWorkaround,
            icon: const Icon(Symbols.dialpad),
            label: const Text('نسخ في لوحة الاتصال فقط'),
            onPressed: () => Navigator.of(context).pop(false),
          ),
        ],
      ),
    );

    if (doMakeCallResult == null) return;

    if (doMakeCallResult) await Permission.phone.request();
    await LauncherService.I.launchCall(
      PhoneNumberService.I.formatInternational(number!),
    );

    if (!doMakeCallResult || !context.mounted) return;

    final recordLastCall = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('هل تريد تسجيل تاريخ هذه المكالمة؟'),
        actions: [
          FilledButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('نعم'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('لا'),
          ),
        ],
      ),
    );

    if (recordLastCall != true) return;

    await DatabaseService.I.history.updatePersonLastCall(
      personId: widget.personId,
      lastCall: DateTime.now(),
    );

    scaffoldMessenger.showSnackBar(const SnackBar(content: Text('تم بنجاح')));
  }

  Future<void> _contactAdd(
    BuildContext context,
    String phone,
    Person person,
  ) async {
    if (!(await Permission.contacts.request()).isGranted) return;

    final nameController = TextEditingController(text: person.name);

    if (!context.mounted) return;

    final dialogResult = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('ادخل اسم جهة الاتصال:'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(controller: nameController),
            Container(height: 10),
            Text(phone),
          ],
        ),
        actions: [
          OutlinedButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('حفظ جهة الاتصال'),
          ),
        ],
      ),
    );

    if (dialogResult != true) return;

    final imageFile = person.hasImage
        ? await ImageUrlCacheService.I.getImageFile(person.imageInfo)
        : null;

    await ContactsService.I.insertContact(
      contacts.Contact(
        name: contacts.Name(first: nameController.text),
        photo: imageFile != null && imageFile.lengthSync() <= 100 * 1024 * 1024
            ? contacts.Photo(fullSize: await imageFile.readAsBytes())
            : null,
        phones: [contacts.Phone(number: phone)],
      ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();

    unawaited(_servicesLimit.close());
    unawaited(_classesLimit.close());
    unawaited(_groupsLimit.close());

    super.dispose();
  }
}

class _ShowMore<T extends Viewable> extends StatelessWidget {
  const _ShowMore({
    required this.person,
    required this.getField,
    this.loadAll,
    this.showTime = true,
    this.visibleItemsLimit = 3,
    super.key,
  });

  final Person person;
  final List<T>? Function(Person?) getField;
  final void Function()? loadAll;
  final bool showTime;
  final int visibleItemsLimit;

  DateFormat get dateFormat => DateFormat(
    'التاريخ: yyyy/M/d${showTime ? '\nالساعة: h:m a' : ''}',
    'ar-EG',
  );

  @override
  Widget build(BuildContext context) {
    final listField = getField(person) ?? <T>[];

    return Wrap(
      children: [
        for (final o in listField.take(visibleItemsLimit + 1))
          if (listField.length >= visibleItemsLimit + 1 &&
              o == listField[visibleItemsLimit])
            ExpansionTile(
              onExpansionChanged: loadAll != null
                  ? (expanded) => expanded ? loadAll!() : null
                  : null,
              title: const Text('اظهار المزيد'),
              children: [
                ViewableObjectCard(o),
                for (final o in listField.skip(visibleItemsLimit + 1))
                  ViewableObjectCard(o),
              ],
            )
          else
            ViewableObjectCard(o),
      ],
    );
  }
}

class _SelectAttendanceOptions extends StatefulWidget {
  const _SelectAttendanceOptions({
    required this.person,
    required this.onComplete,
    this.options,
  });

  final Person person;
  final PersonAnalysisOptions? options;
  final void Function(PersonAnalysisOptions) onComplete;

  @override
  State<_SelectAttendanceOptions> createState() =>
      _SelectAttendanceOptionsState();
}

class _SelectAttendanceOptionsState extends State<_SelectAttendanceOptions> {
  late final selected = BehaviorSubject<Set<ViewableWithID>>.seeded(
    widget.options == null
        ? {}
        : {
            ...widget.options!.services,
            ...widget.options!.classes,
            ...widget.options!.groups,
          },
  );

  late bool confessionAnalysis = widget.options?.confessionAnalysis ?? true;
  late bool kodasAnalysis = widget.options?.kodasAnalysis ?? true;

  late bool callHistoryAnalysis = widget.options?.callHistoryAnalysis ?? false;
  late bool visitHistoryAnalysis =
      widget.options?.visitHistoryAnalysis ?? false;
  late bool editHistoryAnalysis = widget.options?.editHistoryAnalysis ?? false;

  late DateTimeRange dateRange =
      widget.options?.dateRange ??
      DateTimeRange(
        start: DateTime.now().subtract(const Duration(days: 30)),
        end: DateTime.now(),
      );

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('تحليل الحضور في')),
      body: FutureBuilder<Map<Service, List<ViewableWithIDAndImage>>>(
        initialData:
            <ViewableWithIDAndImage>[
              ...widget.person.classes ?? [],
              ...widget.person.groups ?? [],
            ].groupListsBy(
              (o) =>
                  (o is Class ? o.service : (o as Group).service) ??
                  const Service(id: 'id', name: 'جار التحميل'),
            ),
        future: DatabaseService.I.persons
            .personServicesClassesGroups(personId: widget.person.id)
            .then((p) {
              final groupedObjects =
                  <ViewableWithIDAndImage>[
                    ...p?.classes ?? [],
                    ...p?.groups ?? [],
                  ].groupListsBy(
                    (o) => o is Class ? o.service! : (o as Group).service!,
                  );

              return <Service, List<ViewableWithIDAndImage>>{
                for (final s in p?.services ?? []) s: [],
                ...groupedObjects,
              };
            }),
        builder: (context, snapshot) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          DateTimeRangeField(
                            label: 'الفترة',
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            initialValue: dateRange,
                            onSaved: (v) => dateRange = v!,
                          ),
                          for (final entry in snapshot.requireData.entries) ...[
                            ViewableObjectWidget(
                              entry.key,
                              wrapInCard: false,
                              forceShowSecondLine: false,
                              onTap: (service) => _toggle(
                                service,
                                !selected.value.contains(service),
                              ),
                              trailing: StreamBuilder<bool>(
                                initialData: false,
                                stream: selected.map(
                                  (set) => set.contains(entry.key),
                                ),
                                builder: (context, entryChecked) => Checkbox(
                                  onChanged: (checked) => _toggle(
                                    entry.key,
                                    checked ?? false,
                                  ),
                                  value: entryChecked.requireData,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 26),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  for (final descendent in entry.value)
                                    ViewableObjectWidget(
                                      descendent,
                                      wrapInCard: false,
                                      forceShowSecondLine: false,
                                      onTap: (object) => _toggle(
                                        object,
                                        !selected.value.contains(object),
                                      ),
                                      trailing: StreamBuilder<bool>(
                                        initialData: false,
                                        stream: selected.map(
                                          (set) => set.contains(descendent),
                                        ),
                                        builder: (context, entryChecked) =>
                                            Checkbox(
                                              onChanged: (checked) => _toggle(
                                                descendent,
                                                checked ?? false,
                                              ),
                                              value: entryChecked.requireData,
                                            ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ],
                          const Divider(thickness: 2, height: 5),
                          CheckboxListTile(
                            value: confessionAnalysis,
                            title: const Text('الاعتراف'),
                            onChanged: (v) =>
                                setState(() => confessionAnalysis = v!),
                          ),
                          CheckboxListTile(
                            value: kodasAnalysis,
                            title: const Text('حضور القداس'),
                            onChanged: (v) =>
                                setState(() => kodasAnalysis = v!),
                          ),
                          const Divider(thickness: 1),
                          CheckboxListTile(
                            value: callHistoryAnalysis,
                            title: const Text('خدمة المكالمات'),
                            onChanged: (v) =>
                                setState(() => callHistoryAnalysis = v!),
                          ),
                          CheckboxListTile(
                            value: visitHistoryAnalysis,
                            title: const Text('الافتقاد'),
                            onChanged: (v) =>
                                setState(() => visitHistoryAnalysis = v!),
                          ),
                          CheckboxListTile(
                            value: editHistoryAnalysis,
                            title: const Text('تحديث البيانات'),
                            onChanged: (v) =>
                                setState(() => editHistoryAnalysis = v!),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                FilledButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();

                      widget.onComplete(
                        PersonAnalysisOptions(
                          callHistoryAnalysis: callHistoryAnalysis,
                          confessionAnalysis: confessionAnalysis,
                          editHistoryAnalysis: editHistoryAnalysis,
                          kodasAnalysis: kodasAnalysis,
                          visitHistoryAnalysis: visitHistoryAnalysis,
                          dateRange: dateRange,
                          classes: selected.value.whereType<Class>().toList(),
                          groups: selected.value.whereType<Group>().toList(),
                          services: selected.value
                              .whereType<Service>()
                              .toList(),
                        ),
                      );

                      await selected.close();
                    }
                  },
                  child: const Text('تحليل الحضور'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _toggle(ViewableWithID object, bool isSelected) {
    if (isSelected) {
      selected.add({...selected.value, object});
    } else {
      selected.add(selected.value.difference(<ViewableWithID>{object}));
    }
  }

  @override
  Future<void> dispose() async {
    super.dispose();
    await selected.close();
  }
}
