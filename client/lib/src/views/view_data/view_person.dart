import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart' hide Group;
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rxdart/rxdart.dart';

class ViewPerson extends StatelessWidget {
  static final route = GoRoute(
    name: 'view_person',
    path: 'viewPerson',
    builder: (context, state) {
      if (state.queryParams['id'] == null) {
        throw ArgumentError.notNull('id');
      }

      return ViewPerson(
        personId: state.queryParams['id']!,
        person: state.extra is Person?
            ? state.extra as Person?
            : (state.extra as Map?)?['person'] as Person?,
      );
    },
    routes: [
      PersonAnalysis.personRoute,
      ViewUser.route,
    ],
  );

  final Person? person;
  final String personId;

  const ViewPerson({
    required this.personId,
    this.person,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Person?>(
      initialData: person,
      stream: CADatabaseRepository.I.persons.watchPerson(personId: personId),
      builder: (context, snapshot) {
        final themeData = Theme.of(context);

        if (snapshot.hasError) {
          return ErrorWidget.builder(
              FlutterErrorDetails(exception: snapshot.error!));
        } else if (!snapshot.hasData &&
            snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (!snapshot.hasData) {
          return Center(
            child: Text(
              'لم يتم العثور على المخدوم',
              style: themeData.textTheme.titleLarge,
            ),
          );
        }

        final person = snapshot.requireData!;

        final foregroundColor = person.color?.getContrastingColor(
          ListTileTheme.of(context).textColor ??
              themeData.listTileTheme.textColor ??
              themeData.textTheme.subtitle1!.color!,
        );
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: person.color,
                foregroundColor: foregroundColor,
                stretch: true,
                pinned: true,
                expandedHeight: 280,
                actions: [
                  if (snapshot.connectionState != ConnectionState.active)
                    const Padding(
                      padding: EdgeInsets.all(8),
                      child: Center(child: CircularProgressIndicator()),
                    ),
                ],
                flexibleSpace: SafeArea(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      final themeData = Theme.of(context);

                      return FlexibleSpaceBar(
                        centerTitle: false,
                        expandedTitleScale: 4,
                        titlePadding: const EdgeInsetsDirectional.only(
                          bottom: 16,
                          start: 72,
                          end: 10,
                        ),
                        title: AnimatedOpacity(
                          duration: const Duration(milliseconds: 300),
                          opacity:
                              constraints.biggest.height > kToolbarHeight * 2
                                  ? 0
                                  : 1,
                          child: Text(
                            person.name,
                            style: themeData.textTheme.titleLarge?.copyWith(
                              color: foregroundColor,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        background: ProgressIndicatorTheme(
                          data: themeData.progressIndicatorTheme.copyWith(
                            color: themeData.brightness == Brightness.light
                                ? themeData.colorScheme.onPrimary
                                : themeData.colorScheme.onSurface,
                          ),
                          child: IconTheme(
                            data: IconTheme.of(context)
                                .copyWith(color: foregroundColor),
                            child: PhotoObjectWidget(
                              person,
                              circleCrop: false,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        person.name,
                        style: themeData.textTheme.titleLarge,
                      ),
                    ),
                    PhoneNumberProperty(
                      'رقم الهاتف',
                      person.mainPhone,
                      (n) => _phoneCall(context, n),
                      (n) => _contactAdd(context, n, person),
                    ),
                    ...person.otherPhones.entries
                        .map(
                          (e) => PhoneNumberProperty(
                            e.key,
                            e.value,
                            (n) => _phoneCall(context, n),
                            (n) => _contactAdd(context, n, person),
                          ),
                        )
                        .toList(),
                    CopiablePropertyWidget(
                      'العنوان',
                      person.address,
                      additionalOptions: [
                        if (person.geolocation != null)
                          IconButton(
                            icon: const Icon(Icons.map),
                            onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    DataGeomap(initialPerson: person),
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
                                    person.birthdate!
                                        .toDurationString(appendSince: false),
                                  ),
                                ),
                                Text(
                                  DateFormat('yyyy/M/d').format(
                                    person.birthdate!,
                                  ),
                                  style: Theme.of(context).textTheme.overline,
                                ),
                              ],
                            )
                          : null,
                    ),
                    const Divider(thickness: 1),
                    ListTile(
                      title: const Text('الخدمات المشارك بها'),
                      subtitle: _ShowMore<Service>(
                        person: person,
                        getField: (p) => p?.services,
                        getMore: (p, s) =>
                            CADatabaseRepository.I.persons.getMorePersonData(
                          personId: person.id,
                          servicesAfter: s.name,
                        ),
                      ),
                    ),
                    ListTile(
                      title: const Text('الفصول التي يظهر بها'),
                      subtitle: _ShowMore<Class>(
                        person: person,
                        getField: (p) => p?.classes,
                        getMore: (p, c) =>
                            CADatabaseRepository.I.persons.getMorePersonData(
                          personId: person.id,
                          classesAfter: c.name,
                        ),
                      ),
                    ),
                    ListTile(
                      title: const Text('المجموعات المشارك بها'),
                      subtitle: _ShowMore<Group>(
                        person: person,
                        getField: (p) => p?.groups,
                        getMore: (p, g) =>
                            CADatabaseRepository.I.persons.getMorePersonData(
                          personId: person.id,
                          groupsAfter: g.name,
                        ),
                      ),
                    ),
                    if (person.isStudent) ...[
                      ListTile(
                        title: const Text('السنة الدراسية'),
                        subtitle: Text(person.studyYear?.name ?? ''),
                      ),
                      if ((person.studyYearId ?? person.studyYear?.order) !=
                              null &&
                          (person.studyYearId ?? person.studyYear?.order)! > 12)
                        ListTile(
                          title: const Text('الكلية'),
                          subtitle: Text(person.college?.name ?? ''),
                        ),
                      ListTile(
                        title: const Text('المدرسة'),
                        subtitle: Text(person.school?.name ?? ''),
                      ),
                    ] else ...[
                      ListTile(
                        title: const Text('المؤهل'),
                        subtitle: Text(person.qualification?.name ?? ''),
                      ),
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
                      title: const Text('نوع الفرد'),
                      subtitle: Text(person.personType?.name ?? ''),
                    ),
                    const Divider(thickness: 1),
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
                      trailing: person.isServant &&
                              person.user?.userData?.email != null
                          ? IconButton(
                              onPressed: () => context.goNamed(
                                'view_user',
                                queryParams: {
                                  'id': person.id,
                                  'uid': person.user!.uid,
                                },
                                extra: {
                                  'user': person.user,
                                  'person': person,
                                },
                              ),
                              icon: const Icon(Icons.manage_accounts),
                              tooltip: 'عرض بيانات الخادم',
                            )
                          : null,
                    ),
                    const Divider(thickness: 1),
                    ListTile(
                      title: const Text('الحالة'),
                      subtitle: Text(person.state?.name ?? ''),
                      trailing: person.state?.color == null
                          ? null
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: 50,
                                height: 50,
                                color: person.state!.color,
                              ),
                            ),
                    ),
                    ListTile(
                      title: const Text('الشارات'),
                      subtitle: Wrap(
                        spacing: 3,
                        children: [
                          for (final tag in person.tags ?? <Tag>[])
                            Material(
                              type: MaterialType.transparency,
                              child: Chip(
                                side: BorderSide(
                                  color: Theme.of(context)
                                          .textTheme
                                          .labelSmall!
                                          .color
                                          .getContrastingColor(
                                            tag.color ?? Colors.transparent,
                                          ) ??
                                      Theme.of(context)
                                          .textTheme
                                          .labelSmall!
                                          .color!,
                                ),
                                label: Text(
                                  tag.name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .labelSmall!
                                            .color
                                            .getContrastingColor(
                                              tag.color ?? Colors.transparent,
                                            ),
                                      ),
                                ),
                                backgroundColor: tag.color,
                              ),
                            )
                        ],
                      ),
                    ),
                    CopiablePropertyWidget(
                      'ملاحظات',
                      person.notes,
                      showErrorIfEmpty: false,
                    ),
                    const Divider(thickness: 1),
                    ListTile(
                      title: const Text('المناطق التي يظهر بها'),
                      subtitle: _ShowMore<Area>(
                        person: person,
                        getField: (p) => p?.areas,
                        getMore: (p, a) =>
                            CADatabaseRepository.I.persons.getMorePersonData(
                          personId: person.id,
                          areasAfter: a.name,
                        ),
                      ),
                    ),
                    ListTile(
                      title: const Text('الشوارع التي يظهر بها'),
                      subtitle: Column(
                        children: [
                          for (final s in person.streets ?? <Street>[])
                            ViewableObjectWidget(
                              s,
                              isDense: true,
                              showSubtitle: false,
                            ),
                        ],
                      ),
                    ),
                    if (person.family != null)
                      ListTile(
                        title: const Text('العائلة'),
                        subtitle: ViewableObjectWidget<Family>(
                          person.family!,
                          isDense: true,
                          showSubtitle: false,
                        ),
                      ),
                    /* if (person.store != null)
                      ListTile(
                        title: const Text('داخل متجر'),
                        subtitle: ViewableObjectWidget<Store>(
                          person.store!,
                          isDense: true,
                          showSubtitle: false,
                        ),
                      ), */
                    const Divider(thickness: 1),
                    ListTile(
                      title: ElevatedButton.icon(
                        icon: const Icon(Icons.query_stats),
                        label: const Text('احصائيات'),
                        onPressed: () => _analysis(context, person),
                      ),
                    ),
                    const Divider(thickness: 1),
                    HistoryProperty(
                      name: 'أخر تناول',
                      value: person.lastKodas?.time,
                      showTime: false,
                      getHistoryStream: () => CADatabaseRepository.I.persons
                          .personKodasHistory(personId: person.id),
                      onRecordNow: () =>
                          CADatabaseRepository.I.persons.updatePersonLastKodas(
                        personId: personId,
                        lastKodas: DateTime.now(),
                      ),
                    ),
                    HistoryProperty(
                      name: 'أخر اعتراف',
                      value: person.lastConfession?.time,
                      showTime: false,
                      getHistoryStream: () => CADatabaseRepository.I.persons
                          .personConfessionHistory(personId: person.id),
                      onRecordNow: () => CADatabaseRepository.I.persons
                          .updatePersonLastConfession(
                        personId: personId,
                        lastConfession: DateTime.now(),
                      ),
                    ),
                    const Divider(thickness: 1),
                    /* StreamBuilder<List<Service>>(
                      stream: MHDatabaseRepo.I.services.getAll(),
                      builder: (context, snapshot) {
                        if (snapshot.data?.isEmpty ?? true) {
                          return const SizedBox();
                        }

                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ...snapshot.data!
                                .where((s) => person.last.containsKey(s.id))
                                .map(
                                  (e) => DayHistoryProperty(
                                    e.name,
                                    person.last[e.id],
                                    person.id,
                                    e.id,
                                  ),
                                ),
                            const Divider(
                              thickness: 1,
                            )
                          ],
                        );
                      },
                    ), */
                    HistoryProperty(
                      name: 'أخر افتقاد',
                      value: person.lastVisit?.time,
                      getHistoryStream: () => CADatabaseRepository.I.persons
                          .personVisitHistory(personId: person.id),
                      onRecordNow: () =>
                          CADatabaseRepository.I.persons.updatePersonLastVisit(
                        personId: personId,
                        lastVisit: DateTime.now(),
                      ),
                    ),
                    HistoryProperty(
                      name: 'أخر مكالمة',
                      value: person.lastCall?.time,
                      getHistoryStream: () => CADatabaseRepository.I.persons
                          .personCallHistory(personId: person.id),
                      onRecordNow: () =>
                          CADatabaseRepository.I.persons.updatePersonLastCall(
                        personId: personId,
                        lastCall: DateTime.now(),
                      ),
                    ),
                    HistoryProperty(
                      name: 'أخر تحديث للبيانات',
                      value: person.lastEdit?.time,
                      getHistoryStream: () => CADatabaseRepository.I.persons
                          .personEditHistory(personId: person.id),
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Future<void> _analysis(BuildContext context, Person person) async {
    context.goNamed(
      'person_analysis',
      queryParams: {
        'id': person.id,
      },
      extra: {
        'person': person,
        'onEditOptions': (context, options,
                void Function(PersonAnalysisOptions) onComplete) =>
            _SelectAttendanceOptions(
              person: person,
              onComplete: onComplete,
              options: options,
            ),
      },
    );
  }

  Future<void> _phoneCall(BuildContext context, String? number) async {
    final result = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('هل تريد اجراء مكالمة الأن'),
        actions: [
          OutlinedButton.icon(
            icon: const Icon(Icons.call),
            label: const Text('اجراء مكالمة الأن'),
            onPressed: () => Navigator.of(context).pop(true),
          ),
          TextButton.icon(
            icon: const Icon(Icons.dialpad),
            label: const Text('نسخ في لوحة الاتصال فقط'),
            onPressed: () => Navigator.of(context).pop(false),
          ),
        ],
      ),
    );
    if (result == null) return;
    if (result) {
      await Permission.phone.request();
      await GetIt.I<LauncherService>().launchUrl(
        Uri(scheme: 'tel', path: formatPhone(number ?? '', false)),
      );
      final recordLastCall = await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('هل تريد تسجيل تاريخ هذه المكالمة؟'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text('نعم'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('لا'),
            ),
          ],
        ),
      );
      if (recordLastCall == true) {
        await CADatabaseRepository.I.persons.updatePersonLastCall(
          personId: personId,
          lastCall: DateTime.now(),
        );
        scaffoldMessenger.showSnackBar(
          const SnackBar(
            content: Text('تم بنجاح'),
          ),
        );
      }
    } else {
      await GetIt.I<LauncherService>().launchUrl(
        Uri(scheme: 'tel', path: formatPhone(number ?? '', false)),
      );
    }
  }

  Future<void> _contactAdd(
    BuildContext context,
    String? phone,
    Person person,
  ) async {
    if ((await Permission.contacts.request()).isGranted) {
      final TextEditingController _name =
          TextEditingController(text: person.name);
      if (await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('ادخل اسم جهة الاتصال:'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(controller: _name),
                  Container(height: 10),
                  Text(phone ?? ''),
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: const Text('حفظ جهة الاتصال'))
              ],
            ),
          ) ==
          true) {
        final c = Contact(
          addresses: [
            if (person.address != null)
              Address(
                person.address!,
              )
          ],
          name: Name(first: _name.text),
          photo: person.hasPhoto
              ? await person.photoRef!.getData(100 * 1024 * 1024)
              : null,
          phones: [Phone(phone ?? '')],
        );
        await c.insert();
      }
    }
  }
}

class _ShowMore<T extends Viewable> extends StatelessWidget {
  const _ShowMore({
    required this.person,
    required this.getField,
    required this.getMore,
    this.showTime = true,
    super.key,
  });

  final Person person;
  final List<T>? Function(Person?) getField;
  final Stream<Person?> Function(Person, T) getMore;
  final bool showTime;

  DateFormat get dateFormat =>
      DateFormat('yyyy/M/d' + (showTime ? '   h:m a' : ''), 'ar-EG');

  Widget? _getSubtitle(BuildContext context, T o) => _hasSubtitle(o)
      ? Row(
          children: <Widget>[
            Expanded(
              child: Text(
                (o as AttendanceAnalyzable)
                    .attendanceHistoryAggregate!
                    .aggregate
                    .max!
                    .toDurationString(),
              ),
            ),
            Text(
              dateFormat.format(
                (o as AttendanceAnalyzable)
                    .attendanceHistoryAggregate!
                    .aggregate
                    .max!,
              ),
              style: Theme.of(context).textTheme.overline,
            ),
          ],
        )
      : null;

  bool _hasSubtitle(T o) =>
      o is AttendanceAnalyzable &&
      (o as AttendanceAnalyzable).attendanceHistoryAggregate?.aggregate.max !=
          null;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final o in getField(person) ?? <T>[])
          if (getField(person)!.length >= 6 && o == getField(person)![5])
            ExpansionTile(
              title: const Text('اظهار المزيد'),
              children: [
                ViewableObjectWidget(
                  o,
                  isDense: true,
                  showSubtitle: _hasSubtitle(o),
                  subtitle: _getSubtitle(context, o),
                ),
                StreamBuilder<List<T>>(
                  initialData: const [],
                  stream:
                      getMore(person, o).map((value) => getField(value) ?? []),
                  builder: (context, snapshot) => snapshot.data == null
                      ? const Center(child: CircularProgressIndicator())
                      : Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            for (final o in snapshot.requireData)
                              ViewableObjectWidget(
                                o,
                                isDense: true,
                                showSubtitle: _hasSubtitle(o),
                                subtitle: _getSubtitle(context, o),
                              ),
                          ],
                        ),
                ),
              ],
            )
          else
            ViewableObjectWidget(
              o,
              isDense: true,
              showSubtitle: _hasSubtitle(o),
              subtitle: _getSubtitle(context, o),
            ),
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

  late DateTimeRange dateRange = widget.options?.dateRange ??
      DateTimeRange(
        start: DateTime.now().subtract(const Duration(days: 30)),
        end: DateTime.now(),
      );

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    selected.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تحليل الحضور في'),
      ),
      body: StreamBuilder<Map<Service, List<ViewableWithID>>>(
        initialData: <ViewableWithID>[
          ...widget.person.classes ?? [],
          ...widget.person.groups ?? []
        ].groupListsBy(
          (o) =>
              (o is Class ? o.service : (o as Group).service) ??
              Service(
                id: 'id',
                name: 'جار التحميل',
              ),
        ),
        stream: CADatabaseRepository.I.persons
            .getPersonClassesAndGroups(personId: widget.person.id)
            .map(
              (p) => <ViewableWithID>[...p?.classes ?? [], ...p?.groups ?? []]
                  .groupListsBy(
                (o) => o is Class ? o.service! : (o as Group).service!,
              ),
            ),
        builder: (context, snapshot) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(8),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TappableFormField<DateTime>(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: (context, state) => InputDecoration(
                            errorText: state.errorText,
                            labelText: 'من',
                          ),
                          initialValue: dateRange.start,
                          onTap: (state) async {
                            final _picked = await showDatePicker(
                              context: context,
                              initialDate: state.value ?? dateRange.start,
                              firstDate: DateTime(2010),
                              lastDate: DateTime.now().add(
                                const Duration(days: 1),
                              ),
                              helpText: 'من',
                            );
                            if (_picked != null) {
                              state.didChange(_picked);
                            }
                          },
                          builder: (context, state) {
                            return state.value != null
                                ? Text(
                                    DateFormat('yyyy/M/d').format(state.value!))
                                : null;
                          },
                          onSaved: (v) => dateRange = DateTimeRange(
                            start: v!,
                            end: dateRange.end,
                          ),
                          validator: (value) =>
                              value == null || value.isAfter(dateRange.end)
                                  ? 'بداية التاريخ قبل النهاية'
                                  : null,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TappableFormField<DateTime>(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: (context, state) => InputDecoration(
                            errorText: state.errorText,
                            labelText: 'الى',
                          ),
                          initialValue: dateRange.end,
                          onTap: (state) async {
                            final _picked = await showDatePicker(
                              context: context,
                              initialDate: state.value ?? dateRange.end,
                              firstDate: DateTime(2010),
                              lastDate: DateTime.now().add(
                                const Duration(days: 1),
                              ),
                              helpText: 'من',
                            );
                            if (_picked != null) {
                              state.didChange(_picked);
                            }
                          },
                          builder: (context, state) {
                            return state.value != null
                                ? Text(
                                    DateFormat('yyyy/M/d').format(state.value!))
                                : null;
                          },
                          onSaved: (v) => dateRange = DateTimeRange(
                            end: v!,
                            start: dateRange.start,
                          ),
                          validator: (value) =>
                              value == null || value.isBefore(dateRange.start)
                                  ? 'نهاية التاريخ قبل البداية'
                                  : null,
                        ),
                      ),
                    ],
                  ),
                  for (final entry in snapshot.requireData.entries) ...[
                    StreamBuilder<bool>(
                      initialData: false,
                      stream: selected.map((s) => s.contains(entry.key)),
                      builder: (context, entryChecked) => CheckboxListTile(
                        onChanged: (c) {
                          if (c ?? false) {
                            selected.add({...selected.value, entry.key});
                          } else {
                            selected.add(
                              selected.value.difference(
                                {entry.key},
                              ),
                            );
                          }
                        },
                        value: entryChecked.requireData,
                        secondary: PhotoObjectWidget(entry.key),
                        title: Text(entry.key.name),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 26),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          for (final o in entry.value)
                            StreamBuilder<bool>(
                              initialData: false,
                              stream: selected.map((s) => s.contains(o)),
                              builder: (context, checked) => CheckboxListTile(
                                onChanged: (c) {
                                  if (c ?? false) {
                                    selected.add({...selected.value, o});
                                  } else {
                                    selected.add(
                                      selected.value.difference(
                                        {o},
                                      ),
                                    );
                                  }
                                },
                                value: checked.requireData,
                                secondary: PhotoObjectWidget(
                                  o as PhotoObjectBase,
                                ),
                                title: Text(o.name),
                              ),
                            ),
                        ],
                      ),
                    )
                  ],
                  const Divider(thickness: 2, height: 5),
                  CheckboxListTile(
                    value: confessionAnalysis,
                    title: const Text('الاعتراف'),
                    onChanged: (v) => setState(() => confessionAnalysis = v!),
                  ),
                  CheckboxListTile(
                    value: kodasAnalysis,
                    title: const Text('حضور القداس'),
                    onChanged: (v) => setState(() => kodasAnalysis = v!),
                  ),
                  const Divider(thickness: 1),
                  CheckboxListTile(
                    value: callHistoryAnalysis,
                    title: const Text('خدمة المكالمات'),
                    onChanged: (v) => setState(() => callHistoryAnalysis = v!),
                  ),
                  CheckboxListTile(
                    value: visitHistoryAnalysis,
                    title: const Text('الافتقاد'),
                    onChanged: (v) => setState(() => visitHistoryAnalysis = v!),
                  ),
                  CheckboxListTile(
                    value: editHistoryAnalysis,
                    title: const Text('تحديث البيانات'),
                    onChanged: (v) => setState(() => editHistoryAnalysis = v!),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      persistentFooterButtons: [
        TextButton(
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
                  services: selected.value.whereType<Service>().toList(),
                ),
              );

              await selected.close();
            }
          },
          child: const Text('تحليل الحضور'),
        ),
      ],
    );
  }
}
