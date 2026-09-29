import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';

class PersonContactsController extends ChangeNotifier {
  final Stream<Family?> Function(String familyId) streamFamily;
  final Future<void> Function()? onDispose;
  late final StreamSubscription<List<PersonType>> _personTypesSubscription;

  List<PersonType> _familyAdminTypes = const [];
  List<PersonType> get familyAdminTypes => _familyAdminTypes;

  PersonContactsController({
    required Stream<List<PersonType>> personTypes,
    required this.streamFamily,
    this.onDispose,
  }) {
    _personTypesSubscription = personTypes.listen((types) {
      _familyAdminTypes = types.where((t) => t.isFamilyAdmin).toList();
      notifyListeners();
    });
  }

  factory PersonContactsController.fromDatabase() {
    final personTypes = DatabaseService.I.metadata.personTypes.streamAll();

    return PersonContactsController(
      personTypes: personTypes,
      streamFamily: (familyId) =>
          DatabaseService.I.families.streamSingleById(id: familyId),
      onDispose: personTypes.dispose,
    );
  }

  Future<List<PhoneContact>> familyAdminContacts(String familyId) async {
    final family = await streamFamily(familyId).first;

    return family?.contacts ?? const [];
  }

  @override
  void dispose() {
    unawaited(_personTypesSubscription.cancel());
    if (onDispose case final onDispose?) unawaited(onDispose());
    super.dispose();
  }
}
