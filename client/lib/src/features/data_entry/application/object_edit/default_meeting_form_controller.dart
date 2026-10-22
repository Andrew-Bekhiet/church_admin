import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';

class DefaultMeetingFormController extends AdvancedFormController {
  static const String _servicePrefix = 'خدمة';
  static const String _meetingWord = 'اجتماع';

  static String nameDerivedFrom(String ownerName) {
    final trimmed = ownerName.trim();

    return switch (trimmed) {
      '' => '',
      _servicePrefix => _meetingWord,
      _ when trimmed.startsWith('$_servicePrefix ') =>
        '$_meetingWord ${trimmed.substring(_servicePrefix.length).trim()}',
      _ => '$_meetingWord $trimmed',
    };
  }

  final AdvancedTextFieldController<ObjectEditError> _ownerName;
  late String _lastDerivedName = name.fieldValue;

  late final isCreated = AdvancedBooleanFieldController<ObjectEditError>(
    initialValue: true,
  );
  late final name = AdvancedTextFieldController<ObjectEditError>(
    initialValue: nameDerivedFrom(_ownerName.fieldValue),
    validator: (name) => isCreated.fieldValue && name.trim().isEmpty
        ? ObjectEditError.defaultMeetingNameRequired
        : null,
  );

  String? get chosenName => switch (name.fieldValue.trim()) {
    final chosen when isCreated.fieldValue && chosen.isNotEmpty => chosen,
    _ => null,
  };

  DefaultMeetingFormController({
    required this._ownerName,
  }) : super(debugName: 'defaultMeeting') {
    registerFields([isCreated, name]);
    _lastDerivedName = name.fieldValue;
    name.subscribeToFields([isCreated]);
    addRelation(_ownerName, nameDerivedFrom, _followOwnerName);
  }

  Meeting? draftFor({
    required String id,
    required Viewable owner,
    String? serviceId,
    String? groupId,
  }) => switch (chosenName) {
    final meetingName? => Meeting(
      id: id,
      name: meetingName,
      audience: MeetingAudience.personsAndServants,
      isArchived: false,
      color: owner.color,
      serviceId: serviceId,
      groupId: groupId,
    ),
    null => null,
  };

  void _followOwnerName(String derivedName) {
    final userKeptTheDerivedName = name.fieldValue == _lastDerivedName;
    _lastDerivedName = derivedName;
    if (userKeptTheDerivedName) name.prefill(derivedName);
  }
}
