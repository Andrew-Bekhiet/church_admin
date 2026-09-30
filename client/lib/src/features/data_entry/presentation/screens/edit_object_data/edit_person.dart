import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

class EditPerson extends StatefulWidget {
  final Person? person;
  final Family? withFamily;
  final Address? withAddress;
  final Service? withService;
  final Group? withGroup;
  final StudyYear? withStudyYear;
  final bool? withGender;

  const EditPerson({
    required this.person,
    this.withFamily,
    this.withAddress,
    this.withService,
    this.withGroup,
    this.withStudyYear,
    this.withGender,
    super.key,
  });

  @override
  State<EditPerson> createState() => _EditPersonState();
}

class _EditPersonState extends State<EditPerson> {
  late EditObjectController<Person> _controller;
  final PhoneContactsEditorCubit _phoneContacts = PhoneContactsEditorCubit();
  bool _classesAndGroupsLoaded = false;

  Person get initialPerson => _controller.initialObject!;

  @override
  void initState() {
    super.initState();
    final oldPerson = widget.person?.copyWith(
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
      afterCreate: (object) => ViewPersonRoute(
        id: object.id,
        $extra: object,
      ).pushReplacement(context),
      onCreate: (object) async {
        final created = await DatabaseService.I.persons.createObject(
          newObject: object,
        );
        await _phoneContacts.save(
          personId: created.id,
          familyId: object.familyId,
        );

        return created;
      },
      onUpdate: (oldPerson, newPerson) async {
        final updated = await DatabaseService.I.persons.updateObject(
          oldObject: oldPerson,
          newObject: newPerson,
        );
        await _phoneContacts.save(
          personId: newPerson.id,
          familyId: newPerson.familyId,
        );

        return updated;
      },
      onDelete: (object) => DatabaseService.I.persons.deleteById(id: object.id),
      toJson: (object) => object.toJson(),
      newObject:
          oldPerson ??
          Person(
            id: const Uuid().v4(),
            name: '',
            family: widget.withFamily,
            familyId: widget.withFamily?.id,
            services: widget.withService != null ? [widget.withService!] : [],
            groups: widget.withGroup != null ? [widget.withGroup!] : [],
            studyYear: widget.withStudyYear,
            studyYearId: widget.withStudyYear?.order,
            workStatus: widget.withStudyYear != null
                ? WorkStatus.student
                : WorkStatus.employed,
            gender: widget.withGender ?? true,
            address: widget.withAddress,
          ),
      initialObject: oldPerson,
    );
    _loadPersonServicesClassesGroups();
    unawaited(
      _phoneContacts.load(
        personId: oldPerson?.id,
        familyId: oldPerson?.familyId ?? widget.withFamily?.id,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _phoneContacts,
      child: EditObjectData(
        objectData: widget.person,
        getController: () => _controller,
        canDelete: (_) =>
            widget.person != null && widget.person?.user?.email == null,
        builder: (context, controller) => PersonEditForm(
          controller: controller,
          classesAndGroupsLoaded: _classesAndGroupsLoaded,
          withFamily: widget.withFamily,
        ),
      ),
    );
  }

  @override
  void dispose() {
    unawaited(_phoneContacts.close());
    super.dispose();
  }

  void _loadPersonServicesClassesGroups() {
    if (_controller.isCreate) {
      _classesAndGroupsLoaded = true;

      return;
    }

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
      if (mounted) setState(() => _classesAndGroupsLoaded = true);
    });
  }
}
