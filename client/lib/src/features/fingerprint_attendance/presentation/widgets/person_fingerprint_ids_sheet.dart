import 'dart:async';

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
  final _employeeCodeController = TextEditingController();
  Object? _unacknowledgedWriteError;

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    final textTheme = TextTheme.of(context);

    return BlocConsumer<PersonFingerprintIdsCubit, PersonFingerprintIdsState>(
      listenWhen: (previous, current) => previous.write != current.write,
      listener: (_, state) {
        _clearFieldIfCodeAdded(state.write);
        _recordWriteError(state.write);
      },
      builder: (context, state) {
        final isWriting = state.write is FingerprintIdsWriteInProgress;
        final isEmployeeCodeBlank = _employeeCodeController.text.trim().isEmpty;

        return Padding(
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
              switch ((state.fingerprintIds, state.loadError)) {
                (null, null) => const Padding(
                  key: PersonFingerprintIdsSheetKeys.loadingIndicator,
                  padding: EdgeInsetsDirectional.symmetric(vertical: 32),
                  child: Center(child: CircularProgressIndicator()),
                ),
                (null, _?) => const PersonFingerprintIdsSheetNotice(
                  key: PersonFingerprintIdsSheetKeys.loadErrorNotice,
                  icon: Symbols.cloud_off,
                  title: 'تعذر تحميل أرقام البصمة',
                  detail: 'تأكد من الاتصال بالإنترنت ثم افتح الصفحة مرة أخرى',
                ),
                ([], _) => const PersonFingerprintIdsSheetNotice(
                  key: PersonFingerprintIdsSheetKeys.emptyNotice,
                  icon: Symbols.fingerprint,
                  title: 'لا يوجد رقم بصمة بعد',
                  detail:
                      'أضف رقم هذا الشخص على جهاز البصمة ليُسجَّل حضوره '
                      'تلقائيًا كلما وضع إصبعه على الجهاز',
                ),
                (final fingerprintIds?, _) => Flexible(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: fingerprintIds.length,
                    separatorBuilder: (_, _) => const Divider(height: 1),
                    itemBuilder: (context, index) {
                      final fingerprintId = fingerprintIds[index];

                      return PersonFingerprintIdTile(
                        fingerprintId: fingerprintId,
                        onRemove: isWriting
                            ? null
                            : () => _removeIfConfirmed(fingerprintId),
                      );
                    },
                  ),
                ),
              },
              if (state.fingerprintIds != null) ...[
                TextField(
                  key: PersonFingerprintIdsSheetKeys.employeeCodeField,
                  controller: _employeeCodeController,
                  enabled: !isWriting,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    labelText: 'رقم البصمة الجديد',
                    prefixIcon: const Icon(Symbols.dialpad),
                    error: switch (_unacknowledgedWriteError) {
                      null => null,
                      FingerprintEmployeeCodeAlreadyLinkedException() =>
                        const Text(
                          'هذا الرقم مسجَّل من قبل لهذا الشخص أو لشخص آخر',
                          key: PersonFingerprintIdsSheetKeys
                              .employeeCodeAlreadyLinkedMessage,
                        ),
                      BlankFingerprintEmployeeCodeException() => const Text(
                        'اكتب رقم البصمة أولًا',
                        key: PersonFingerprintIdsSheetKeys
                            .blankEmployeeCodeMessage,
                      ),
                      _ => const Text(
                        'تعذر حفظ التغيير، تأكد من الاتصال بالإنترنت ثم حاول '
                        'مرة أخرى',
                        key: PersonFingerprintIdsSheetKeys.writeFailedMessage,
                      ),
                    },
                  ),
                  onChanged: (_) =>
                      setState(() => _unacknowledgedWriteError = null),
                  onSubmitted: (_) => _addEmployeeCode(),
                ),
                FilledButton.icon(
                  key: PersonFingerprintIdsSheetKeys.addButton,
                  onPressed: isWriting || isEmployeeCodeBlank
                      ? null
                      : _addEmployeeCode,
                  icon: isWriting
                      ? const SizedBox.square(
                          dimension: 18,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Icon(Symbols.add),
                  label: const Text('إضافة الرقم'),
                ),
              ],
            ],
          ),
        );
      },
    );
  }

  void _clearFieldIfCodeAdded(FingerprintIdsWrite write) {
    if (write is FingerprintEmployeeCodeAdded) _employeeCodeController.clear();
  }

  void _recordWriteError(FingerprintIdsWrite write) {
    setState(
      () => _unacknowledgedWriteError = switch (write) {
        FingerprintIdsWriteFailed(:final error) => error,
        _ => null,
      },
    );
  }

  void _addEmployeeCode() => unawaited(
    context.read<PersonFingerprintIdsCubit>().addEmployeeCode(
      _employeeCodeController.text,
    ),
  );

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
    _employeeCodeController.dispose();
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
  static const Key employeeCodeAlreadyLinkedMessage = ValueKey(
    (PersonFingerprintIdsSheetKeys, #employeeCodeAlreadyLinkedMessage),
  );
  static const Key blankEmployeeCodeMessage = ValueKey(
    (PersonFingerprintIdsSheetKeys, #blankEmployeeCodeMessage),
  );
  static const Key writeFailedMessage = ValueKey(
    (PersonFingerprintIdsSheetKeys, #writeFailedMessage),
  );
}
