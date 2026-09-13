import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class ManageUsersViewToggle extends StatelessWidget {
  const ManageUsersViewToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ManageUsersCubit, ManageUsersState>(
      builder: (context, state) {
        if (state.searchQuery.isNotEmpty) return const SizedBox.shrink();

        final cubit = context.read<ManageUsersCubit>();

        return switch (state.preferredView) {
          ManageUsersView.grouped => IconButton(
            tooltip: 'عرض كقائمة',
            icon: const Icon(Symbols.format_list_bulleted),
            onPressed: cubit.showFlat,
          ),
          ManageUsersView.flat => IconButton(
            tooltip: 'تجميع حسب المسؤولية',
            icon: const Icon(Symbols.account_tree),
            onPressed: cubit.showGrouped,
          ),
        };
      },
    );
  }
}
