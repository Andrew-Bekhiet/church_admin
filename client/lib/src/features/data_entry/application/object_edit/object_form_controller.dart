import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/painting.dart' show Color;
import 'package:meta/meta.dart';

abstract class ObjectFormController<T extends ViewableWithIDAndImage>
    extends AdvancedFormController {
  final T initialDraft;
  final String? _currentUserId;

  late final photo = AdvancedFieldController<PhotoChange, ObjectEditError>(
    initialValue: const KeepPhoto(),
  );
  late final name = AdvancedTextFieldController<ObjectEditError>(
    initialValue: initialDraft.name,
    validator: filled(ObjectEditError.nameRequired),
  );
  late final color = AdvancedFieldController<Color?, ObjectEditError>(
    initialValue: initialDraft.color,
  );

  T? get savedObject;

  bool get isCreate => savedObject == null;

  bool get wasModified => value.wasModified;

  @protected
  String get editedName =>
      PersonFormValues.text(initialDraft.name, name.fieldValue);

  ObjectFormController({
    required this.initialDraft,
    required this._currentUserId,
    required super.debugName,
  }) : super(validationMode: ValidationMode.onUserInteraction);

  T toObject();

  @protected
  LastRecordedByInfo? recordedByMeIfDateChanged(
    AdvancedFieldController<DateTime?, ObjectEditError> field,
    LastRecordedByInfo? original, {
    bool isFatherVisit = false,
  }) => switch (field.fieldValue) {
    final date? when date != original?.time => LastRecordedByInfo(
      time: date,
      recordedBy: _currentUserId,
      isFatherVisit: isFatherVisit,
    ),
    _ => original,
  };
}
