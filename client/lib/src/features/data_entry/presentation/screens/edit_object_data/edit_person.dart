import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:derived_colors/derived_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';

class EditPerson extends StatefulWidget {
  final Person? person;
  final Family? family;
  final Service? service;
  final Group? group;
  final StudyYear? studyYear;
  final bool? gender;

  const EditPerson({
    required this.person,
    this.family,
    this.service,
    this.group,
    this.studyYear,
    this.gender,
    super.key,
  });

  @override
  State<EditPerson> createState() => _EditPersonState();
}

class _EditPersonState extends State<EditPerson> {
  late EditObjectController<Person> _controller;

  @override
  void initState() {
    super.initState();

    final Person? oldPerson = widget.person?.copyWith(
      familyId: widget.person?.family?.id,
      churchId: widget.person?.church?.id,
      collegeId: widget.person?.college?.id,
      fatherId: widget.person?.father?.id,
      jobId: widget.person?.job?.id,
      personTypeId: widget.person?.personType?.id,
      qualificationId: widget.person?.qualification?.id,
      schoolId: widget.person?.school?.id,
      shammasLevelId: widget.person?.shammasLevel?.id,
      stateId: widget.person?.state?.id,
      storeId: widget.person?.store?.id,
      studyYearId: widget.person?.studyYear?.order,
    );

    _controller = EditObjectController(
      onCreate: (object) =>
          DatabaseService.I.persons.createObject(newObject: object),
      onUpdate: (oldPerson, newPerson) =>
          DatabaseService.I.persons.updateObject(
        oldObject: oldPerson,
        newObject: newPerson,
      ),
      onDelete: (object) => DatabaseService.I.persons.deleteById(id: object.id),
      toJson: (object) => object.toJson(),
      newObject: oldPerson ??
          Person(
            id: const Uuid().v4(),
            name: 'مخدوم جديد',
            family: widget.family,
            familyId: widget.family?.id,
            services: widget.service != null ? [widget.service!] : [],
            groups: widget.group != null ? [widget.group!] : [],
            studyYear: widget.studyYear,
            studyYearId: widget.studyYear?.order,
            isStudent: widget.studyYear != null,
            gender: widget.gender ?? true,
          ),
      initialObject: oldPerson,
    );

    _loadPersonServicesClassesGroups();
  }

  Person get initialPerson => _controller.initialObject!;
  Person get newPerson => _controller.newObject;
  set newPerson(Person p) => _controller.newObject = p;

  bool _classesAndGroupsLoaded = false;

  //TODO: make every field a separate widget

  @override
  Widget build(BuildContext context) {
    return EditObjectData(
      objectData: widget.person,
      getController: () => _controller,
      canDeletePhoto: (_) =>
          widget.person != null && widget.person?.user?.email == null,
      builder: (context, controller) {
        final themeData = Theme.of(context);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            NameField(
              hintText: 'اسم المخدوم',
              initialValue: newPerson.name,
              onValueChanged: (value) =>
                  newPerson = newPerson.copyWith(name: value.trim()),
              padding: const EdgeInsets.symmetric(vertical: 8),
            ),
            Builder(
              builder: (context) => TextFormField(
                key: ValueKey(newPerson.mainPhone),
                decoration: InputDecoration(
                  labelText: 'رقم الهاتف',
                  suffixIcon: CurrentPlatformService.I.isAndroid ||
                          CurrentPlatformService.I.isIOS
                      ? IconButton(
                          tooltip: 'اختيار من جهات الاتصال',
                          onPressed: _importFromContacts,
                          icon: const Icon(Symbols.contacts),
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
                autofillHints: const [AutofillHints.telephoneNumber],
                textInputAction: TextInputAction.next,
                onChanged: (value) => newPerson = newPerson.copyWith(
                  mainPhone: PhoneNumberService.I
                      .formatInternational(value)
                      .replaceAll('+20', '0'),
                ),
                validator: (v) =>
                    v != null && v.isNotEmpty ? _validatePhoneField(v) : null,
                inputFormatters: [
                  TextInputFormatter.withFunction(
                    (oldValue, newValue) => newValue.copyWith(
                      text: newValue.text.replaceAll(
                        RegExp(r'[^\d\+]'),
                        '',
                      ),
                    ),
                  ),
                ],
              ),
            ).withPadding(const EdgeInsets.symmetric(vertical: 8)),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ...newPerson.otherPhones.entries.mapIndexed((i, phone) {
                  return Builder(
                    builder: (context) {
                      return TextFormField(
                        decoration: InputDecoration(
                          labelText: phone.key,
                          hintText: 'مثال: 01234...',
                          suffixIcon: IconButton(
                            icon: const Icon(Symbols.edit),
                            tooltip: 'تعديل اسم الهاتف',
                            onPressed: _onEditPhoneFieldName(phone),
                          ),
                        ),
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).nextFocus();
                          if (i == newPerson.otherPhones.length - 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.phone,
                        autofillHints: const [AutofillHints.telephoneNumber],
                        initialValue: phone.value,
                        onChanged: (value) => newPerson = newPerson.copyWith(
                          otherPhones: {
                            ...newPerson.otherPhones,
                            phone.key: PhoneNumberService.I
                                .formatInternational(value)
                                .replaceAll('+20', '0'),
                          },
                        ),
                        validator: _validatePhoneField,
                        inputFormatters: [
                          TextInputFormatter.withFunction(
                            (oldValue, newValue) => newValue.copyWith(
                              text: newValue.text.replaceAll(r'[^\d\+]', ''),
                            ),
                          ),
                        ],
                        textInputAction: TextInputAction.next,
                      );
                    },
                  ).withPadding(const EdgeInsets.symmetric(vertical: 8));
                }),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: FilledButton.tonalIcon(
                    style: themeData.filledTonalButtonStyleWorkaround,
                    icon: const Icon(Symbols.add),
                    label: const Text('إضافة رقم هاتف أخر'),
                    onPressed: () async {
                      final name = await _renamePhoneFieldName();
                      if (name is String) {
                        newPerson = newPerson.copyWith(
                          otherPhones: {...newPerson.otherPhones, name: ''},
                        );

                        if (mounted) setState(() {});
                      }
                    },
                  ),
                ),
              ],
            ),
            DateTimeField(
              withTime: false,
              label: 'تاريخ الميلاد',
              initialValue: newPerson.birthdate,
              nullable: true,
              onChanged: (v) {
                newPerson = newPerson.copyWith(birthdate: v);
              },
              validator: (v) => null,
            ),
            if (controller.isCreate)
              AddressWithLocationField(
                label: 'عنوان وموقع العائلة',
                enabled: newPerson.family == null,
                required: newPerson.family == null,
                initialAddress: newPerson.family?.address ?? newPerson.address,
                onAddressChanged: (value) =>
                    newPerson = newPerson.copyWith(address: value),
                onEditLocation: _editGeoLocation,
              ),
            ObjectSelectionField<Family, Family?>(
              validator: (value) {
                if (value == null && newPerson.address == null) {
                  return 'يجب تحديد العائلة${_controller.isCreate ? ' أو العنوان' : ''}';
                }

                return null;
              },
              nullable: _controller.isCreate,
              decoration: const InputDecoration(errorMaxLines: 2),
              initialValue: newPerson.family,
              listController: (s) => ViewableObjectListController(
                objectsPaginatableStream: DatabaseService.I.families
                    .streamAllWithAddresses(searchQuery: s),
              ),
              dialogFieldLabel: 'العائلة',
              onChanged: (value) {
                if (value?.id ==
                    (_controller.initialObject?.family?.id ??
                        widget.family?.id)) {
                  setState(
                    () => newPerson = newPerson.copyWith(
                      family: _controller.initialObject?.family,
                      familyId: _controller.initialObject?.family?.id,
                      address: _controller.initialObject?.address,
                    ),
                  );
                } else {
                  setState(
                    () => newPerson = newPerson.copyWith(
                      //Store the selected object
                      //so we can build the widget based on it ...
                      family: value,
                      //... and its id to send it in the mutation
                      familyId: value?.id,
                      address: switch (value) {
                        Family(:final address) => address,
                        null => newPerson.family?.address ?? newPerson.address,
                      },
                    ),
                  );
                }
              },
              builder: (context, state) {
                return state.value != null
                    ? IgnorePointer(
                        child:
                            ViewableObjectWidget(state.value!, isDense: true),
                      )
                    : null;
              },
            ),
            const Divider(),
            TappableFormField<(Set<Service>, Set<Group>)>(
              key: ValueKey(
                (
                  newPerson.services?.toSet() ?? {},
                  newPerson.groups?.toSet() ?? {},
                ),
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (v) {
                //Checks if the person is student and studyYear != null,
                //if so check that person studyYear falls between all services
                //that have studyYear range
                //
                //Then invoke the general check

                if (newPerson.isStudent &&
                    newPerson.studyYear != null &&
                    v!.$1.any(
                      (s) =>
                          s.studyYearFrom == null ||
                          s.studyYearTo == null ||
                          (newPerson.studyYear!.order <
                                  s.studyYearFrom!.order ||
                              newPerson.studyYear!.order >
                                  s.studyYearTo!.order),
                    )) {
                  return 'بعض الخدمات لا تناسب السنة الدراسية للمخدوم'
                      '\nيرجى تغيير السنة الدراسية او ازالة التحديد من احدى الخدمات';
                }

                final currentUserData = AuthBloc.I.currentUserData!;

                final canEditFamily = newPerson.family == null ||
                    currentUserData.canEditObject(newPerson.family!);

                final canEditAddress = newPerson.address?.area == null ||
                    newPerson.address?.street == null ||
                    currentUserData.canEditObject(newPerson.address!.area!);

                final servicesAndGroups =
                    <ViewableWithID>{}.union(v?.$1 ?? {}).union(v?.$2 ?? {});

                if (!canEditFamily &&
                    !canEditAddress &&
                    servicesAndGroups.isEmpty) {
                  return 'يجب اختيار خدمة أو مجموعة';
                }

                return servicesAndGroups.every(currentUserData.canEditObject)
                    ? null
                    : 'ليس لديك الصلاحية لتعديل بعض الخدمات او المجموعات';
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
              initialValue: (
                newPerson.services?.toSet() ?? {},
                newPerson.groups?.toSet() ?? {},
              ),
              onTap: _selectServices,
              builder: (context, state) {
                if (state.value != null && state.value!.$1.isNotEmpty) {
                  final combinedServices = _combineGroupsWithServices(
                    state.value!.$1,
                    state.value!.$2,
                  );

                  return ExcludeFocus(
                    child: IgnorePointer(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          for (final s in combinedServices) ...[
                            ViewableObjectWidget(
                              s,
                              isDense: true,
                              forceShowSecondLine: false,
                            ),
                            for (final g in s.groups ?? <Group>[])
                              Padding(
                                padding: const EdgeInsets.only(right: 26),
                                child: Card(
                                  elevation: 0,
                                  child: ViewableObjectWidget(
                                    g,
                                    isDense: true,
                                    forceShowSecondLine: false,
                                    wrapInCard: false,
                                  ),
                                ),
                              ),
                          ],
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
                listController: (s) => ViewableObjectListController(
                  objectsPaginatableStream: DatabaseService
                      .I.metadata.studyYears
                      .streamAll(searchQuery: s),
                ),
                dialogFieldLabel: 'السنة الدراسية',
                onChanged: (value) => newPerson = newPerson.copyWith(
                  //Store the selected object
                  //so we can build the widget based on it ...
                  studyYear: value,
                  //... and its id to send it in the mutation
                  studyYearId: value?.order,
                ),
                builder: (context, state) {
                  return state.value != null ? Text(state.value!.name) : null;
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
                  listController: (s) => ViewableObjectListController(
                    objectsPaginatableStream: DatabaseService
                        .I.metadata.colleges
                        .streamAll(searchQuery: s),
                  ),
                  dialogFieldLabel: 'الكلية',
                  onChanged: (value) => newPerson = newPerson.copyWith(
                    //Store the selected object
                    //so we can build the widget based on it ...
                    college: value,
                    //... and its id to send it in the mutation
                    collegeId: value?.id,
                  ),
                  builder: (context, state) {
                    return state.value != null ? Text(state.value!.name) : null;
                  },
                  validator: (v) => null,
                ),
              ] else
                ObjectSelectionField<School, School?>(
                  initialValue: newPerson.school,
                  listController: (s) => ViewableObjectListController(
                    objectsPaginatableStream: DatabaseService.I.metadata.schools
                        .streamAll(searchQuery: s),
                  ),
                  dialogFieldLabel: 'المدرسة',
                  onChanged: (value) => newPerson = newPerson.copyWith(
                    //Store the selected object
                    //so we can build the widget based on it ...
                    school: value,
                    //... and its id to send it in the mutation
                    schoolId: value?.id,
                  ),
                  builder: (context, state) {
                    return state.value != null ? Text(state.value!.name) : null;
                  },
                  validator: (v) => null,
                ),
            ] else ...[
              ObjectSelectionField<Qualification, Qualification?>(
                initialValue: newPerson.qualification,
                listController: (s) => ViewableObjectListController(
                  objectsPaginatableStream: DatabaseService
                      .I.metadata.qualifications
                      .streamAll(searchQuery: s),
                ),
                dialogFieldLabel: 'المؤهل',
                onChanged: (value) => newPerson = newPerson.copyWith(
                  //Store the selected object
                  //so we can build the widget based on it ...
                  qualification: value,
                  //... and its id to send it in the mutation
                  qualificationId: value?.id,
                ),
                builder: (context, state) {
                  return state.value != null ? Text(state.value!.name) : null;
                },
                validator: (v) => null,
              ),
              ObjectSelectionField<Job, Job?>(
                initialValue: newPerson.job,
                listController: (s) => ViewableObjectListController(
                  objectsPaginatableStream:
                      DatabaseService.I.metadata.jobs.streamAll(searchQuery: s),
                ),
                dialogFieldLabel: 'الوظيفة',
                onChanged: (value) => newPerson = newPerson.copyWith(
                  //Store the selected object
                  //so we can build the widget based on it ...
                  job: value,
                  //... and its id to send it in the mutation
                  jobId: value?.id,
                ),
                builder: (context, state) {
                  return state.value != null ? Text(state.value!.name) : null;
                },
                validator: (v) => null,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'تفاصيل الوظيفة'),
                initialValue: newPerson.jobDescription,
                onChanged: (value) => newPerson = newPerson.copyWith(
                  jobDescription: value.trim(),
                ),
                textInputAction: TextInputAction.next,
                validator: (value) => null,
              ).withPadding(const EdgeInsets.symmetric(vertical: 8)),
            ],
            const Divider(),
            GenderField(
              initialValue: newPerson.gender,
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
            ).withPadding(const EdgeInsets.symmetric(vertical: 8)),
            ObjectSelectionField<PersonType, PersonType?>(
              initialValue: newPerson.personType,
              listController: (s) => ViewableObjectListController(
                objectsPaginatableStream: DatabaseService.I.metadata.personTypes
                    .streamAll(searchQuery: s),
              ),
              dialogFieldLabel: 'الحالة الاجتماعية',
              onChanged: (value) => newPerson = newPerson.copyWith(
                //Store the selected object
                //so we can build the widget based on it ...
                personType: value,
                //... and its id to send it in the mutation
                personTypeId: value?.id,
              ),
              builder: (context, state) {
                return state.value != null ? Text(state.value!.name) : null;
              },
              validator: (v) => null,
            ),
            const Divider(),
            ObjectSelectionField<Church, Church?>(
              initialValue: newPerson.church,
              listController: (s) => ViewableObjectListController(
                objectsPaginatableStream: DatabaseService.I.metadata.churches
                    .streamAll(searchQuery: s),
              ),
              dialogFieldLabel: 'الكنيسة',
              onChanged: (value) => newPerson = newPerson.copyWith(
                //Store the selected object
                //so we can build the widget based on it ...
                church: value,
                //... and its id to send it in the mutation
                churchId: value?.id,
              ),
              builder: (context, state) {
                return state.value != null ? Text(state.value!.name) : null;
              },
              validator: (v) => null,
            ),
            ObjectSelectionField<Father, Father?>(
              initialValue: newPerson.father,
              listController: (s) => ViewableObjectListController(
                objectsPaginatableStream: DatabaseService.I.metadata.fathers
                    .streamAll(searchQuery: s),
              ),
              dialogFieldLabel: 'أب الاعتراف',
              onChanged: (value) => newPerson = newPerson.copyWith(
                //Store the selected object
                //so we can build the widget based on it ...
                father: value,
                //... and its id to send it in the mutation
                fatherId: value?.id,
              ),
              builder: (context, state) {
                return state.value != null ? Text(state.value!.name) : null;
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
                listController: (s) => ViewableObjectListController(
                  objectsPaginatableStream: DatabaseService
                      .I.metadata.shammasLevels
                      .streamAll(searchQuery: s),
                ),
                dialogFieldLabel: 'رتبة الشموسية',
                onChanged: (value) => newPerson = newPerson.copyWith(
                  //Store the selected object
                  //so we can build the widget based on it ...
                  shammasLevel: value,
                  //... and its id to send it in the mutation
                  shammasLevelId: value?.id,
                ),
                builder: (context, state) {
                  return state.value != null ? Text(state.value!.name) : null;
                },
              ),
            ObjectSelectionField<PersonState, PersonState?>(
              initialValue: newPerson.state,
              listController: (s) => ViewableObjectListController(
                objectsPaginatableStream: DatabaseService
                    .I.metadata.personStates
                    .streamAll(searchQuery: s),
              ),
              dialogFieldLabel: 'الحالة الروحية',
              onChanged: (value) => newPerson = newPerson.copyWith(
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
                          isDense: true,
                          forceShowSecondLine: false,
                          trailing: state.value?.color == null
                              ? null
                              : ClipRRect(
                                  borderRadius: const BorderRadius.all(
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
            const Divider(),
            MultiObjectSelectionField<Hobby>(
              validator: _personGeneralCheckValidator,
              decoration: const InputDecoration(
                labelText: 'الهوايات',
                errorMaxLines: 2,
              ),
              onChanged: (s) =>
                  newPerson = newPerson.copyWith(hobbies: s?.toList()),
              initialValue: newPerson.hobbies?.toSet() ?? {},
              nullable: false,
              listController: (s) => ViewableObjectListController(
                objectsPaginatableStream: DatabaseService.I.metadata.hobbies
                    .streamAll(searchQuery: s),
              ),
              labelText: 'الهوايات',
              builder: (context, state) {
                final labelStyle = themeData.textTheme.labelSmall!;
                return state.value != null && state.value!.isNotEmpty
                    ? Wrap(
                        spacing: 3,
                        children: [
                          for (final hobby in state.value ?? <Hobby>[])
                            Chip(
                              side: BorderSide(
                                color: hobby.color?.findInvert() ??
                                    labelStyle.color!,
                              ),
                              label: Text(
                                hobby.name,
                                style: labelStyle.copyWith(
                                  color: hobby.color?.findInvert(),
                                ),
                              ),
                              color: WidgetStateProperty.all(hobby.color),
                            ),
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
              onChanged: (s) =>
                  newPerson = newPerson.copyWith(tags: s?.toList()),
              initialValue: newPerson.tags?.toSet() ?? {},
              nullable: false,
              listController: (s) => ViewableObjectListController(
                objectsPaginatableStream:
                    DatabaseService.I.metadata.tags.streamAll(searchQuery: s),
              ),
              labelText: 'الشارات',
              builder: (context, state) {
                final labelStyle = themeData.textTheme.labelSmall!;
                return state.value != null && state.value!.isNotEmpty
                    ? Wrap(
                        spacing: 3,
                        children: [
                          for (final tag in state.value ?? <Tag>[])
                            Chip(
                              side: BorderSide(
                                color: tag.color?.findInvert() ??
                                    labelStyle.color!,
                              ),
                              label: Text(
                                tag.name,
                                style: labelStyle.copyWith(
                                  color: tag.color?.findInvert(),
                                ),
                              ),
                              color: WidgetStateProperty.all(tag.color),
                            ),
                        ],
                      )
                    : const Text('لا يوجد شارات');
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'ملاحظات'),
              initialValue: newPerson.notes,
              onChanged: (value) =>
                  newPerson = newPerson.copyWith(notes: value.trim()),
              textInputAction: TextInputAction.newline,
              maxLines: null,
              validator: (value) => null,
            ).withPadding(const EdgeInsets.symmetric(vertical: 8)),
            ColorField(
              initialValue: newPerson.color,
              onChanged: (value) => setState(
                () => newPerson = newPerson.copyWith(color: value),
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
            const Divider(),
            DateTimeField(
              withTime: false,
              label: 'أخر تناول',
              initialValue: newPerson.lastKodas?.time,
              onChanged: (v) {
                if (v != null) {
                  newPerson = newPerson.copyWith(
                    lastKodas: LastRecordedByInfo(
                      time: v,
                      recordedBy: AuthBloc.I.currentUser?.uid,
                    ),
                  );
                }
              },
              validator: (v) => null,
            ),
            DateTimeField(
              withTime: false,
              label: 'أخر اعتراف',
              initialValue: newPerson.lastConfession?.time,
              onChanged: (v) {
                if (v != null) {
                  newPerson = newPerson.copyWith(
                    lastConfession: LastRecordedByInfo(
                      time: v,
                      recordedBy: AuthBloc.I.currentUser?.uid,
                    ),
                  );
                }
              },
              validator: (v) => null,
            ),
            const Divider(),
            DateTimeField(
              label: 'أخر افتقاد',
              initialValue: newPerson.lastVisit?.time,
              onChanged: (v) {
                if (v != null) {
                  newPerson = newPerson.copyWith(
                    lastVisit: LastRecordedByInfo(
                      time: v,
                      recordedBy: AuthBloc.I.currentUser?.uid,
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
                      recordedBy: AuthBloc.I.currentUser?.uid,
                    ),
                  );
                }
              },
              validator: (v) => null,
            ),
          ],
        );
      },
    );
  }

  void _loadPersonServicesClassesGroups() {
    if (_controller.isCreate) {
      _classesAndGroupsLoaded = true;
    } else {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        final classesAndGroupsData = await DatabaseService.I.persons
            .personServicesClassesGroups(personId: initialPerson.id);

        final populatedInitialPerson = initialPerson.copyWith(
          services: classesAndGroupsData?.services ?? initialPerson.services,
          classes: classesAndGroupsData?.classes ?? initialPerson.classes,
          groups: classesAndGroupsData?.groups ?? initialPerson.groups,
        );

        _controller = _controller.copyWith(
          newObject: populatedInitialPerson,
          initialObject: populatedInitialPerson,
        );

        _classesAndGroupsLoaded = true;

        if (mounted) {
          setState(() {});
        }
      });
    }
  }

  void Function() _onEditPhoneFieldName(MapEntry<String, dynamic> phone) =>
      () async {
        final name = await _renamePhoneFieldName(true, phone.key);

        if (name == true) {
          newPerson = newPerson.copyWith(
            otherPhones: {
              for (final p in newPerson.otherPhones.entries)
                if (p.key != phone.key) p.key: p.value,
            },
          );
          if (mounted) setState(() {});
        } else if (name is String) {
          newPerson = newPerson.copyWith(
            otherPhones: {
              for (final p in newPerson.otherPhones.entries)
                if (p.key != phone.key) p.key: p.value,
              name: phone.value,
            },
          );

          setState(() {});
        }
      };

  Future<Object?> _renamePhoneFieldName([
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
            decoration: const InputDecoration(hintText: 'مثال: رقم المنزل'),
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

    var importName = false;
    final Set<(String, String)> numbersToImport = {};

    if (!mounted) return;
    final rslt = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('اختيار العناصر'),
        content: StatefulBuilder(
          builder: (context, setState) {
            return SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.8,
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
                      .map((e) {
                    final String label =
                        e.customLabel.isNotEmpty ? e.customLabel : e.label.name;
                    final String value = e.normalizedNumber.isNotEmpty
                        ? e.normalizedNumber
                        : e.number;

                    return CheckboxListTile(
                      title: Text(label),
                      subtitle: Text(value),
                      value: numbersToImport.contains((label, value)),
                      onChanged: (v) => setState(
                        () => v ?? false
                            ? numbersToImport.add(
                                (
                                  label,
                                  value,
                                ),
                              )
                            : numbersToImport.remove(
                                (
                                  label,
                                  value,
                                ),
                              ),
                      ),
                    );
                  }),
                ],
              ),
            );
          },
        ),
        actions: [
          OutlinedButton(
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
          for (final n in numbersToImport) n.$1: n.$2,
        },
      );
      if (mounted) setState(() {});
    }
  }

  Future<void> _selectServices(
    FormFieldState<(Set<Service>, Set<Group>)> state,
  ) async {
    final focusScope = FocusScope.of(state.context);
    final Set<Service>? rslt = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => _SelectServicesPage(
          selected: state.value != null
              ? _combineGroupsWithServices(
                  state.value!.$1,
                  state.value!.$2,
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
        (_) => state.mounted ? state.didChange((services, groups)) : null,
      );
      newPerson = newPerson.copyWith(
        services: services.toList(),
        groups: groups.toList(),
      );
      focusScope.nextFocus();
    }
  }

  Future<Point?> _editGeoLocation(BuildContext context) async {
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
    }

    return result?.geolocation;
  }

  String? _personGeneralCheckValidator([dynamic _]) {
    return newPerson.address == null &&
            (newPerson.family == null || newPerson.familyId == null) &&
            (newPerson.services?.isEmpty ?? true) &&
            (newPerson.groups?.isEmpty ?? true)
        ? 'يجب تحديد على الأقل واحد من الآتي:\n'
            '(العنوان - العائلة - خدمة أو أكثر - مجموعة أو أكثر)'
        : null;
  }

  String? _validatePhoneField(String? v) =>
      v != null && !PhoneNumberService.I.validate(v)
          ? 'برجاء ادخال رقم هاتف صالح'
          : null;

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

class _SelectServicesPage extends StatefulWidget {
  final Set<Service> selected;

  const _SelectServicesPage({required this.selected});

  @override
  State<_SelectServicesPage> createState() => __SelectServicesPageState();
}

class __SelectServicesPageState extends State<_SelectServicesPage>
    with TickerProviderStateMixin {
  final search = BehaviorSubject<String?>.seeded(null);
  late final listController = ViewableObjectListController<Service>(
    objectsPaginatableStream: DatabaseService.I.services.streamAll(
      searchQuery: search,
    ),
  );

  late final BehaviorSubject<Map<String, Service>> selected =
      BehaviorSubject.seeded({for (final s in widget.selected) s.id: s});

  final _animationControllers = <Object, AnimationController>{};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchField(searchSink: search, autofocus: false),
        actions: [
          IconButton(
            onPressed: () =>
                Navigator.of(context).pop(selected.value.values.toSet()),
            icon: const Icon(Symbols.check),
          ),
        ],
      ),
      body: ServicesHierarchyList(
        listController: listController,
        showClasses: false,
        groupBuilder: (
          context, {
          required service,
          required group,
        }) =>
            StreamBuilder<bool>(
          initialData: false,
          stream: selected.map(
            (selection) =>
                selection[service.id]?.groups?.singleWhereOrNull(
                      (g) => g.id == group.id,
                    ) !=
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
                      group,
                    ],
                  ),
                });
              } else {
                selected.add({
                  ...selected.value,
                  service.id: selected.value[service.id]!.copyWith(
                    groups: selected.value[service.id]!.groups!
                        .where((o) => o.id != group.id)
                        .toList(),
                  ),
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
          stream: selected.map(
            (selection) => selection.containsKey(s.id),
          ),
          builder: (context, entryChecked) => Checkbox(
            onChanged: (c) {
              if (c ?? false) {
                selected.add({
                  ...selected.value,
                  s.id: s.copyWith(groups: []),
                });
              } else {
                selected.add({...selected.value..remove(s.id)});
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
