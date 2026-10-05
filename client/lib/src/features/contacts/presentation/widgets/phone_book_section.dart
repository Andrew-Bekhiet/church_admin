import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhoneBookSection extends StatelessWidget {
  final PhoneBookCubit Function(BuildContext context) create;
  final bool showOwnNumbers;
  final void Function(String phone) onCall;
  final void Function(String phone)? onAddToContacts;

  const PhoneBookSection({
    required this.create,
    required this.onCall,
    this.showOwnNumbers = true,
    this.onAddToContacts,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final titleSmall = TextTheme.of(context).titleSmall;
    final phones = PhoneNumberService.I;

    return BlocProvider(
      create: create,
      child: BlocBuilder<PhoneBookCubit, PhoneBookState>(
        builder: (context, state) => switch (state) {
          PhoneBookLoading() => const LinearProgressIndicator(),
          PhoneBookLoaded(:final book) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (showOwnNumbers) ...[
                ListTile(title: Text('أرقام الهاتف', style: titleSmall)),
                if (book.own.isEmpty)
                  PhoneNumberPropertyWidget('رقم الهاتف', '', onCall),
                for (final contact in book.ownMainFirst)
                  PhoneNumberPropertyWidget(
                    [
                      contact.label ?? 'رقم الهاتف',
                      if (contact.isMainPhone) '(أساسي)',
                    ].join(' '),
                    phones.toDisplay(contact.phone),
                    onCall,
                    addToContacts: onAddToContacts,
                  ),
              ],
              if (book.family.isNotEmpty) ...[
                ListTile(title: Text('أرقام الأسرة', style: titleSmall)),
                for (final relative in book.family)
                  PhoneNumberPropertyWidget(
                    relative.roleLabel,
                    phones.toDisplay(relative.contact.phone),
                    onCall,
                    addToContacts: onAddToContacts,
                  ),
              ],
            ],
          ),
        },
      ),
    );
  }
}
