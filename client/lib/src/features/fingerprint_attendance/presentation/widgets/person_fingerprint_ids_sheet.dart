import 'dart:async';

import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class PersonFingerprintIdsSheet extends StatefulWidget {
  static Future<void> show(BuildContext context, {required Person person}) {
    return showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      useSafeArea: true,
      isScrollControlled: true,
      builder: (_) => BlocProvider(
        create: (_) => PersonFingerprintIdsCubit(personId: person.id),
        child: PersonFingerprintIdsSheet(personName: person.name),
      ),
    );
  }

  final String personName;

  const PersonFingerprintIdsSheet({required this.personName, super.key});

  @override
  State<PersonFingerprintIdsSheet> createState() =>
      _PersonFingerprintIdsSheetState();
}

class _PersonFingerprintIdsSheetState extends State<PersonFingerprintIdsSheet> {
  late final FingerprintEmployeeCodeFormController _form;

  @override
  void initState() {
    super.initState();
    _form = FingerprintEmployeeCodeFormController(
      addEmployeeCode: context
          .read<PersonFingerprintIdsCubit>()
          .addEmployeeCode,
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    final textTheme = TextTheme.of(context);

    return BlocConsumer<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      listenWhen: (previous, current) => switch ((previous, current)) {
        (
          PersonFingerprintIdsLoaded(write: final previousWrite),
          PersonFingerprintIdsLoaded(write: final currentWrite),
        ) =>
          previousWrite != currentWrite,
        _ => false,
      },
      listener: (_, state) {
        if (state case PersonFingerprintIdsLoaded(:final write)) {
          _form.lockWhileWritingAndShowOutcomeOf(write);
        }
      },
      builder: (context, state) => SingleChildScrollView(
        reverse: true,
        padding: EdgeInsetsDirectional.only(
          start: 20,
          end: 20,
          bottom: MediaQuery.viewInsetsOf(context).bottom + 20,
        ),
        child: Column(
          mainAxisSize: .min,
          crossAxisAlignment: .stretch,
          spacing: 12,
          children: [
            Text(
              'بصمة الحضور',
              style: textTheme.headlineSmall?.copyWith(fontWeight: .bold),
            ),
            Text(
              'أرقام ${widget.personName} على جهاز البصمة',
              style: textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            ...switch (state) {
              PersonFingerprintIdsLoading() => const [
                Padding(
                  key: PersonFingerprintIdsSheetKeys.loadingIndicator,
                  padding: EdgeInsetsDirectional.symmetric(vertical: 32),
                  child: Center(child: CircularProgressIndicator()),
                ),
              ],
              PersonFingerprintIdsFailedToLoad() => const [
                PersonFingerprintIdsSheetNotice(
                  key: PersonFingerprintIdsSheetKeys.loadErrorNotice,
                  icon: Symbols.cloud_off,
                  title: 'تعذر تحميل أرقام البصمة',
                  detail: 'تأكد من الاتصال بالإنترنت ثم افتح الصفحة مرة أخرى',
                ),
              ],
              PersonFingerprintIdsLoaded(:final fingerprintIds, :final write) =>
                [
                  if (fingerprintIds.isEmpty)
                    const PersonFingerprintIdsSheetNotice(
                      key: PersonFingerprintIdsSheetKeys.emptyNotice,
                      icon: Symbols.fingerprint,
                      title: 'لا يوجد رقم بصمة بعد',
                      detail:
                          'أضف رقم هذا المخدوم على جهاز البصمة ليُسجَّل حضوره '
                          'تلقائيًا كلما وضع إصبعه على الجهاز',
                    )
                  else
                    Column(
                      mainAxisSize: .min,
                      children: [
                        for (final fingerprintId in fingerprintIds)
                          PersonFingerprintIdTile(
                            fingerprintId: fingerprintId,
                            onRemove: state.acceptsWrites
                                ? () => _removeIfConfirmed(fingerprintId)
                                : null,
                          ),
                      ],
                    ),
                  AdvancedTextInput<FingerprintEmployeeCodeError>(
                    key: PersonFingerprintIdsSheetKeys.employeeCodeField,
                    field: _form.employeeCode,
                    translateError: FingerprintEmployeeCodeError.messageOf,
                    labelText: 'رقم البصمة الجديد',
                    prefixIcon: const Icon(Symbols.dialpad),
                    keyboardType: TextInputType.text,
                    autocorrect: false,
                    enableSuggestions: false,
                    textInputAction: TextInputAction.done,
                    errorMaxLines: 3,
                    onSubmitted: (_) => _addEmployeeCodeIfValid(),
                  ),
                  AdvancedFieldBuilder<String, FingerprintEmployeeCodeError>(
                    field: _form.employeeCode,
                    builder: (context, _, _) => FilledButton.icon(
                      key: PersonFingerprintIdsSheetKeys.addButton,
                      onPressed: state.acceptsWrites && !_form.isBlank
                          ? _addEmployeeCodeIfValid
                          : null,
                      icon: switch (write) {
                        FingerprintIdsWriteInProgress() =>
                          CircularProgressIndicator(
                            strokeWidth: 2,
                            constraints: BoxConstraints.tight(
                              const Size.square(18),
                            ),
                          ),
                        _ => const Icon(Symbols.add),
                      },
                      label: const Text('إضافة الرقم'),
                    ),
                  ),
                ],
            },
          ],
        ),
      ),
    );
  }

  void _addEmployeeCodeIfValid() => unawaited(_form.submitIfValid());

  Future<void> _removeIfConfirmed(PersonFingerprintId fingerprintId) async {
    final cubit = context.read<PersonFingerprintIdsCubit>();
    final isConfirmed = await showDialog<bool>(
      context: context,
      builder: (_) => ConfirmationDialog(
        title: 'حذف رقم البصمة ${fingerprintId.employeeCode}؟',
        explanation:
            'لن يُسجَّل حضور ${widget.personName} تلقائيًا بهذا الرقم بعد حذفه',
        confirmLabel: 'حذف',
        isDestructive: true,
      ),
    );

    if (isConfirmed != true || !mounted) return;

    await cubit.remove(fingerprintId);
  }

  @override
  void dispose() {
    _form.dispose();
    super.dispose();
  }
}

abstract final class PersonFingerprintIdsSheetKeys extends WidgetKeys {
  static const Key loadingIndicator = ValueKey(
    (PersonFingerprintIdsSheetKeys, #loadingIndicator),
  );
  static const Key loadErrorNotice = ValueKey(
    (PersonFingerprintIdsSheetKeys, #loadErrorNotice),
  );
  static const Key emptyNotice = ValueKey(
    (PersonFingerprintIdsSheetKeys, #emptyNotice),
  );
  static const Key employeeCodeField = ValueKey(
    (PersonFingerprintIdsSheetKeys, #employeeCodeField),
  );
  static const Key addButton = ValueKey(
    (PersonFingerprintIdsSheetKeys, #addButton),
  );
}
