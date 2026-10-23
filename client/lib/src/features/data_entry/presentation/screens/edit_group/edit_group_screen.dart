import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class EditGroupScreen extends StatefulWidget {
  static const int _validityYearsAhead = 5;

  final GroupEditIntent intent;

  const EditGroupScreen({required this.intent, super.key});

  @override
  State<EditGroupScreen> createState() => _EditGroupScreenState();
}

class _EditGroupScreenState extends State<EditGroupScreen> {
  final User? _currentUser = AuthBloc.I.currentUserData;
  final DateTime _today = DateUtils.dateOnly(DateTime.now());
  late final GroupFormController _form = GroupFormController(
    intent: widget.intent,
    servicesDAO: DatabaseService.I.services,
    currentUserId: _currentUser?.uid,
  );
  late final DefaultMeetingSaveCubit<Group> _saveCubit =
      DefaultMeetingSaveCubit(
        form: _form,
        dao: DatabaseService.I.groups,
        photoUploader: FunctionsPhotoUploader(FunctionsService.I),
        analyticsService: AnalyticsService.I,
        meetingOwner: _form,
        meetingsDAO: DatabaseService.I.meetings,
      );

  @override
  Widget build(BuildContext context) {
    return EditObjectScaffold<Group>(
      form: _form,
      saveCubit: _saveCubit,
      canDelete: (saved) => _currentUser?.canDeleteObject(saved) ?? false,
      detailsRouteOf: (group) => ViewGroupRoute(id: group.id, group: group),
      fields: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AdvancedSingleObjectSelectionField<Service, ObjectEditError>(
            key: EditGroupScreenKeys.serviceField,
            field: _form.service,
            label: 'الخدمة',
            translateError: ObjectEditError.messageOf,
            listController: _form.servicesMatching,
            errorMaxLines: 2,
            previewBuilder: ObjectSelectionPreview.new,
          ),
          AdvancedDateRangeField<ObjectEditError>(
            field: _form.validity,
            label: 'الصلاحية',
            translateError: ObjectEditError.messageOf,
            firstDate: _today,
            lastDate: DateTime(
              _today.year + EditGroupScreen._validityYearsAhead,
              _today.month,
              _today.day,
            ),
          ),
          if (_form.defaultMeeting case final defaultMeeting?)
            DefaultMeetingFields(form: defaultMeeting),
          AdvancedColorField<ObjectEditError>(
            field: _form.color,
            translateError: ObjectEditError.messageOf,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    unawaited(_saveCubit.close());
    _form.dispose();
    super.dispose();
  }
}

abstract final class EditGroupScreenKeys {
  static const Key serviceField = ValueKey('Edit Group Service Field Key');
}
