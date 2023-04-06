import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart'
    show ContrastingColor, TappableFormField;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:mime/mime.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rxdart/rxdart.dart';
import 'package:transparent_pointer/transparent_pointer.dart';
import 'package:tuple/tuple.dart';
import 'package:universal_file/universal_file.dart';
import 'package:uuid/uuid.dart';

import 'photo_field_state.dart';

class EditPerson extends StatefulWidget {
  static final route = GoRoute(
    path: 'editPerson',
    builder: (context, state) {
      return EditPerson(
        person: (state.extra as Map?)?['person'] as Person?,
      );
    },
  );

  final Person? person;

  const EditPerson({
    required this.person,
    super.key,
  });

  @override
  State<EditPerson> createState() => _EditPersonState();
}

class _EditPersonState extends State<EditPerson> {
  late Person initialPerson =
      widget.person ?? Person(id: const Uuid().v4(), name: 'مخدوم جديد');
  late Person newPerson = initialPerson;

  bool _saveLock = false;
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  String? _suggestedAddress;
  PhotoFieldState _photoState = PhotoFieldState(deletePhoto: false);

  bool _classesAndGroupsLoaded = false;

  @override
  void initState() {
    super.initState();

    if (widget.person == null) {
      _classesAndGroupsLoaded = true;
    } else {
      WidgetsBinding.instance.addPostFrameCallback(
        (_) async {
          final classesAndGroupsData = await DatabaseService.I.persons
              .personServicesClassesGroups(personId: initialPerson.id);

          initialPerson = initialPerson.copyWith(
            services: classesAndGroupsData?.services ?? initialPerson.services,
            classes: classesAndGroupsData?.classes ?? initialPerson.classes,
            groups: classesAndGroupsData?.groups ?? initialPerson.groups,
          );
          newPerson = initialPerson;
          _classesAndGroupsLoaded = true;

          if (mounted) {
            setState(() {});
          }
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final foregroundColor = newPerson.color.getContrastingColor(
      ListTileTheme.of(context).textColor ??
          themeData.listTileTheme.textColor ??
          themeData.textTheme.titleMedium!.color!,
    );

    return Theme(
      data: CAThemingService.getDefault(primaryOverride: newPerson.color),
      child: Scaffold(
        body: Form(
          key: _form,
          onWillPop: _confirmExit,
          child: CustomScrollView(
            slivers: [
              FormField<PhotoFieldState>(
                initialValue: _photoState,
                onSaved: (v) =>
                    v?.hasChanged ?? false ? _photoState = v! : null,
                builder: (state) => SliverAppBar(
                  backgroundColor: newPerson.color,
                  foregroundColor: foregroundColor,
                  stretch: true,
                  pinned: true,
                  expandedHeight: MediaQuery.of(context).size.height * 0.4,
                  actions: [
                    IconButton(
                      onPressed: () async {
                        final source = await ImagePickerService.I
                            .showSourceSheet(context: context);

                        if (source == null) {
                          return;
                        } else if (source == ImagePickerService.deleteImage) {
                          state
                            ..didChange(PhotoFieldState(deletePhoto: true))
                            ..save();
                        }

                        if (!mounted) return;

                        final newPhoto =
                            await ImagePickerService.I.pickAndCropImage(
                          context: context,
                          source: source as ImageSource,
                          cropStyle: CropStyle.circle,
                          lockAspectRatio: true,
                        );
                        if (newPhoto != null) {
                          state
                            ..didChange(
                              PhotoFieldState(
                                deletePhoto: false,
                                newPhoto: newPhoto,
                              ),
                            )
                            ..save();
                        }
                      },
                      icon: const Icon(Icons.photo_camera),
                      tooltip: 'اختيار صورة',
                    ),
                    if (widget.person != null &&
                        widget.person?.user?.email == null)
                      IconButton(
                        onPressed: _delete,
                        icon: const Icon(Icons.delete),
                        tooltip: 'حذف',
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
                          title: TransparentPointer(
                            child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 300),
                              opacity: constraints.biggest.height >
                                      kToolbarHeight * 2
                                  ? 0
                                  : 1,
                              child: Text(
                                widget.person?.name ?? newPerson.name,
                                style: themeData.textTheme.titleLarge?.copyWith(
                                  color: foregroundColor,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          background: GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            child: ProgressIndicatorTheme(
                              data: themeData.progressIndicatorTheme.copyWith(
                                color: themeData.brightness == Brightness.light
                                    ? themeData.colorScheme.onPrimary
                                    : themeData.colorScheme.onSurface,
                              ),
                              child: IconTheme(
                                data: IconTheme.of(context)
                                    .copyWith(color: foregroundColor),
                                child: state.value!.hasChanged
                                    ? state.value!.deletePhoto
                                        ? ImageObjectWidget(
                                            Person(id: '', name: ''),
                                            circleCrop: false,
                                          )
                                        : Image.file(
                                            File(state.value!.newPhoto!.path),
                                          )
                                    : ImageObjectWidget(
                                        newPerson,
                                        circleCrop: false,
                                      ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: FocusScope(
                  debugLabel: 'EditPersonFocusScope',
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: Builder(
                      builder: (context) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            _FieldWrapper(
                              builder: (context) => TextFormField(
                                key: ValueKey(newPerson.name),
                                decoration: const InputDecoration(
                                  labelText: 'الاسم',
                                ),
                                initialValue: newPerson.name,
                                keyboardType: TextInputType.name,
                                autofillHints: const [AutofillHints.name],
                                onChanged: (value) =>
                                    newPerson = newPerson.copyWith(
                                  name: value.trim(),
                                ),
                                textInputAction: TextInputAction.next,
                                textCapitalization: TextCapitalization.words,
                                validator: (value) {
                                  if (value?.trim().isEmpty ?? true) {
                                    return 'يجب ملئ الاسم';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            _FieldWrapper(
                              builder: (context) => TextFormField(
                                key: ValueKey(newPerson.mainPhone),
                                decoration: InputDecoration(
                                  labelText: 'رقم الهاتف',
                                  suffixIcon:
                                      CurrentPlatformService.I.isAndroid ||
                                              CurrentPlatformService.I.isIOS
                                          ? IconButton(
                                              tooltip: 'اختيار من جهات الاتصال',
                                              onPressed: _importFromContacts,
                                              icon: const Icon(Icons.contacts),
                                            )
                                          : null,
                                ),
                                onFieldSubmitted: (_) {
                                  FocusScope.of(context).nextFocus();
                                  if (newPerson.otherPhones.isEmpty) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                initialValue: newPerson.mainPhone,
                                keyboardType: TextInputType.phone,
                                autofillHints: const [
                                  AutofillHints.telephoneNumber
                                ],
                                textInputAction: TextInputAction.next,
                                onChanged: (value) =>
                                    newPerson = newPerson.copyWith(
                                  mainPhone: PhoneNumberService.I
                                      .formatInternational(value)
                                      .replaceAll('+20', '0'),
                                ),
                                validator: (v) => v != null && v.isNotEmpty
                                    ? _validatePhoneField(v)
                                    : null,
                                inputFormatters: [
                                  TextInputFormatter.withFunction(
                                    (oldValue, newValue) => newValue.copyWith(
                                      text: newValue.text
                                          .replaceAll(RegExp(r'[^\d\+]'), ''),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ...newPerson.otherPhones.entries.mapIndexed(
                                  (i, e) {
                                    return _FieldWrapper(
                                      builder: (context) {
                                        return TextFormField(
                                          decoration: InputDecoration(
                                            labelText: e.key,
                                            hintText: 'مثال: 01234...',
                                            suffixIcon: IconButton(
                                              icon: const Icon(Icons.edit),
                                              tooltip: 'تعديل اسم الهاتف',
                                              onPressed: () async {
                                                final name =
                                                    await _getPhoneFieldName(
                                                  true,
                                                  e.key,
                                                );

                                                if (name == true) {
                                                  newPerson =
                                                      newPerson.copyWith(
                                                    otherPhones: {
                                                      for (final p in newPerson
                                                          .otherPhones.entries)
                                                        if (p.key != e.key)
                                                          p.key: p.value
                                                    },
                                                  );
                                                  if (mounted) setState(() {});
                                                } else if (name is String) {
                                                  newPerson =
                                                      newPerson.copyWith(
                                                    otherPhones: {
                                                      for (final p in newPerson
                                                          .otherPhones.entries)
                                                        if (p.key != e.key)
                                                          p.key: p.value,
                                                      name: e.value
                                                    },
                                                  );

                                                  setState(() {});
                                                }
                                              },
                                            ),
                                          ),
                                          onFieldSubmitted: (_) {
                                            FocusScope.of(context).nextFocus();
                                            if (i ==
                                                newPerson.otherPhones.length -
                                                    1) {
                                              FocusScope.of(context)
                                                  .nextFocus();
                                            }
                                          },
                                          keyboardType: TextInputType.phone,
                                          autofillHints: const [
                                            AutofillHints.telephoneNumber
                                          ],
                                          initialValue: e.value,
                                          onChanged: (value) =>
                                              newPerson = newPerson.copyWith(
                                            otherPhones: {
                                              ...newPerson.otherPhones,
                                              e.key: PhoneNumberService.I
                                                  .formatInternational(
                                                    value,
                                                  )
                                                  .replaceAll('+20', '0'),
                                            },
                                          ),
                                          validator: _validatePhoneField,
                                          inputFormatters: [
                                            TextInputFormatter.withFunction(
                                              (oldValue, newValue) =>
                                                  newValue.copyWith(
                                                text: newValue.text
                                                    .replaceAll(r'[^\d\+]', ''),
                                              ),
                                            )
                                          ],
                                          textInputAction: TextInputAction.next,
                                        );
                                      },
                                    );
                                  },
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: ElevatedButton.icon(
                                    icon: const Icon(Icons.add),
                                    label: const Text('اضافة رقم هاتف أخر'),
                                    onPressed: () async {
                                      final name = await _getPhoneFieldName();
                                      if (name is String) {
                                        newPerson = newPerson.copyWith(
                                          otherPhones: {
                                            ...newPerson.otherPhones,
                                            name: '',
                                          },
                                        );

                                        if (mounted) setState(() {});
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const Divider(thickness: 1),
                            //TODO: address fields (eg block number, Street, Area ...)
                            _FieldWrapper(
                              builder: (context) => TextFormField(
                                key: ValueKey(newPerson.address),
                                decoration: InputDecoration(
                                  labelText: 'العنوان والموقع',
                                  suffixIcon: IconButton(
                                    onPressed: () async =>
                                        _editGeoLocation(context),
                                    icon: const Icon(Icons.edit_location),
                                  ),
                                ),
                                initialValue: newPerson.address,
                                onChanged: (value) =>
                                    newPerson = newPerson.copyWith(
                                  address: value.trim(),
                                ),
                                textInputAction: TextInputAction.next,
                                textCapitalization: TextCapitalization.words,
                                validator: (value) => null,
                              ),
                            ),
                            if (_suggestedAddress != null)
                              Card(
                                elevation: 5,
                                child: ListTile(
                                  title: const Text('تم ايجاد عنوان مقترح:'),
                                  subtitle: Text(_suggestedAddress!),
                                  trailing: TextButton.icon(
                                    onPressed: () => setState(
                                      () {
                                        newPerson = newPerson.copyWith(
                                          address: _suggestedAddress,
                                        );
                                        _suggestedAddress = null;
                                      },
                                    ),
                                    icon: const Icon(Icons.done),
                                    label:
                                        const Text('استخدام العنوان المقترح'),
                                  ),
                                ),
                              ),
                            const Divider(thickness: 1),
                            DateTimeField(
                              label: 'تاريخ الميلاد',
                              initialValue: newPerson.birthdate,
                              nullable: true,
                              onChanged: (v) {
                                newPerson = newPerson.copyWith(birthdate: v);
                              },
                              validator: (v) => null,
                            ),
                            const Divider(thickness: 1),
                            TappableFormField<Tuple2<Set<Service>, Set<Group>>>(
                              key: ValueKey(
                                Tuple2(
                                  newPerson.services?.toSet() ?? {},
                                  newPerson.groups?.toSet() ?? {},
                                ),
                              ),
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (v) {
                                //Checks if the person is student and studyYear != null,
                                //if so check that person studyYear falls between all services
                                //that have studyYear range
                                //
                                //Then invoke the general check

                                if (newPerson.isStudent &&
                                    newPerson.studyYear != null &&
                                    v!.item1.any(
                                      (s) =>
                                          s.fromStudyYear == null ||
                                          s.toStudyYear == null ||
                                          (newPerson.studyYear!.order <
                                                  s.fromStudyYear!.order ||
                                              newPerson.studyYear!.order >
                                                  s.toStudyYear!.order),
                                    )) {
                                  return 'بعض الخدمات لا تناسب السنة الدراسية للمخدوم'
                                      '\nيرجى تغيير السنة الدراسية او ازالة التحديد من احدى الخدمات';
                                }
                                return _personGeneralCheckValidator();
                              },
                              decoration: (context, state) => InputDecoration(
                                prefixIcon: !_classesAndGroupsLoaded
                                    ? const Center(
                                        heightFactor: 1,
                                        widthFactor: 1,
                                        child: SizedBox(
                                          height: 30,
                                          width: 30,
                                          child: CircularProgressIndicator(),
                                        ),
                                      )
                                    : null,
                                errorText: state.errorText,
                                labelText: 'الخدمات والمجموعات المشارك بها',
                                errorMaxLines: 3,
                              ),
                              initialValue: Tuple2(
                                newPerson.services?.toSet() ?? {},
                                newPerson.groups?.toSet() ?? {},
                              ),
                              onTap: _selectServices,
                              builder: (context, state) {
                                if (state.value != null &&
                                    state.value!.item1.isNotEmpty) {
                                  final combinedServices =
                                      _combineGroupsWithServices(
                                    state.value!.item1,
                                    state.value!.item2,
                                  );

                                  return ExcludeFocus(
                                    child: IgnorePointer(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          for (final s in combinedServices) ...[
                                            ViewableObjectWidget(
                                              s,
                                              dense: true,
                                              forceShowSecondLine: false,
                                            ),
                                            for (final g
                                                in s.groups ?? <Group>[])
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  right: 26,
                                                ),
                                                child: Card(
                                                  elevation: 0,
                                                  child: ViewableObjectWidget(
                                                    g,
                                                    dense: true,
                                                    forceShowSecondLine: false,
                                                    wrapInCard: false,
                                                  ),
                                                ),
                                              )
                                          ]
                                        ],
                                      ),
                                    ),
                                  );
                                }

                                return const Text('لا يوجد خدمات أو مجموعات');
                              },
                            ),
                            FormField<bool>(
                              initialValue: newPerson.isStudent,
                              builder: (state) => CheckboxListTile(
                                title: const Text('طالب؟'),
                                value: state.value,
                                onChanged: (v) {
                                  state.didChange(v);
                                  newPerson = v!
                                      ? newPerson.copyWith(
                                          isStudent: v,
                                          qualification: null,
                                          qualificationId: null,
                                          job: null,
                                          jobId: null,
                                          jobDescription: null,
                                        )
                                      : newPerson.copyWith(
                                          isStudent: v,
                                          studyYear: null,
                                          studyYearId: null,
                                          college: null,
                                          collegeId: null,
                                          school: null,
                                          schoolId: null,
                                        );
                                  setState(() {});
                                },
                              ),
                            ),
                            if (newPerson.isStudent) ...[
                              ObjectSelectionField<StudyYear, StudyYear?>(
                                initialValue: newPerson.studyYear,
                                listController: (s) =>
                                    ViewableObjectListController(
                                  objectsPaginatableStream: DatabaseService
                                      .I.metadata.studyYears
                                      .paginateStudyYears(searchQuery: s),
                                ),
                                labelText: 'السنة الدراسية',
                                onChanged: (value) =>
                                    newPerson = newPerson.copyWith(
                                  //Store the selected object
                                  //so we can build the widget based on it ...
                                  studyYear: value,
                                  //... and its id to send it in the mutation
                                  studyYearId: value?.order,
                                ),
                                builder: (context, state) {
                                  return state.value != null
                                      ? Text(state.value!.name)
                                      : null;
                                },
                                validator: (v) => null,
                              ),
                              if (newPerson.studyYear?.order != null &&
                                  newPerson.studyYear!.order > 12) ...[
                                /* ObjectSelectionField<University, University?>(
                                      initialValue: newPerson.college?.university,
                                      listController: (s)=>ListControllerBase( objectsPaginatableStream:CADatabaseRepository.I.metadata.universities.watchAllUniversities(searchQuery:s),),
                                      labelText: 'الجامعةpaginate                                    onC: (value) => newPerson =
                                          newPerson.copyWith(universityId: value?.id),
                                      builder: (context, state) {
                                        return state.value != null
                                            ? Text(state.value!.name)
                                            : null;
                                      },
                                    ), */
                                ObjectSelectionField<College, College?>(
                                  initialValue: newPerson.college,
                                  listController: (s) =>
                                      ViewableObjectListController(
                                    objectsPaginatableStream: DatabaseService
                                        .I.metadata.colleges
                                        .paginateColleges(searchQuery: s),
                                  ),
                                  labelText: 'الكلية',
                                  onChanged: (value) =>
                                      newPerson = newPerson.copyWith(
                                    //Store the selected object
                                    //so we can build the widget based on it ...
                                    college: value,
                                    //... and its id to send it in the mutation
                                    collegeId: value?.id,
                                  ),
                                  builder: (context, state) {
                                    return state.value != null
                                        ? Text(state.value!.name)
                                        : null;
                                  },
                                  validator: (v) => null,
                                ),
                              ] else
                                ObjectSelectionField<School, School?>(
                                  initialValue: newPerson.school,
                                  listController: (s) =>
                                      ViewableObjectListController(
                                    objectsPaginatableStream: DatabaseService
                                        .I.metadata.schools
                                        .paginateSchools(searchQuery: s),
                                  ),
                                  labelText: 'المدرسة',
                                  onChanged: (value) =>
                                      newPerson = newPerson.copyWith(
                                    //Store the selected object
                                    //so we can build the widget based on it ...
                                    school: value,
                                    //... and its id to send it in the mutation
                                    schoolId: value?.id,
                                  ),
                                  builder: (context, state) {
                                    return state.value != null
                                        ? Text(state.value!.name)
                                        : null;
                                  },
                                  validator: (v) => null,
                                )
                            ] else ...[
                              ObjectSelectionField<Qualification,
                                  Qualification?>(
                                initialValue: newPerson.qualification,
                                listController: (s) =>
                                    ViewableObjectListController(
                                  objectsPaginatableStream: DatabaseService
                                      .I.metadata.qualifications
                                      .paginateQualifications(searchQuery: s),
                                ),
                                labelText: 'المؤهل',
                                onChanged: (value) =>
                                    newPerson = newPerson.copyWith(
                                  //Store the selected object
                                  //so we can build the widget based on it ...
                                  qualification: value,
                                  //... and its id to send it in the mutation
                                  qualificationId: value?.id,
                                ),
                                builder: (context, state) {
                                  return state.value != null
                                      ? Text(state.value!.name)
                                      : null;
                                },
                                validator: (v) => null,
                              ),
                              ObjectSelectionField<Job, Job?>(
                                initialValue: newPerson.job,
                                listController: (s) =>
                                    ViewableObjectListController(
                                  objectsPaginatableStream: DatabaseService
                                      .I.metadata.jobs
                                      .paginateJobs(searchQuery: s),
                                ),
                                labelText: 'الوظيفة',
                                onChanged: (value) =>
                                    newPerson = newPerson.copyWith(
                                  //Store the selected object
                                  //so we can build the widget based on it ...
                                  job: value,
                                  //... and its id to send it in the mutation
                                  jobId: value?.id,
                                ),
                                builder: (context, state) {
                                  return state.value != null
                                      ? Text(state.value!.name)
                                      : null;
                                },
                                validator: (v) => null,
                              ),
                              _FieldWrapper(
                                builder: (context) => TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: 'تفاصيل الوظيفة',
                                  ),
                                  initialValue: newPerson.jobDescription,
                                  onChanged: (value) =>
                                      newPerson = newPerson.copyWith(
                                    jobDescription: value.trim(),
                                  ),
                                  textInputAction: TextInputAction.next,
                                  validator: (value) => null,
                                ),
                              ),
                            ],
                            const Divider(thickness: 1),
                            DropdownButtonFormField<bool>(
                              decoration: const InputDecoration(
                                labelText: 'النوع',
                              ),
                              items: const [
                                DropdownMenuItem(
                                  value: true,
                                  child: Text('ذكر'),
                                ),
                                DropdownMenuItem(
                                  value: false,
                                  child: Text('أنثى'),
                                ),
                              ],
                              onChanged: (v) {
                                newPerson = v!
                                    ? newPerson.copyWith(gender: v)
                                    : newPerson.copyWith(
                                        gender: v,
                                        isShammas: false,
                                        shammasLevel: null,
                                        shammasLevelId: null,
                                      );
                                setState(() {});
                              },
                              value: newPerson.gender,
                            ),
                            ObjectSelectionField<PersonType, PersonType?>(
                              initialValue: newPerson.personType,
                              listController: (s) =>
                                  ViewableObjectListController(
                                objectsPaginatableStream: DatabaseService
                                    .I.metadata.personTypes
                                    .paginatePersonTypes(searchQuery: s),
                              ),
                              labelText: 'الحالة الاجتماعية',
                              onChanged: (value) =>
                                  newPerson = newPerson.copyWith(
                                //Store the selected object
                                //so we can build the widget based on it ...
                                personType: value,
                                //... and its id to send it in the mutation
                                personTypeId: value?.id,
                              ),
                              builder: (context, state) {
                                return state.value != null
                                    ? Text(state.value!.name)
                                    : null;
                              },
                              validator: (v) => null,
                            ),
                            const Divider(thickness: 1),
                            if (newPerson.gender)
                              FormField<bool>(
                                initialValue: newPerson.isShammas,
                                builder: (state) => CheckboxListTile(
                                  title: const Text('شماس؟'),
                                  value: state.value,
                                  onChanged: (v) {
                                    state.didChange(v);
                                    newPerson = v!
                                        ? newPerson.copyWith(isShammas: v)
                                        : newPerson.copyWith(
                                            isShammas: v,
                                            shammasLevel: null,
                                            shammasLevelId: null,
                                          );
                                    setState(() {});
                                  },
                                ),
                              ),
                            if (newPerson.gender && newPerson.isShammas)
                              ObjectSelectionField<ShammasLevel, ShammasLevel?>(
                                initialValue: newPerson.shammasLevel,
                                listController: (s) =>
                                    ViewableObjectListController(
                                  objectsPaginatableStream: DatabaseService
                                      .I.metadata.shammasLevels
                                      .paginateShammasLevels(searchQuery: s),
                                ),
                                labelText: 'رتبة الشموسية',
                                onChanged: (value) =>
                                    newPerson = newPerson.copyWith(
                                  //Store the selected object
                                  //so we can build the widget based on it ...
                                  shammasLevel: value,
                                  //... and its id to send it in the mutation
                                  shammasLevelId: value?.id,
                                ),
                                builder: (context, state) {
                                  return state.value != null
                                      ? Text(state.value!.name)
                                      : null;
                                },
                              ),
                            ObjectSelectionField<Church, Church?>(
                              initialValue: newPerson.church,
                              listController: (s) =>
                                  ViewableObjectListController(
                                objectsPaginatableStream: DatabaseService
                                    .I.metadata.churches
                                    .paginateChurches(searchQuery: s),
                              ),
                              labelText: 'الكنيسة',
                              onChanged: (value) =>
                                  newPerson = newPerson.copyWith(
                                //Store the selected object
                                //so we can build the widget based on it ...
                                church: value,
                                //... and its id to send it in the mutation
                                churchId: value?.id,
                              ),
                              builder: (context, state) {
                                return state.value != null
                                    ? Text(state.value!.name)
                                    : null;
                              },
                              validator: (v) => null,
                            ),
                            ObjectSelectionField<Father, Father?>(
                              initialValue: newPerson.father,
                              listController: (s) =>
                                  ViewableObjectListController(
                                objectsPaginatableStream: DatabaseService
                                    .I.metadata.fathers
                                    .paginateFathers(searchQuery: s),
                              ),
                              labelText: 'أب الاعتراف',
                              onChanged: (value) =>
                                  newPerson = newPerson.copyWith(
                                //Store the selected object
                                //so we can build the widget based on it ...
                                father: value,
                                //... and its id to send it in the mutation
                                fatherId: value?.id,
                              ),
                              builder: (context, state) {
                                return state.value != null
                                    ? Text(state.value!.name)
                                    : null;
                              },
                              validator: (v) => null,
                            ),
                            FormField<bool>(
                              initialValue: newPerson.isServant,
                              builder: (state) => CheckboxListTile(
                                title: const Text('خادم؟'),
                                value: state.value,
                                onChanged: (v) {
                                  state.didChange(v);
                                  newPerson = newPerson.copyWith(isServant: v!);
                                },
                              ),
                            ),
                            const Divider(thickness: 1),
                            ObjectSelectionField<PersonState, PersonState?>(
                              initialValue: newPerson.state,
                              listController: (s) =>
                                  ViewableObjectListController(
                                objectsPaginatableStream: DatabaseService
                                    .I.metadata.personStates
                                    .paginatePersonStates(searchQuery: s),
                              ),
                              labelText: 'الحالة الروحية',
                              onChanged: (value) =>
                                  newPerson = newPerson.copyWith(
                                //Store the selected object
                                //so we can build the widget based on it ...
                                state: value,
                                //... and its id to send it in the mutation
                                stateId: value?.id,
                              ),
                              builder: (context, state) {
                                return state.value != null
                                    ? IgnorePointer(
                                        child: ViewableObjectWidget(
                                          state.value!,
                                          wrapInCard: false,
                                          dense: true,
                                          forceShowSecondLine: false,
                                          trailing: state.value?.color == null
                                              ? null
                                              : ClipRRect(
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                    Radius.circular(10),
                                                  ),
                                                  child: Container(
                                                    width: 50,
                                                    height: 50,
                                                    color: state.value!.color,
                                                  ),
                                                ),
                                        ),
                                      )
                                    : null;
                              },
                              validator: (v) => null,
                            ),
                            MultiObjectSelectionField<Hobby>(
                              validator: _personGeneralCheckValidator,
                              decoration: const InputDecoration(
                                labelText: 'الهوايات',
                                errorMaxLines: 2,
                              ),
                              onChanged: (s) => newPerson =
                                  newPerson.copyWith(hobbies: s?.toList()),
                              initialValue: newPerson.hobbies?.toSet() ?? {},
                              listController: (s) =>
                                  ViewableObjectListController(
                                objectsPaginatableStream: DatabaseService
                                    .I.metadata.hobbies
                                    .paginateHobbies(searchQuery: s),
                              ),
                              labelText: 'الهوايات',
                              builder: (context, state) {
                                return state.value != null &&
                                        state.value!.isNotEmpty
                                    ? Wrap(
                                        spacing: 3,
                                        children: [
                                          for (final hobby
                                              in state.value ?? <Hobby>[])
                                            Material(
                                              type: MaterialType.transparency,
                                              child: Chip(
                                                side: BorderSide(
                                                  color: Theme.of(context)
                                                          .textTheme
                                                          .labelSmall!
                                                          .color
                                                          .getContrastingColor(
                                                            hobby.color ??
                                                                Colors
                                                                    .transparent,
                                                          ) ??
                                                      Theme.of(context)
                                                          .textTheme
                                                          .labelSmall!
                                                          .color!,
                                                ),
                                                label: Text(
                                                  hobby.name,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelSmall!
                                                      .copyWith(
                                                        color: Theme.of(context)
                                                            .textTheme
                                                            .labelSmall!
                                                            .color
                                                            .getContrastingColor(
                                                              hobby.color ??
                                                                  Colors
                                                                      .transparent,
                                                            ),
                                                      ),
                                                ),
                                                backgroundColor: hobby.color,
                                              ),
                                            )
                                        ],
                                      )
                                    : const Text('لا يوجد هوايات');
                              },
                            ),
                            MultiObjectSelectionField<Tag>(
                              validator: _personGeneralCheckValidator,
                              decoration: const InputDecoration(
                                labelText: 'الشارات',
                                errorMaxLines: 2,
                              ),
                              onChanged: (s) => newPerson =
                                  newPerson.copyWith(tags: s?.toList()),
                              initialValue: newPerson.tags?.toSet() ?? {},
                              listController: (s) =>
                                  ViewableObjectListController(
                                objectsPaginatableStream: DatabaseService
                                    .I.metadata.tags
                                    .paginateTags(searchQuery: s),
                              ),
                              labelText: 'الشارات',
                              builder: (context, state) {
                                return state.value != null &&
                                        state.value!.isNotEmpty
                                    ? Wrap(
                                        spacing: 3,
                                        children: [
                                          for (final tag
                                              in state.value ?? <Tag>[])
                                            Material(
                                              type: MaterialType.transparency,
                                              child: Chip(
                                                side: BorderSide(
                                                  color: Theme.of(context)
                                                          .textTheme
                                                          .labelSmall!
                                                          .color
                                                          .getContrastingColor(
                                                            tag.color ??
                                                                Colors
                                                                    .transparent,
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
                                                              tag.color ??
                                                                  Colors
                                                                      .transparent,
                                                            ),
                                                      ),
                                                ),
                                                backgroundColor: tag.color,
                                              ),
                                            ),
                                        ],
                                      )
                                    : const Text('لا يوجد شارات');
                              },
                            ),
                            ColorField(
                              initialValue: newPerson.color,
                              onChanged: (value) => setState(
                                () => newPerson =
                                    newPerson.copyWith(color: value),
                              ),
                            ),

                            _FieldWrapper(
                              builder: (context) => TextFormField(
                                decoration: const InputDecoration(
                                  labelText: 'ملاحظات',
                                ),
                                initialValue: newPerson.notes,
                                onChanged: (value) =>
                                    newPerson = newPerson.copyWith(
                                  notes: value.trim(),
                                ),
                                textInputAction: TextInputAction.next,
                                maxLines: null,
                                validator: (value) => null,
                              ),
                            ),
                            const Divider(thickness: 1),
                            ObjectSelectionField<Family, Family?>(
                              validator: _personGeneralCheckValidator,
                              decoration:
                                  const InputDecoration(errorMaxLines: 2),
                              initialValue: newPerson.family,
                              listController: (s) =>
                                  ViewableObjectListController(
                                objectsPaginatableStream: DatabaseService
                                    .I.families
                                    .paginateFamilies(searchQuery: s),
                              ),
                              labelText: 'العائلة',
                              onChanged: (value) =>
                                  newPerson = newPerson.copyWith(
                                //Store the selected object
                                //so we can build the widget based on it ...
                                family: value,
                                //... and its id to send it in the mutation
                                familyId: value?.id,
                              ),
                              builder: (context, state) {
                                return state.value != null
                                    ? IgnorePointer(
                                        child: ViewableObjectWidget(
                                          state.value!,
                                          dense: true,
                                        ),
                                      )
                                    : null;
                              },
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
                            DateTimeField(
                              label: 'أخر تناول',
                              initialValue: newPerson.lastKodas?.time,
                              onChanged: (v) {
                                if (v != null) {
                                  newPerson = newPerson.copyWith(
                                    lastKodas: LastRecordedByInfo(
                                      time: v,
                                      recordedBy:
                                          AuthService.I.currentUser?.uid,
                                    ),
                                  );
                                }
                              },
                              validator: (v) => null,
                            ),
                            DateTimeField(
                              label: 'أخر اعتراف',
                              initialValue: newPerson.lastConfession?.time,
                              onChanged: (v) {
                                if (v != null) {
                                  newPerson = newPerson.copyWith(
                                    lastConfession: LastRecordedByInfo(
                                      time: v,
                                      recordedBy:
                                          AuthService.I.currentUser?.uid,
                                    ),
                                  );
                                }
                              },
                              validator: (v) => null,
                            ),
                            const Divider(thickness: 1),
                            DateTimeField(
                              label: 'أخر افتقاد',
                              initialValue: newPerson.lastVisit?.time,
                              onChanged: (v) {
                                if (v != null) {
                                  newPerson = newPerson.copyWith(
                                    lastVisit: LastRecordedByInfo(
                                      time: v,
                                      recordedBy:
                                          AuthService.I.currentUser?.uid,
                                    ),
                                  );
                                }
                              },
                              validator: (v) => null,
                            ),
                            DateTimeField(
                              label: 'أخر مكالمة',
                              initialValue: newPerson.lastCall?.time,
                              onChanged: (v) {
                                if (v != null) {
                                  newPerson = newPerson.copyWith(
                                    lastCall: LastRecordedByInfo(
                                      time: v,
                                      recordedBy:
                                          AuthService.I.currentUser?.uid,
                                    ),
                                  );
                                }
                              },
                              validator: (v) => null,
                            ),
                            const SizedBox(height: 80),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _save,
          tooltip: 'حفظ',
          child: const Icon(Icons.save),
        ),
      ),
    );
  }

  Future<void> _delete() async {
    final navigator = Navigator.of(context);
    final rslt = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('هل تريد حذف ' + initialPerson.name + '؟'),
        actions: [
          OutlinedButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('لا'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('نعم'),
          ),
        ],
      ),
    );

    if (rslt == true) {
      await DatabaseService.I.persons.deletePerson(personId: initialPerson.id);
      navigator
        ..pop()
        ..pop();
    }
  }

  Future<Object?> _getPhoneFieldName([
    bool canDelete = false,
    String? initialName,
  ]) {
    final name = TextEditingController(text: initialName);
    final innerForm = GlobalKey<FormState>();

    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('اسم الهاتف'),
        content: Form(
          key: innerForm,
          child: TextFormField(
            controller: name,
            decoration: const InputDecoration(
              hintText: 'مثال: رقم المنزل',
            ),
            validator: (v) => v == null || v.isEmpty
                ? 'برجاء ادخال اسم رقم الهاتف'
                : PhoneNumberService.I.validate(v)
                    ? 'لا يجب ادخال رقم الهاتف هنا'
                    : null,
          ),
        ),
        actions: [
          if (canDelete)
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text('حذف'),
            ),
          OutlinedButton(
            onPressed: () => innerForm.currentState!.validate()
                ? Navigator.of(context).pop(name.text)
                : null,
            child: const Text('حفظ'),
          ),
        ],
      ),
    );
  }

  Future<void> _importFromContacts() async {
    FocusScope.of(context).requestFocus();

    final permissionStatus = await Permission.contacts.request();
    if (permissionStatus != PermissionStatus.granted &&
        permissionStatus != PermissionStatus.limited) {
      return;
    }

    final contact = await ContactsService.I.pickContact();
    if (contact == null) return;

    bool importName = false;
    final Set<Tuple2<String, String>> numbersToImport = {};

    if (!mounted) return;
    final rslt = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('اختيار العناصر'),
        content: StatefulBuilder(
          builder: (context, setState) {
            return SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CheckboxListTile(
                    title: const Text('الاسم'),
                    subtitle: Text(contact.displayName),
                    value: importName,
                    onChanged: (v) => setState(() => importName = v!),
                  ),
                  ...contact.phones
                      .where(
                    (e) => e.normalizedNumber.isNotEmpty || e.number.isNotEmpty,
                  )
                      .map(
                    (e) {
                      final String label = e.customLabel.isNotEmpty
                          ? e.customLabel
                          : e.label.name;
                      final String value = e.normalizedNumber.isNotEmpty
                          ? e.normalizedNumber
                          : e.number;

                      return CheckboxListTile(
                        title: Text(label),
                        subtitle: Text(value),
                        value: numbersToImport.contains(Tuple2(label, value)),
                        onChanged: (v) => setState(
                          () => v ?? false
                              ? numbersToImport.add(Tuple2(label, value))
                              : numbersToImport.remove(Tuple2(label, value)),
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('تم'),
          ),
        ],
      ),
    );

    if (rslt == true) {
      newPerson = newPerson.copyWith(
        name: importName ? contact.displayName : newPerson.name,
        otherPhones: {
          ...newPerson.otherPhones,
          for (final n in numbersToImport) n.item1: n.item2,
        },
      );
      if (mounted) setState(() {});
    }
  }

  Future<void> _selectServices(
    FormFieldState<Tuple2<Set<Service>, Set<Group>>> state,
  ) async {
    final focusScope = FocusScope.of(state.context);
    final Set<Service>? rslt = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => _SelectServicesPage(
          selected: state.value != null
              ? _combineGroupsWithServices(
                  state.value!.item1,
                  state.value!.item2,
                ).toSet()
              : {},
        ),
      ),
    );

    if (rslt != null) {
      final services = rslt;
      final groups = rslt
          .map((s) => s.groups?.map((g) => g.copyWith(service: s)) ?? [])
          .expand((e) => e)
          .toSet();
      WidgetsBinding.instance.addPostFrameCallback(
        (_) => state.mounted ? state.didChange(Tuple2(services, groups)) : null,
      );
      newPerson = newPerson.copyWith(
        services: services.toList(),
        groups: groups.toList(),
      );
      focusScope.nextFocus();
    }
  }

  Future<void> _editGeoLocation(BuildContext context) async {
    final Person? result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => EditPersonLocationMap(
          onSaved: Navigator.of(context).pop,
          initialPerson: newPerson,
        ),
      ),
    );
    if (result != null) {
      newPerson = result;
      final address = await CAFunctionsService.I
          .getAddressFromLocation(result.geolocation!);

      if (address != null) {
        _suggestedAddress = address;
        if (mounted) setState(() {});
      }
    }
  }

  String? _personGeneralCheckValidator([_]) {
    return newPerson.geolocation == null &&
            (newPerson.family == null || newPerson.familyId == null) &&
            (newPerson.services?.isEmpty ?? true) &&
            (newPerson.groups?.isEmpty ?? true)
        ? 'يجب تحديد على الأقل واحد من الآتي:\n'
            '(الموقع الجغرافي - العائلة - خدمة أو أكثر - مجموعة أو أكثر)'
        : null;
  }

  String? _validatePhoneField(v) =>
      v != null && !PhoneNumberService.I.validate(v)
          ? 'برجاء ادخال رقم هاتف صالح'
          : null;

  Future<bool> _confirmExit() async {
    _form.currentState!.save();
    return newPerson == initialPerson ||
        (await showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('هل تريد تجاهل التغييرات؟'),
                actions: [
                  OutlinedButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: const Text('البقاء'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: const Text('تجاهل'),
                  ),
                ],
              ),
            ) ??
            false);
  }

  Future<void> _save() async {
    try {
      if (_saveLock) return;

      if (_form.currentState!.validate()) {
        _saveLock = true;
        _form.currentState!.save();

        final navigator = Navigator.of(context);
        final themeData = Theme.of(context);

        scaffoldMessenger.showSnackBar(
          SnackBar(
            duration: const Duration(minutes: 1),
            content: Row(
              children: const [
                Expanded(child: Text('جار الحفظ ...')),
                CircularProgressIndicator(),
              ],
            ),
          ),
        );

        if (widget.person == null) {
          await DatabaseService.I.persons.insertPerson(
            newPerson: newPerson,
          );
        } else {
          await DatabaseService.I.persons.updatePerson(
            newPerson: newPerson,
            oldPerson: initialPerson,
          );
        }

        if (_photoState.hasChanged) {
          scaffoldMessenger.hideCurrentSnackBar();

          final uploadProgress = BehaviorSubject<double?>();

          scaffoldMessenger.showSnackBar(
            SnackBar(
              duration: const Duration(minutes: 5),
              content: Row(
                children: [
                  const Expanded(child: Text('جار رفع الصورة ...')),
                  StreamBuilder<double?>(
                    stream: uploadProgress.stream,
                    builder: (context, snapshot) => CircularProgressIndicator(
                      value: snapshot.data,
                    ),
                  ),
                ],
              ),
            ),
          );

          final mimeType =
              MimeTypeResolver().lookup(_photoState.newPhoto!.path);
          final uploadUrl = await CAFunctionsService.I.getUploadUrl(
            'persons',
            newPerson.id,
            contentType: mimeType,
          );

          await CAFunctionsService.I.uploadPhoto(
            url: uploadUrl,
            contentType: mimeType,
            fileStream: _photoState.newPhoto!.openRead(),
            fileLength: File(_photoState.newPhoto!.path).lengthSync(),
            onSendProgress: (sent, total) => uploadProgress.add(sent / total),
          );

          await uploadProgress.close();
        }

        scaffoldMessenger
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              content: Row(
                children: [
                  const Expanded(child: Text('تم بنجاح')),
                  Icon(
                    Icons.done,
                    color: themeData.primaryIconTheme.color,
                  ),
                ],
              ),
            ),
          );
        navigator.pop();
      }
    } on Exception catch (e, stackTrace) {
      scaffoldMessenger.hideCurrentSnackBar();

      unawaited(
        showDialog(
          context: context,
          builder: (context) => CAErrorDialog(exception: e),
        ),
      );

      unawaited(
        LoggingService.I.reportError(
          e,
          stackTrace: stackTrace,
          data: newPerson.toJson(),
        ),
      );
    } finally {
      _saveLock = false;
    }
  }

  List<Service> _combineGroupsWithServices(
    Iterable<Service> services,
    Iterable<Group> groups,
  ) {
    return EqualitySet<Service>.from(
      EqualityBy((s) => s.id),
      groups
          .where((g) => g.service != null)
          .groupListsBy((g) => g.service!)
          .entries
          .map((e) => e.key.copyWith(groups: e.value)),
    ).union(services.toSet()).toList();
  }
}

class _FieldWrapper extends StatelessWidget {
  final Widget Function(BuildContext) builder;

  const _FieldWrapper({required this.builder});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Builder(builder: builder),
    );
  }
}

class _SelectServicesPage extends StatefulWidget {
  final Set<Service> selected;

  const _SelectServicesPage({
    required this.selected,
  });

  @override
  State<_SelectServicesPage> createState() => __SelectServicesPageState();
}

class __SelectServicesPageState extends State<_SelectServicesPage>
    with TickerProviderStateMixin {
  final search = BehaviorSubject<String?>.seeded(null);
  late final listController = ViewableObjectListController<Service>(
    objectsPaginatableStream: DatabaseService.I.services.paginateServices(
      searchQuery: search,
    ),
  );

  late final BehaviorSubject<Map<String, Service>> selected =
      BehaviorSubject.seeded(
    {
      for (final s in widget.selected) s.id: s,
    },
  );

  final _animationControllers = <Object, AnimationController>{};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchField(
          searchSink: search,
          autofocus: false,
        ),
        actions: [
          IconButton(
            onPressed: () =>
                Navigator.of(context).pop(selected.value.values.toSet()),
            icon: const Icon(Icons.check),
          ),
        ],
      ),
      body: ServicesHierarchyList(
        listController: listController,
        showClasses: false,
        groupBuilder: (context, {required service, required group}) =>
            StreamBuilder<bool>(
          initialData: false,
          stream: selected.map(
            (selection) =>
                selection[service.id]
                    ?.groups
                    ?.singleWhereOrNull((g) => g.id == group.id) !=
                null,
          ),
          builder: (context, entryChecked) => CheckboxListTile(
            onChanged: (c) {
              if (c ?? false) {
                selected.add({
                  ...selected.value,
                  service.id: (selected.value[service.id] ?? service).copyWith(
                    groups: [
                      ...selected.value[service.id]?.groups ?? [],
                      group
                    ],
                  )
                });
              } else {
                selected.add({
                  ...selected.value,
                  service.id: selected.value[service.id]!.copyWith(
                    groups: selected.value[service.id]!.groups!
                        .where((o) => o.id != group.id)
                        .toList(),
                  )
                });
              }
            },
            value: entryChecked.requireData,
            secondary: ImageObjectWidget(group),
            title: Text(group.name),
          ),
        ),
        serviceTrailingBuilder: (
          context,
          s, {
          onLongPress,
          onTap,
          subtitle,
          trailing,
        }) =>
            StreamBuilder<bool>(
          initialData: false,
          stream: selected.map((selection) => selection.containsKey(s.id)),
          builder: (context, entryChecked) => Checkbox(
            onChanged: (c) {
              if (c ?? false) {
                selected.add({
                  ...selected.value,
                  s.id: s.copyWith(groups: []),
                });
              } else {
                selected.add({
                  ...selected.value..remove(s.id),
                });
              }
            },
            value: entryChecked.requireData,
          ),
        ),
      ),
    );
  }

  @override
  Future<void> dispose() async {
    for (final c in _animationControllers.values) {
      c.dispose();
    }
    super.dispose();

    await listController.dispose();

    await search.close();
    await selected.close();
  }
}
