import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart' hide PhotoObjectWidget,ViewableObjectWidget;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rxdart/rxdart.dart';

class ViewPerson extends StatefulWidget {
  static final route = GoRoute(
    name: 'view_person',
    path: 'viewPerson',
    builder: (context, state) {
      if (state.queryParams['id'] == null) {
        throw ArgumentError.notNull('id');
      }

      return ViewPerson(
        personId: state.queryParams['id']!,
        person: (state.extra as Map?)?['person'] as Person?,
      );
    },
    routes: [
      EditPerson.editPersonRoute,
      ViewUser.route,
      PersonAnalysis.personRoute,
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
  State<ViewPerson> createState() => _ViewPersonState();
}

class _ViewPersonState extends State<ViewPerson> {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Person?>(
      initialData: widget.person,
      stream: CADatabaseRepository.I.persons
          .streamPerson(personId: widget.personId),
      builder: (context, snapshot) {
        final themeData = Theme.of(context);

        if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            ),
            body: ErrorWidget.builder(
              FlutterErrorDetails(exception: snapshot.error!),
            ),
          );
        } else if (!snapshot.hasData &&
            snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (!snapshot.hasData) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            ),
            body: Center(
              child: Text(
                'لم يتم العثور على المخدوم',
                style: themeData.textTheme.titleLarge,
              ),
            ),
          );
        }

        final person = snapshot.requireData!;

        final foregroundColor = person.color.getContrastingColor(
          ListTileTheme.of(context).textColor ??
              themeData.listTileTheme.textColor ??
              themeData.textTheme.subtitle1!.color!,
        );
        return Scaffold(
          body: CustomScrollView(
            controller: scrollController,
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
                    )
                  else
                    IconButton(
                      tooltip: 'تعديل',
                      onPressed: () => context.goNamed(
                        'edit_person',
                        queryParams: {'id': widget.personId},
                        extra: {'person': person},
                      ),
                      icon: const Icon(Icons.edit),
                    ),
                ],
                flexibleSpace: _ViewPersonAppBar(
                  foregroundColor: foregroundColor,
                  person: widget.person ?? person,
                  appBarMaxHeight: 280,
                  scrollController: scrollController,
                  duration: const Duration(milliseconds: 450),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    PhoneNumberProperty(
                      'رقم الهاتف',
                      person.mainPhone,
                      (n) async => _phoneCall(context, n),
                      (n) async => _contactAdd(context, n, person),
                    ),
                    ...person.otherPhones.entries.map(
                      (e) => PhoneNumberProperty(
                        e.key,
                        e.value,
                        (n) async => _phoneCall(context, n),
                        (n) async => _contactAdd(context, n, person),
                      ),
                    ),
                    CopiablePropertyWidget(
                      'العنوان',
                      person.address,
                      additionalOptions: [
                        if (person.geolocation != null)
                          IconButton(
                            icon: const Icon(Icons.map),
                            onPressed: () async => Navigator.of(context).push(
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
                        )
                      else
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
                      title: const Text('الحالة الاجتماعية'),
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
                      trailing: person.isServant && person.user?.email != null
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
                      title: const Text('الحالة الروحية'),
                      subtitle: Text(person.state?.name ?? ''),
                      trailing: person.state?.color == null
                          ? null
                          : ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
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
                              dense: true,
                              forceShowSecondLine: false,
                            ),
                        ],
                      ),
                    ),
                    if (person.family != null)
                      ListTile(
                        title: const Text('العائلة'),
                        subtitle: ViewableObjectWidget<Family>(
                          person.family!,
                          dense: true,
                          forceShowSecondLine: false,
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
                          .paginatePersonKodasHistory(personId: person.id),
                      onRecordNow: () async =>
                          CADatabaseRepository.I.persons.updatePersonLastKodas(
                        personId: widget.personId,
                        lastKodas: DateTime.now(),
                      ),
                    ),
                    HistoryProperty(
                      name: 'أخر اعتراف',
                      value: person.lastConfession?.time,
                      showTime: false,
                      getHistoryStream: () => CADatabaseRepository.I.persons
                          .paginatePersonConfessionHistory(personId: person.id),
                      onRecordNow: () async => CADatabaseRepository.I.persons
                          .updatePersonLastConfession(
                        personId: widget.personId,
                        lastConfession: DateTime.now(),
                      ),
                    ),
                    const Divider(thickness: 1),
                    HistoryProperty(
                      name: 'أخر افتقاد',
                      value: person.lastVisit?.time,
                      getHistoryStream: () => CADatabaseRepository.I.persons
                          .paginatePersonVisitHistory(personId: person.id),
                      onRecordNow: () async =>
                          CADatabaseRepository.I.persons.updatePersonLastVisit(
                        personId: widget.personId,
                        lastVisit: DateTime.now(),
                      ),
                    ),
                    HistoryProperty(
                      name: 'أخر مكالمة',
                      value: person.lastCall?.time,
                      getHistoryStream: () => CADatabaseRepository.I.persons
                          .paginatePersonCallHistory(personId: person.id),
                      onRecordNow: () async =>
                          CADatabaseRepository.I.persons.updatePersonLastCall(
                        personId: widget.personId,
                        lastCall: DateTime.now(),
                      ),
                    ),
                    HistoryProperty(
                      name: 'أخر تحديث للبيانات',
                      value: person.lastEdit?.time,
                      getHistoryStream: () => CADatabaseRepository.I.persons
                          .paginatePersonEditHistory(personId: person.id),
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

  void _analysis(BuildContext context, Person person) {
    context.goNamed(
      'person_analysis',
      queryParams: {
        'id': person.id,
      },
      extra: {
        'person': person,
        'onEditOptions': (
          context,
          options,
          void Function(PersonAnalysisOptions) onComplete,
        ) =>
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
          personId: widget.personId,
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
                  child: const Text('حفظ جهة الاتصال'),
                )
              ],
            ),
          ) ==
          true) {
        final imageFile = person.hasImage
            ? await GetIt.I<ImageUrlCacheService>()
                .getImageFileFromCache(person)
            : null;

        await GetIt.I<ContactsService>().insertContact(
          Contact(
            addresses: [
              if (person.address != null)
                Address(
                  person.address!,
                )
            ],
            name: Name(first: _name.text),
            photo:
                imageFile != null && imageFile.lengthSync() <= 100 * 1024 * 1024
                    ? await imageFile.readAsBytes()
                    : null,
            phones: [Phone(phone ?? '')],
          ),
        );
      }
    }
  }
}

class _ViewPersonAppBar extends StatefulWidget {
  const _ViewPersonAppBar({
    required this.person,
    required this.foregroundColor,
    required this.appBarMaxHeight,
    required this.duration,
    required this.scrollController,
  });

  final Color? foregroundColor;
  final Person person;
  final double appBarMaxHeight;
  final Duration duration;
  final ScrollController scrollController;

  @override
  State<_ViewPersonAppBar> createState() => _ViewPersonAppBarState();
}

class _ViewPersonAppBarState extends State<_ViewPersonAppBar> {
  final _photoAlignTween = AlignmentTween(
    begin: Alignment.center,
    end: Alignment.centerRight,
  );

  final _textAlignTween = TweenSequence(
    [
      TweenSequenceItem(
        tween: AlignmentTween(
          begin: Alignment.bottomCenter,
          end: const Alignment(-0.7, 0),
        ),
        weight: 1,
      ),
      TweenSequenceItem(
        tween: AlignmentTween(
          begin: const Alignment(-0.7, 0),
          end: const Alignment(0.2, 0),
        ),
        weight: 1,
      ),
    ],
  );

  final _bgPositionPercentTween = Tween<double>(
    begin: 0.5,
    end: 1,
  ).chain(
    CurveTween(
      curve: const Interval(0.5, 1, curve: Curves.elasticOut),
    ),
  );

  late final _bgColorTween = ColorTween(
    begin: Theme.of(context).scaffoldBackgroundColor,
    end: widget.foregroundColor,
  ).chain(
    CurveTween(
      curve: const Interval(0.5, 1, curve: Curves.elasticOut),
    ),
  );

  late final _textStyleTeen = TextStyleTween(
    begin: Theme.of(context).textTheme.headlineMedium!.copyWith(
          color: Theme.of(context).textTheme.titleLarge!.color,
        ),
    end: Theme.of(context).textTheme.titleLarge!.copyWith(
          color: widget.foregroundColor,
          fontSize: Theme.of(context).textTheme.titleLarge!.fontSize! * 0.8,
        ),
  );

  final _snapPositions = <double>[0, 0.85, 1];

  @override
  void initState() {
    super.initState();
    widget.scrollController.position.isScrollingNotifier
        .addListener(_scrollListener);
  }

  @override
  void didUpdateWidget(_ViewPersonAppBar oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.scrollController != widget.scrollController) {
      oldWidget.scrollController.position.isScrollingNotifier
          .removeListener(_scrollListener);
      widget.scrollController.position.isScrollingNotifier
          .addListener(_scrollListener);
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final animationValue = 1 -
              (constraints.biggest.height - kToolbarHeight) /
                  (widget.appBarMaxHeight - kToolbarHeight);

          return Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: _bgPositionPercentTween.transform(animationValue) *
                    constraints.biggest.height,
                bottom: 0,
                right: 0,
                left: 0,
                child: ColoredBox(
                  color: themeData.scaffoldBackgroundColor,
                ),
              ),
              _AppBarPhoto(
                foregroundColor: widget.foregroundColor,
                person: widget.person,
                height: constraints.biggest.height,
                photoAlign: _photoAlignTween.lerp(animationValue),
                bgColor: _bgColorTween.transform(animationValue),
              ),
              Align(
                alignment: _textAlignTween.transform(animationValue),
                child: Text(
                  widget.person.name,
                  overflow: TextOverflow.ellipsis,
                  style: _textStyleTeen.transform(animationValue),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  Future<void> _scrollListener() async {
    if (widget.scrollController.position.isScrollingNotifier.value) return;

    final maxScroll = widget.appBarMaxHeight - kToolbarHeight;
    final currentScroll = widget.scrollController.offset;
    final scrollPercent = currentScroll / maxScroll;

    if (scrollPercent < 1) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final nearestSnap = _snapPositions.reduce(
          (nearest, current) =>
              (current - scrollPercent).abs() < (nearest - scrollPercent).abs()
                  ? current
                  : nearest,
        );

        widget.scrollController.animateTo(
          nearestSnap * maxScroll,
          duration: widget.duration,
          curve: Curves.easeOutExpo,
        );
      });
    }
  }

  @override
  void dispose() {
    widget.scrollController.position.isScrollingNotifier
        .removeListener(_scrollListener);

    super.dispose();
  }
}

class _AppBarPhoto extends StatelessWidget {
  const _AppBarPhoto({
    required this.photoAlign,
    required this.bgColor,
    required this.height,
    required this.person,
    required this.foregroundColor,
  });

  final Person person;

  final double height;
  final Alignment photoAlign;
  final Color? bgColor;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Transform.scale(
      scale: 0.8,
      child: Align(
        alignment: photoAlign,
        child: ProgressIndicatorTheme(
          data: themeData.progressIndicatorTheme.copyWith(
            color: themeData.brightness == Brightness.light
                ? themeData.colorScheme.onPrimary
                : themeData.colorScheme.onSurface,
          ),
          child: IconTheme(
            data: IconTheme.of(context).copyWith(color: foregroundColor),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: bgColor ?? Colors.transparent,
                shape: BoxShape.circle,
              ),
              child: ImageObjectWidget(person),
            ),
          ),
        ),
      ),
    );
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

  @override
  Widget build(BuildContext context) {
    final field = getField(person) ?? <T>[];

    return Column(
      children: [
        for (final o in field)
          if (field.length >= 6 && o == field[5])
            ExpansionTile(
              title: const Text('اظهار المزيد'),
              children: [
                ViewableObjectWidget(
                  o,
                  dense: true,
                  forceShowSecondLine: _hasSubtitle(o),
                  subtitle: _hasSubtitle(o)
                      ? _ShowMoreSubtitle(
                          viewable: o,
                          dateFormat: dateFormat,
                        )
                      : null,
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
                                dense: true,
                                forceShowSecondLine: _hasSubtitle(o),
                                subtitle: _hasSubtitle(o)
                                    ? _ShowMoreSubtitle(
                                        viewable: o,
                                        dateFormat: dateFormat,
                                      )
                                    : null,
                              ),
                          ],
                        ),
                ),
              ],
            )
          else
            ViewableObjectWidget(
              o,
              dense: true,
              forceShowSecondLine: _hasSubtitle(o),
              subtitle: _hasSubtitle(o)
                  ? _ShowMoreSubtitle(
                      viewable: o,
                      dateFormat: dateFormat,
                    )
                  : null,
            ),
      ],
    );
  }

  bool _hasSubtitle(T o) =>
      o is AttendanceAnalyzable &&
      (o as AttendanceAnalyzable).attendanceHistoryAggregate?.aggregate.max !=
          null;
}

class _ShowMoreSubtitle<T extends Viewable> extends StatelessWidget {
  const _ShowMoreSubtitle({
    required this.dateFormat,
    required this.viewable,
  });

  final T viewable;
  final DateFormat dateFormat;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text(
            (viewable as AttendanceAnalyzable)
                .attendanceHistoryAggregate!
                .aggregate
                .max!
                .toDurationString(),
          ),
        ),
        Text(
          dateFormat.format(
            (viewable as AttendanceAnalyzable)
                .attendanceHistoryAggregate!
                .aggregate
                .max!,
          ),
          style: Theme.of(context).textTheme.overline,
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تحليل الحضور في'),
      ),
      body: StreamBuilder<Map<Service, List<ViewableWithIDAndImage>>>(
        initialData: <ViewableWithIDAndImage>[
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
              (p) => <ViewableWithIDAndImage>[
                ...p?.classes ?? [],
                ...p?.groups ?? []
              ].groupListsBy(
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
                                    DateFormat('yyyy/M/d').format(state.value!),
                                  )
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
                                    DateFormat('yyyy/M/d').format(state.value!),
                                  )
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
                                <ViewableWithID>{entry.key},
                              ),
                            );
                          }
                        },
                        value: entryChecked.requireData,
                        secondary: ImageObjectWidget(entry.key),
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
                                        <ViewableWithID>{o},
                                      ),
                                    );
                                  }
                                },
                                value: checked.requireData,
                                secondary: ImageObjectWidget(
                                  o,
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

  @override
  Future<void> dispose() async {
    await selected.close();

    super.dispose();
  }
}
