import 'dart:async';

import 'package:flutter/material.dart';

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
    return TextField(
      autofocus: autofocus,
      textInputAction: TextInputAction.search,
      style: DefaultTextStyle.of(context).style,
      decoration: InputDecoration(
        hintText: 'بحث ...',
        hintStyle: DefaultTextStyle.of(context).style.copyWith(
              color: Theme.of(context).hintColor,
            ),
        contentPadding: const EdgeInsets.all(10),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        suffixIcon: canHide
            ? IconButton(
                onPressed: () => searchSink.add(null),
                icon: const Icon(Icons.clear),
              )
            : null,
      ),
      onChanged: searchSink.add,
    );
  }
}
