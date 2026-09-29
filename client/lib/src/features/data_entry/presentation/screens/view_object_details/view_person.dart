import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:rxdart/rxdart.dart';

class ViewPerson extends StatefulWidget {
  final Person? person;
  final String personId;

  const ViewPerson({required this.personId, this.person, super.key});

  @override
  State<ViewPerson> createState() => _ViewPersonState();
}

class _ViewPersonState extends State<ViewPerson> {
  final scrollController = ScrollController();

  final _servicesLimit = BehaviorSubject<int?>.seeded(4);
  final _classesLimit = BehaviorSubject<int?>.seeded(4);
  final _groupsLimit = BehaviorSubject<int?>.seeded(4);

  late final stream =
      Rx.combineLatest3(
        _servicesLimit.distinct(),
        _classesLimit.distinct(),
        _groupsLimit.distinct(),
        (a, b, c) => (a, b, c),
      ).switchMap(
        (limits) => DatabaseService.I.persons.streamSingleById(
          id: widget.personId,
          servicesLimit: limits.$1,
          classesLimit: limits.$2,
          groupsLimit: limits.$3,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return ViewObjectDetails<Person>(
      objectId: widget.personId,
      object: widget.person,
      objectStream: stream,
      detailsBuilder: (context, person) => PersonDetailsList(
        person: person,
        onLoadAllServices: () => _servicesLimit.add(null),
        onLoadAllClasses: () => _classesLimit.add(null),
        onLoadAllGroups: () => _groupsLimit.add(null),
      ),
      editButtonBuilder: (context, person) => IconButton(
        key: ViewPersonKeys.editButton,
        tooltip: 'تعديل',
        onPressed: () => EditPersonRoute(
          $extra: EditPersonExtra(person: person),
        ).push(context),
        icon: const Icon(Symbols.edit),
      ),
      notFoundBuilder: (context) => Center(
        child: Text(
          'لم يتم العثور على المخدوم',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();

    unawaited(_servicesLimit.close());
    unawaited(_classesLimit.close());
    unawaited(_groupsLimit.close());

    super.dispose();
  }
}

abstract final class ViewPersonKeys {
  static const Key editButton = ValueKey('View Person Edit Button Key');
}
