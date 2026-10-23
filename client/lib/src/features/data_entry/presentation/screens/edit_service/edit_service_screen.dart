import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class EditServiceScreen extends StatefulWidget {
  final ServiceEditIntent intent;

  const EditServiceScreen({required this.intent, super.key});

  @override
  State<EditServiceScreen> createState() => _EditServiceScreenState();
}

class _EditServiceScreenState extends State<EditServiceScreen> {
  final User? _currentUser = AuthBloc.I.currentUserData;
  final PersonMetadataCatalog _metadata = PersonMetadataCatalog(
    DatabaseService.I.metadata,
  );
  late final ServiceFormController _form = ServiceFormController(
    intent: widget.intent,
    servicesDAO: DatabaseService.I.services,
    currentUserId: _currentUser?.uid,
  );
  late final DefaultMeetingSaveCubit<Service> _saveCubit =
      DefaultMeetingSaveCubit(
        form: _form,
        dao: DatabaseService.I.services,
        photoUploader: RemotePhotoUploader(DatabaseService.I.photos),
        meetingOwner: _form,
        meetingsDAO: DatabaseService.I.meetings,
      );

  @override
  Widget build(BuildContext context) {
    return EditObjectScaffold<Service>(
      form: _form,
      saveCubit: _saveCubit,
      canDelete: (saved) => _currentUser?.canDeleteObject(saved) ?? false,
      detailsRouteOf: (service) =>
          ViewServiceRoute(id: service.id, service: service),
      nameHint: 'اسم الخدمة',
      fields: Column(
        spacing: 24,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AdvancedSingleObjectSelectionField<Service, ObjectEditError>(
            field: _form.nextService,
            label: 'الخدمة التالية',
            translateError: ObjectEditError.messageOf,
            listController: _form.servicesMatching,
            errorMaxLines: 2,
            previewBuilder: ObjectSelectionPreview.new,
          ),
          AdvancedStudyYearRangeField<ObjectEditError>(
            key: EditServiceScreenKeys.studyYears,
            field: _form.studyYears,
            label: 'السنوات الدراسية',
            translateError: ObjectEditError.messageOf,
            studyYears: _metadata.studyYears,
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

abstract final class EditServiceScreenKeys {
  static const Key studyYears = ValueKey('Edit Service Study Years Key');
}
