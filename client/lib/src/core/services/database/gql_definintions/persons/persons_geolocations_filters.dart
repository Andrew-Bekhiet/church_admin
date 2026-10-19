import 'package:church_admin/church_admin.dart';

/// The Ash filters of the map's layers: what is selected, what lies in it,
/// and the persons living or served there, each layer limited to the objects
/// that have a place on the map.
class PersonsGeolocationsFilters {
  static const Json _matchesNothing = {
    'id': {'in': <String>[]},
  };
  static const Json _hasGeolocation = {
    'geolocation': {'isNil': false},
  };

  final List<String> areasIds;
  final List<String> streetsIds;
  final List<String> familiesIds;
  final List<String> storesIds;
  final List<String> servicesIds;
  final List<String> classesIds;
  final List<String> groupsIds;
  final String? personId;

  Json get areas => {
    'and': [
      _anyOf([
        ?_idIn(areasIds),
        if (streetsIds.isNotEmpty) {'streets': _idIn(streetsIds)},
        {'addresses': _familyOfAddressIsShown},
      ]),
      {
        'bounds': {'isNil': false},
      },
    ],
  };

  Json get streets => {
    'and': [
      _anyOf([
        ?_idIn(streetsIds),
        if (areasIds.isNotEmpty) {'areas': _idIn(areasIds)},
        {'addresses': _familyOfAddressIsShown},
      ]),
      {
        'line': {'isNil': false},
      },
    ],
  };

  Json get families => {
    'and': [
      _anyOf([
        ?_idIn(familiesIds),
        ?_addressInAreasOrStreets,
        {'persons': _personsShown},
        if (familiesIds.isNotEmpty) {'parents': _idIn(familiesIds)},
        if (familiesIds.isNotEmpty) {'children': _idIn(familiesIds)},
      ]),
      {'address': _hasGeolocation},
    ],
  };

  Json get stores => {
    'and': [
      _anyOf([
        ?_idIn(storesIds),
        ?_addressInAreasOrStreets,
        if (familiesIds.isNotEmpty)
          {
            'adminFamilyId': {'in': familiesIds},
          },
      ]),
      {'address': _hasGeolocation},
    ],
  };

  Json get persons => {
    'and': [
      ..._personConditions,
      {'address': _hasGeolocation},
    ],
  };

  Json get _familyOfAddressIsShown => _anyOf([
    if (familiesIds.isNotEmpty)
      {
        'familyId': {'in': familiesIds},
      },
    {
      'family': {'persons': _personsShown},
    },
  ]);

  Json get _personsShown => switch (_personConditions) {
    [] => {
      'id': {'isNil': false},
    },
    [final only] => only,
    final conditions => {'and': conditions},
  };

  Json? get _addressInAreasOrStreets => areasIds.isEmpty && streetsIds.isEmpty
      ? null
      : {
          'address': _anyOf([
            if (areasIds.isNotEmpty)
              {
                'areaId': {'in': areasIds},
              },
            if (streetsIds.isNotEmpty)
              {
                'streetId': {'in': streetsIds},
              },
          ]),
        };

  List<Json> get _personConditions => [
    if (personId case final personId?)
      {
        'id': {'eq': personId},
      },
    if (areasIds.isNotEmpty || streetsIds.isNotEmpty || familiesIds.isNotEmpty)
      {
        'address': _anyOf([
          if (areasIds.isNotEmpty)
            {
              'areaId': {'in': areasIds},
            },
          if (streetsIds.isNotEmpty)
            {
              'streetId': {'in': streetsIds},
            },
          if (familiesIds.isNotEmpty)
            {
              'familyId': {'in': familiesIds},
            },
        ]),
      },
    if (servicesIds.isNotEmpty || classesIds.isNotEmpty || groupsIds.isNotEmpty)
      _anyOf([
        if (servicesIds.isNotEmpty)
          {
            'serviceMemberships': {
              'serviceId': {'in': servicesIds},
            },
          },
        if (classesIds.isNotEmpty)
          {
            'classMemberships': {
              'classId': {'in': classesIds},
            },
          },
        if (groupsIds.isNotEmpty)
          {
            'groupMemberships': {
              'groupId': {'in': groupsIds},
            },
          },
      ]),
  ];

  const PersonsGeolocationsFilters({
    required this.areasIds,
    required this.streetsIds,
    required this.familiesIds,
    required this.storesIds,
    required this.servicesIds,
    required this.classesIds,
    required this.groupsIds,
    this.personId,
  });

  Json? _idIn(List<String> ids) => ids.isEmpty
      ? null
      : {
          'id': {'in': ids},
        };

  Json _anyOf(List<Json> alternatives) => switch (alternatives) {
    [] => _matchesNothing,
    [final only] => only,
    _ => {'or': alternatives},
  };
}
