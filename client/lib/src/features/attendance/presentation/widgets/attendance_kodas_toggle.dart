import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AttendanceKodasToggle extends StatelessWidget {
  final Person person;

  const AttendanceKodasToggle({required this.person, super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    final tookKodas = context.select<RecordKodasCubit, bool?>(
      (cubit) => switch (cubit.state) {
        final RecordKodasReady ready => ready.tookKodas(person.id),
        RecordKodasLoading() || RecordKodasHidden() => null,
      },
    );

    return AttendanceLabelledToggle(
      selected: tookKodas ?? false,
      label: 'تناول',
      semanticsLabel: 'تناول ${person.name}',
      icon: const KodasChaliceIcon(),
      fillColor: colorScheme.primary,
      iconColor: colorScheme.onPrimary,
      selectedLabelColor: colorScheme.primary,
      onTap: switch (tookKodas) {
        null => null,
        _ => () => unawaited(
          context.read<RecordKodasCubit>().toggleKodas(person),
        ),
      },
    );
  }
}
