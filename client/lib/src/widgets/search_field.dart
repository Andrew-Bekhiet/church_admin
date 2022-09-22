import 'dart:async';

import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final StreamSink<String?> searchSink;
  final bool canHide;
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
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
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
