import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class AttendanceSearchBar extends StatefulWidget {
  final ValueChanged<String?> onChanged;

  const AttendanceSearchBar({required this.onChanged, super.key});

  @override
  State<AttendanceSearchBar> createState() => _AttendanceSearchBarState();
}

class _AttendanceSearchBarState extends State<AttendanceSearchBar> {
  final TextEditingController _controller = TextEditingController();

  void _onChanged(String value) {
    widget.onChanged(value.isEmpty ? null : value);
  }

  void _clear() {
    _controller.clear();
    widget.onChanged(null);
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
        child: Material(
          elevation: 1,
          borderRadius: BorderRadius.circular(30),
          color: theme.colorScheme.surfaceContainerHigh,
          child: ValueListenableBuilder(
            valueListenable: _controller,
            builder: (context, value, child) => TextField(
              controller: _controller,
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
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
