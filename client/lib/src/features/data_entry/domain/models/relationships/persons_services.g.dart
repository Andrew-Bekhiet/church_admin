// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persons_services.dart';

// **************************************************************************
// QueryableFieldsGenerator
// **************************************************************************

class PersonsServicesFields {
  static final PersonsServicesFields _instance = PersonsServicesFields._();
  factory PersonsServicesFields() => _instance;
  PersonsServicesFields._();

  final FieldMetadata<Person> person = FieldMetadata<Person>(
    parentType: PersonsServices,
    name: 'person',
    label: 'بيانات المخدوم',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<Service> service = FieldMetadata<Service>(
    parentType: PersonsServices,
    name: 'service',
    label: 'الخدمة',
    isCodeOnly: false,
    operators: {...MultiSelectOperator.values},
  );

  final FieldMetadata<String> personId = FieldMetadata<String>(
    parentType: PersonsServices,
    name: 'personId',
    label: 'personId',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  final FieldMetadata<String> serviceId = FieldMetadata<String>(
    parentType: PersonsServices,
    name: 'serviceId',
    label: 'serviceId',
    isCodeOnly: false,
    operators: {...StringOperator.values},
  );

  late final List<FieldMetadata<Object>> allFields = [
    person,
    service,
    personId,
    serviceId
  ];
  late final Map<String, FieldMetadata<Object>> allFieldsByName = {
    'person': person,
    'service': service,
    'personId': personId,
    'serviceId': serviceId
  };
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonsServices _$PersonsServicesFromJson(Map json) => PersonsServices(
      person: Person.fromJson(Map<String, Object?>.from(json['person'] as Map)),
      service:
          Service.fromJson(Map<String, Object?>.from(json['service'] as Map)),
      personId: json['personId'] as String,
      serviceId: json['serviceId'] as String,
    );

Map<String, dynamic> _$PersonsServicesToJson(PersonsServices instance) =>
    <String, dynamic>{
      'person': instance.person.toJson(),
      'service': instance.service.toJson(),
      'personId': instance.personId,
      'serviceId': instance.serviceId,
    };
