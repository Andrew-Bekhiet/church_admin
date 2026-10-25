import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:uuid/uuid.dart' show Uuid;

class FamilyFormController extends ObjectFormController<Family> {
  Family? _savedFamily;
  final FamiliesDAO _familiesDAO;

  late final AddressFormController address;
  late final relatives = AdvancedFormController(debugName: 'relatives');
  late final phones = PhoneContactsFormController(
    own: const [],
    family: initialDraft.contacts,
    familyOnly: true,
  );
  late final church = AdvancedFieldController<Church?, ObjectEditError>(
    initialValue: initialDraft.church,
  );
  late final status = AdvancedFieldController<MartialStatus?, ObjectEditError>(
    initialValue: initialDraft.status,
  );
  late final deceasedSpouseName = AdvancedTextFieldController<ObjectEditError>(
    initialValue: initialDraft.deceasedSpouseName ?? '',
  );
  late final marriageDate = AdvancedFieldController<DateTime?, ObjectEditError>(
    initialValue: initialDraft.marriageDate,
  );
  late final notes = AdvancedTextFieldController<ObjectEditError>(
    initialValue: initialDraft.notes ?? '',
  );
  late final parents = AdvancedFieldController<Set<Family>, ObjectEditError>(
    initialValue: initialDraft.parents?.toSet() ?? const {},
    validator: (parents) => _includesThisFamily(parents)
        ? ObjectEditError.familyIsItsOwnParent
        : null,
  );
  late final children = AdvancedFieldController<Set<Family>, ObjectEditError>(
    initialValue: initialDraft.children?.toSet() ?? const {},
    validator: (children) => _includesThisFamily(children)
        ? ObjectEditError.familyIsItsOwnChild
        : null,
  );
  late final lastVisit = AdvancedFieldController<DateTime?, ObjectEditError>(
    initialValue: initialDraft.lastVisit?.time,
  );
  late final lastFatherVisit =
      AdvancedFieldController<DateTime?, ObjectEditError>(
        initialValue: initialDraft.lastFatherVisit?.time,
      );

  bool get isWidowed => switch (status.fieldValue) {
    MartialStatus.widowed || MartialStatus.widowedWithoutChildren => true,
    _ => false,
  };

  Family get _relativesBaseline => savedObject ?? initialDraft;

  @override
  Family? get savedObject => _savedFamily;

  FamilyFormController({
    required FamilyEditIntent intent,
    required this._familiesDAO,
    required AddressFormServices addressServices,
    required super.currentUserId,
  }) : _savedFamily = switch (intent) {
         UpdateFamily(:final family) => family,
         CreateFamily() => null,
       },
       super(
         initialDraft: switch (intent) {
           UpdateFamily(:final family) => family,
           final CreateFamily create => create.draftFamily(const Uuid().v4()),
         },
         debugName: 'family',
       ) {
    address = AddressFormController(
      initialAddress: initialDraft.address,
      services: addressServices,
      isRequired: () => true,
    );
    registerFields([
      photo,
      name,
      church,
      status,
      deceasedSpouseName,
      marriageDate,
      notes,
      color,
      lastVisit,
      lastFatherVisit,
    ]);
    relatives.registerFields([parents, children]);
    addSubform(address);
    addSubform(phones);
    addSubform(relatives);
  }

  ViewableObjectListController<Family> familiesMatching(
    Stream<String?> search,
  ) => SearchableDaoListController.over(_familiesDAO)(search);

  void useLoadedRelatives(Family loaded) {
    final saved = savedObject;
    if (saved == null || isDisposed) return;

    final parentsUntouched = _hasRelatives(parents, saved.parents);
    final childrenUntouched = _hasRelatives(children, saved.children);
    final withRelatives = saved.copyWith(
      parents: loaded.parents ?? saved.parents,
      children: loaded.children ?? saved.children,
    );
    _savedFamily = withRelatives;

    _showLoadedRelatives(
      parents,
      shown: saved.parents,
      loaded: withRelatives.parents,
      untouched: parentsUntouched,
    );
    _showLoadedRelatives(
      children,
      shown: saved.children,
      loaded: withRelatives.children,
      untouched: childrenUntouched,
    );
    if (parentsUntouched && childrenUntouched) {
      relatives.registerFields([parents, children]);
    }
  }

  @override
  Family toObject() => initialDraft.copyWith(
    name: editedName,
    address: address.toAddress(),
    contacts: phones.familyContacts,
    church: church.fieldValue,
    status: status.fieldValue ?? initialDraft.status,
    deceasedSpouseName: switch (deceasedSpouseName.fieldValue.trim()) {
      '' => null,
      final name => name,
    },
    marriageDate: marriageDate.fieldValue,
    notes: PersonFormValues.optionalText(
      initialDraft.notes,
      notes.fieldValue,
    ),
    color: color.fieldValue,
    parents: PersonFormValues.listOf(
      _relativesBaseline.parents,
      parents.fieldValue,
    ),
    children: PersonFormValues.listOf(
      _relativesBaseline.children,
      children.fieldValue,
    ),
    lastVisit: recordedByMeIfDateChanged(lastVisit, initialDraft.lastVisit),
    lastFatherVisit: recordedByMeIfDateChanged(
      lastFatherVisit,
      initialDraft.lastFatherVisit,
      isFatherVisit: true,
    ),
  );

  void _showLoadedRelatives(
    AdvancedFieldController<Set<Family>, ObjectEditError> field, {
    required List<Family>? shown,
    required List<Family>? loaded,
    required bool untouched,
  }) {
    if (untouched) {
      field.prefill({...?loaded});

      return;
    }

    final notShownYet = {...?loaded}.difference({...?shown});
    if (notShownYet.isNotEmpty) {
      field.prefill({...field.fieldValue, ...notShownYet});
    }
  }

  bool _hasRelatives(
    AdvancedFieldController<Set<Family>, ObjectEditError> field,
    List<Family>? relatives,
  ) => const SetEquality<Family>().equals(
    field.fieldValue,
    relatives?.toSet() ?? const {},
  );

  bool _includesThisFamily(Set<Family> families) =>
      families.any((family) => family.id == initialDraft.id);
}
