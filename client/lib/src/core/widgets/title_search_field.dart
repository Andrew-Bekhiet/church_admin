import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class TitleSearchField extends StatelessWidget {
  final StreamController<String?> searchStream;
  final Widget title;

  const TitleSearchField({
    required this.searchStream,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String?>(
      stream: searchStream.stream,
      builder: (context, searchData) {
        if (searchData.hasData) {
          return SearchField(
            searchSink: searchStream.sink,
            canHide: true,
          );
        }

        return Row(
          children: [
            Expanded(child: title),
            IconButton(
              onPressed: () => searchStream.add(''),
              icon: const Icon(Symbols.search),
            ),
          ],
        );
      },
    );
  }
}
