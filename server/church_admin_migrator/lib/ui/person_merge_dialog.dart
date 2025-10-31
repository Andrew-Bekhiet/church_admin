import 'package:church_admin/church_admin.dart';
import 'package:church_admin_migrator/models/church_admin_context.dart';
import 'package:church_admin_migrator/models/id_reference.dart';
import 'package:church_admin_migrator/models/meetinghelper/models/data/person.dart'
    as meetinghelper;
import 'package:church_admin_migrator/models/meetinghelper_context.dart';
import 'package:church_admin_migrator/models/merge_controllers.dart';
import 'package:church_admin_migrator/ui/widgets/property_row.dart';
import 'package:flutter/material.dart';

/// Shows a dialog to merge two person records
Widget showPersonMergeDialog({
  required void Function((Person?, Address?)) complete,
  required Address existingPersonFamilyAddress,
  required Person existingPerson,
  required meetinghelper.Person newPerson,
  required double similarityScore,
  required ChurchAdminContext churchAdminContext,
  required MeetingHelperContext meetingHelperContext,
}) {
  return _PersonMergeDialog(
    key: ValueKey(existingPerson.id),
    complete: complete,
    existingPersonFamilyAddress: existingPersonFamilyAddress,
    existingPerson: existingPerson,
    newPerson: newPerson,
    similarityScore: similarityScore,
    churchAdminContext: churchAdminContext,
    meetingHelperContext: meetingHelperContext,
  );
}

(Person?, Address?) mergePersons({
  required Address existingPersonFamilyAddress,
  required Person existingPerson,
  required meetinghelper.Person newPerson,
  required double similarityScore,
  required ChurchAdminContext churchAdminContext,
  required MeetingHelperContext meetingHelperContext,
}) {
  return _PersonMergeDialogState._handleMerge(
    existingPersonFamilyAddress: existingPersonFamilyAddress,
    existingPerson: existingPerson,
    newPerson: newPerson,
    similarityScore: similarityScore,
    churchAdminContext: churchAdminContext,
    meetingHelperContext: meetingHelperContext,
    controllers: MergeControllers.create(
      existingPerson: existingPerson,
      newPerson: newPerson,
      churchAdminContext: churchAdminContext,
      meetingHelperContext: meetingHelperContext,
    ),
    existingFamilyAddress: existingPersonFamilyAddress,
  );
}

class _PersonMergeDialog extends StatefulWidget {
  final Address existingPersonFamilyAddress;
  final Person existingPerson;
  final meetinghelper.Person newPerson;
  final double similarityScore;
  final ChurchAdminContext churchAdminContext;
  final MeetingHelperContext meetingHelperContext;
  final void Function((Person?, Address?)) complete;

  const _PersonMergeDialog({
    required this.complete,
    required this.existingPersonFamilyAddress,
    required this.existingPerson,
    required this.newPerson,
    required this.similarityScore,
    required this.churchAdminContext,
    required this.meetingHelperContext,
    super.key,
  });

  @override
  _PersonMergeDialogState createState() => _PersonMergeDialogState();
}

class _PersonMergeDialogState extends State<_PersonMergeDialog> {
  late final MergeControllers controllers;
  late final Address existingFamilyAddress;

  @override
  void initState() {
    super.initState();

    controllers = MergeControllers.create(
      existingPerson: widget.existingPerson,
      newPerson: widget.newPerson,
      churchAdminContext: widget.churchAdminContext,
      meetingHelperContext: widget.meetingHelperContext,
    );

    existingFamilyAddress = widget.existingPersonFamilyAddress;
  }

  @override
  void dispose() {
    controllers.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildHeader(),
            const SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                child: Column(children: _buildPropertyRows()),
              ),
            ),
            const SizedBox(height: 16),
            _buildActionButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'A duplicate person was found for "${widget.newPerson.name}"',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          'Similarity Score: ${(widget.similarityScore * 100).toStringAsFixed(2)}%',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }

  List<Widget> _buildPropertyRows() {
    final existingPerson = widget.existingPerson;
    final newPerson = widget.newPerson;
    final churchAdminContext = widget.churchAdminContext;
    final meetingHelperContext = widget.meetingHelperContext;

    return [
      PropertyRow(
        label: 'Name',
        existingValue: existingPerson.name,
        newValue: newPerson.name,
        controller: controllers.name,
      ),
      PropertyRow(
        label: 'Birthdate',
        existingValue: existingPerson.birthdate?.toString(),
        newValue: newPerson.birthDate?.toString(),
        controller: controllers.birthdate,
      ),
      PropertyRow(
        label: 'Gender',
        existingValue: existingPerson.gender ? 'Male' : 'Female',
        newValue: newPerson.gender ? 'Male' : 'Female',
        controller: controllers.gender,
      ),
      PropertyRow(
        label: 'Main Phone',
        existingValue: existingPerson.mainPhone,
        newValue: newPerson.phone,
        controller: controllers.mainPhone,
      ),
      PropertyRow(
        label: 'Other Phones',
        existingValue: existingPerson.otherPhones.toString(),
        newValue: newPerson.phones.toString(),
        controller: controllers.otherPhones,
      ),
      PropertyRow(
        label: 'Church',
        existingValue: existingPerson.church?.name,
        newValue: churchAdminContext.churches[newPerson.church]?.name,
        controller: controllers.church,
      ),
      PropertyRow(
        label: 'College',
        existingValue: existingPerson.college?.name,
        newValue: churchAdminContext.colleges[newPerson.college]?.name,
        controller: controllers.college,
      ),
      PropertyRow(
        label: 'Color',
        existingValue: existingPerson.color?.toString(),
        newValue: newPerson.color?.toString(),
        controller: controllers.color,
      ),
      PropertyRow(
        label: 'Family',
        existingValue: existingPerson.family?.name,
        newValue: null,
        controller: controllers.family,
      ),
      PropertyRow(
        label: 'Address',
        existingValue: existingFamilyAddress.specialLandmark,
        newValue: newPerson.address,
        controller: controllers.address,
      ),
      PropertyRow(
        label: 'Location',
        existingValue: existingFamilyAddress.geolocation != null
            ? '${existingFamilyAddress.geolocation?.latitude}, ${existingFamilyAddress.geolocation?.longitude}'
            : null,
        newValue: newPerson.location != null
            ? '${newPerson.location!.latitude}, ${newPerson.location!.longitude}'
            : null,
        controller: controllers.location,
      ),
      PropertyRow(
        label: 'Martial Status',
        existingValue: existingPerson.martialStatus?.name,
        newValue: 'single',
        controller: controllers.martialStatus,
      ),
      PropertyRow(
        label: 'Study Year',
        existingValue: existingPerson.studyYear?.name,
        newValue: churchAdminContext
            .studyYears[meetingHelperContext
                .studyYears[newPerson.studyYear]
                ?.grade]
            ?.name,
        controller: controllers.studyYear,
      ),
      PropertyRow(
        label: 'Work Status',
        existingValue: existingPerson.workStatus?.name,
        newValue: 'student',
        controller: controllers.workStatus,
      ),
      PropertyRow(
        label: 'Job',
        existingValue: existingPerson.job?.name,
        newValue: null,
        controller: controllers.job,
      ),
      PropertyRow(
        label: 'Job Description',
        existingValue: existingPerson.jobDescription,
        newValue: null,
        controller: controllers.jobDescription,
      ),
      PropertyRow(
        label: 'Qualification',
        existingValue: existingPerson.qualification?.name,
        newValue: null,
        controller: controllers.qualification,
      ),
      PropertyRow(
        label: 'Person Type',
        existingValue: existingPerson.personType?.name,
        newValue: null,
        controller: controllers.personType,
      ),
      PropertyRow(
        label: 'Father',
        existingValue: existingPerson.father?.name,
        newValue: churchAdminContext.fathers[newPerson.cFather]?.name,
        controller: controllers.father,
      ),
      PropertyRow(
        label: 'Shammas Level',
        existingValue: existingPerson.shammasLevel?.name,
        newValue: churchAdminContext
            .shammasLevels[IdReference.fromPath(
              'ShammasLevels/${newPerson.shammasLevel}',
            )]
            ?.name,
        controller: controllers.shammasLevel,
      ),
      PropertyRow(
        label: 'Is Shammas',
        existingValue: existingPerson.isShammas.toString(),
        newValue: newPerson.isShammas.toString(),
        controller: controllers.isShammas,
      ),
      PropertyRow(
        label: 'School',
        existingValue: existingPerson.school?.name,
        newValue: churchAdminContext.schools[newPerson.school]?.name,
        controller: controllers.school,
      ),
      PropertyRow(
        label: 'Notes',
        existingValue: existingPerson.notes,
        newValue: newPerson.notes,
        controller: controllers.notes,
      ),
    ];
  }

  Widget _buildActionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () => widget.complete((null, null)),
          child: const Text('Keep as 2 persons'),
        ),
        const SizedBox(width: 8),
        ElevatedButton(
          onPressed: () => widget.complete(
            _handleMerge(
              churchAdminContext: widget.churchAdminContext,
              existingPerson: widget.existingPerson,
              existingPersonFamilyAddress: widget.existingPersonFamilyAddress,
              newPerson: widget.newPerson,
              similarityScore: widget.similarityScore,
              meetingHelperContext: widget.meetingHelperContext,
              existingFamilyAddress: existingFamilyAddress,
              controllers: controllers,
            ),
          ),
          child: const Text('Merge persons'),
        ),
      ],
    );
  }

  static (Person?, Address?) _handleMerge({
    required Address existingPersonFamilyAddress,
    required Person existingPerson,
    required meetinghelper.Person newPerson,
    required double similarityScore,
    required ChurchAdminContext churchAdminContext,
    required MeetingHelperContext meetingHelperContext,
    required MergeControllers controllers,
    required Address existingFamilyAddress,
  }) {
    final location = controllers.location.value
        ? newPerson.location != null
              ? Point(
                  newPerson.location!.latitude,
                  newPerson.location!.longitude,
                )
              : null
        : existingFamilyAddress.geolocation;

    final addressText = controllers.address.value == null
        ? '${existingFamilyAddress.specialLandmark?.trim() ?? ''}\n${newPerson.address?.trim() ?? ''}'
              .trim()
        : controllers.address.value == true
        ? newPerson.address
        : existingFamilyAddress.specialLandmark;

    final address = existingFamilyAddress.copyWith(
      specialLandmark: addressText,
      geolocation: location,
    );

    var shammasLevel = controllers.shammasLevel.value
        ? churchAdminContext.shammasLevels[IdReference.fromPath(
            'ShammasLevels/${newPerson.shammasLevel}',
          )]
        : existingPerson.shammasLevel;
    var gender = controllers.gender.value
        ? newPerson.gender
        : existingPerson.gender;
    final merged = existingPerson.copyWith(
      name: controllers.name.value ? newPerson.name : existingPerson.name,
      birthdate: controllers.birthdate.value
          ? newPerson.birthDate
          : existingPerson.birthdate,
      gender: gender,
      mainPhone: controllers.mainPhone.value
          ? newPerson.phone
          : existingPerson.mainPhone,
      otherPhones: controllers.otherPhones.value
          ? newPerson.phones.cast<String, String>()
          : existingPerson.otherPhones,
      church: controllers.church.value
          ? churchAdminContext.churches[newPerson.church]
          : existingPerson.church,
      college: controllers.college.value
          ? churchAdminContext.colleges[newPerson.college]
          : existingPerson.college,
      color: controllers.color.value
          ? newPerson.color?.toUiColor()
          : existingPerson.color,
      family: existingPerson.family,
      martialStatus: controllers.martialStatus.value
          ? MartialStatus.single
          : existingPerson.martialStatus,
      studyYear: controllers.studyYear.value
          ? churchAdminContext.studyYears[meetingHelperContext
                .studyYears[newPerson.studyYear]
                ?.grade]
          : existingPerson.studyYear,
      workStatus: controllers.workStatus.value
          ? WorkStatus.student
          : existingPerson.workStatus,
      job: controllers.job.value ? null : existingPerson.job,
      jobDescription: controllers.jobDescription.value
          ? null
          : existingPerson.jobDescription,
      qualification: controllers.qualification.value
          ? null
          : existingPerson.qualification,
      personType: controllers.personType.value
          ? null
          : existingPerson.personType,
      father: controllers.father.value
          ? churchAdminContext.fathers[newPerson.cFather]
          : existingPerson.father,
      shammasLevel: shammasLevel,
      isShammas:
          gender &&
          shammasLevel != null &&
          (controllers.isShammas.value
              ? newPerson.isShammas
              : existingPerson.isShammas),
      school: controllers.school.value
          ? churchAdminContext.schools[newPerson.school]
          : existingPerson.school,
      notes: controllers.notes.value == null
          ? '${newPerson.notes?.trim() ?? ''}\n${existingPerson.notes?.trim() ?? ''}'
                .trim()
          : controllers.notes.value == true
          ? newPerson.notes
          : existingPerson.notes,
    );

    return (merged, address);
  }
}
