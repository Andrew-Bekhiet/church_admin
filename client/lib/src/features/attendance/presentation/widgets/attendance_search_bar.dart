import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class AttendanceSearchBar extends StatefulWidget {
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
  State<AttendanceSearchBar> createState() => _AttendanceSearchBarState();
}

class _AttendanceSearchBarState extends State<AttendanceSearchBar> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      minimum: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 8,
        bottom: 12 + widget.bottomViewInset,
      ),
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(30),
        color: theme.colorScheme.surfaceContainerHigh,
        child: ValueListenableBuilder(
          valueListenable: widget.controller,
          builder: (context, value, child) => TextField(
            controller: widget.controller,
            textInputAction: TextInputAction.search,
            onChanged: _onChanged,
            decoration: InputDecoration(
              hintText: 'بحث بالاسم أو رقم الهاتف ...',
              prefixIcon: const Icon(Symbols.search),
              suffixIcon: value.text.isEmpty
                  ? null
                  : IconButton(
                      icon: const Icon(Symbols.clear),
                      onPressed: _clear,
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
    widget.onChanged(value.isEmpty ? null : value);
  }

  void _clear() {
    widget.controller.clear();
    widget.onChanged(null);
    FocusScope.of(context).unfocus();
  }
}
