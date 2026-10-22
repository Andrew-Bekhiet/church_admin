import 'dart:async';

import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class EditClassScreen extends StatefulWidget {
  final ClassEditIntent intent;

  const EditClassScreen({required this.intent, super.key});

  @override
  State<EditClassScreen> createState() => _EditClassScreenState();
}

class _EditClassScreenState extends State<EditClassScreen> {
  final User? _currentUser = AuthBloc.I.currentUserData;
  final PersonMetadataCatalog _metadata = PersonMetadataCatalog(
    DatabaseService.I.metadata,
  );
  late final ClassFormController _form = ClassFormController(
    intent: widget.intent,
    servicesDAO: DatabaseService.I.services,
    recordedByUserId: _currentUser?.uid,
  );
  late final ObjectSaveCubit<Class> _saveCubit = ObjectSaveCubit(
    form: _form,
    dao: DatabaseService.I.classes,
    photoUploader: FunctionsPhotoUploader(FunctionsService.I),
  );

  @override
  Widget build(BuildContext context) {
    return EditObjectScaffold<Class>(
      form: _form,
      saveCubit: _saveCubit,
      canDelete: (saved) => _currentUser?.canDeleteObject(saved) ?? false,
      detailsRouteOf: (class$) => ViewClassRoute(id: class$.id, $class: class$),
      nameHint: 'اسم الفصل',
      fields: Column(
        spacing: 24,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AdvancedGenderField<ObjectEditError>(
            field: _form.gender,
            maleLabel: 'بنيــن',
            femaleLabel: 'بنات',
            bothLabel: 'بنيــن و بنات',
          ),
          AdvancedSingleObjectSelectionField<Service, ObjectEditError>(
            field: _form.service,
            label: 'الخدمة الحالية',
            translateError: ObjectEditError.messageOf,
            listController: _form.servicesMatching,
            errorMaxLines: 2,
            previewBuilder: ObjectSelectionPreview.new,
          ),
          AdvancedFieldBuilder<Service?, ObjectEditError>(
            field: _form.service,
            builder: (context, _, _) =>
                AdvancedStudyYearRangeField<ObjectEditError>(
                  key: EditClassScreenKeys.studyYears,
                  field: _form.studyYears,
                  label: 'السنوات الدراسية',
                  translateError: _describe,
                  studyYears: _metadata.studyYears,
                  clearable: false,
                ),
          ),
          AdvancedColorField<ObjectEditError>(
            field: _form.color,
            translateError: ObjectEditError.messageOf,
          ),
        ],
      ),
    );
  }

  String _describe(ObjectEditError error) => switch ((
    error,
    _form.service.fieldValue,
  )) {
    (
      ObjectEditError.studyYearsOutsideService,
      Service(studyYearFrom: final from?, studyYearTo: final to?),
    ) =>
      'السنة الدراسية يجب ان تكون بين ${from.name} و${to.name}',
    _ => error.message,
  };

  @override
  void dispose() {
    unawaited(_saveCubit.close());
    _form.dispose();
    super.dispose();
  }
}

abstract final class EditClassScreenKeys {
  static const Key studyYears = ValueKey('Edit Class Study Years Key');
}
