import 'dart:async';

import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_symbols_icons/symbols.dart';

class SearchField extends StatelessWidget {
  /// The sink to which the search query will be added
  final StreamSink<String?> searchSink;

  /// Whether the search field can be hidden
  /// and the search query can be null
  final bool canHide;

  /// Passed to the TextField
  final bool autofocus;

  const SearchField({
    required this.searchSink,
    this.canHide = false,
    this.autofocus = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final IconThemeData iconTheme = IconTheme.of(context);
    final TextStyle defaultTextStyle = DefaultTextStyle.of(context).style;

    return TextField(
      autofocus: autofocus,
      textInputAction: TextInputAction.search,
      style: defaultTextStyle,
      decoration: InputDecoration(
        hintText: 'بحث ...',
        hintStyle: defaultTextStyle.copyWith(color: theme.hintColor),
        contentPadding: const EdgeInsets.all(10),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        suffixIcon: canHide
            ? IconButton(
                onPressed: () => searchSink.add(null),
                icon: const Icon(Symbols.clear),
                color: iconTheme.color,
              )
            : null,
      ),
      onChanged: searchSink.add,
    );
  }
}
