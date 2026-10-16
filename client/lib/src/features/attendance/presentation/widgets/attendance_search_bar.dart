import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class AttendanceSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final double bottomViewInset;
  final ValueChanged<String?> onChanged;

  const AttendanceSearchBar({
    required this.controller,
    required this.onChanged,
    required this.bottomViewInset,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      minimum: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 8,
        bottom: 12 + bottomViewInset,
      ),
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(30),
        color: theme.colorScheme.surfaceContainerHigh,
        child: ValueListenableBuilder(
          valueListenable: controller,
          builder: (context, value, child) => TextField(
            controller: controller,
            textInputAction: TextInputAction.search,
            onChanged: _onChanged,
            decoration: InputDecoration(
              hintText: 'بحث بالاسم أو رقم الهاتف ...',
              prefixIcon: const Icon(Symbols.search),
              suffixIcon: value.text.isEmpty
                  ? null
                  : IconButton(
                      icon: const Icon(Symbols.clear),
                      onPressed: () => _clear(context),
                    ),
              filled: true,
              fillColor: Colors.transparent,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onChanged(String value) {
    onChanged(value.isEmpty ? null : value);
  }

  void _clear(BuildContext context) {
    controller.clear();
    onChanged(null);
    FocusScope.of(context).unfocus();
  }
}
