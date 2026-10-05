import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:build/build.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:church_admin_generator/src/models/synthetic_element.dart';
import 'package:source_gen/source_gen.dart';

class QueryableFieldsGenerator extends GeneratorForAnnotation<Queryable> {
  const QueryableFieldsGenerator()
      : super(inPackage: 'church_admin_annotations', inSdk: false);

  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    if (element is! ClassElement && element is! EnumElement) {
      throw InvalidGenerationSourceError(
        'Queryable annotation can only be used on classes or Enums',
        element: element,
      );
    }

    if (element is! ClassElement) {
      return '';
    }

    final annotationInstance = annotation.asQueryable();

    final labelsOverrides = annotationInstance.labelsOverrides;

    final ignoreFields = annotationInstance.ignoreFields.toSet();
    final allowExtension = annotationInstance.allowExtension;
    final regexIgnoreFields =
        annotationInstance.regexIgnoreFields.map(RegExp.new).toList();

    final effectiveFields = element.fields
        .where(
      (a) =>
          a.displayName != 'copyWith' &&
          a.displayName != 'hashCode' &&
          a.displayName != 'typeName' &&
          a.displayName != 'imageInfo' &&
          !ignoreFields.contains(a.displayName) &&
          !regexIgnoreFields.any((r) => r.hasMatch(a.displayName)),
    )
        .map(
      (g) {
        final annotation = const TypeChecker.typeNamed(
          QueryableField,
          inPackage: 'church_admin_annotations',
          inSdk: false,
        )
            .annotationsOf(g)
            .singleOrNull;
        final renameTo = annotation?.getField('renameTo')?.toStringValue();

        return SyntheticElement(
          name: renameTo ?? g.displayName,
          type: g.type,
          element: g,
        );
      },
    );

    return _writeClassFieldsMetadata(
      element,
      labelsOverrides,
      effectiveFields,
      allowExtension: allowExtension,
    );
  }

  String _writeClassFieldsMetadata(
    ClassElement classElement,
    Map<String?, String?> labelsOverrides,
    Iterable<SyntheticElement> fields, {
    bool allowExtension = false,
  }) {
    final generatedClassName =
        '${allowExtension ? '_' : ''}${classElement.name}Fields';

    final buffer = StringBuffer()
      ..write('class $generatedClassName {')
      ..writeln(
        allowExtension
            ? ''
            : 'static final $generatedClassName _instance = $generatedClassName._();',
      )
      ..writeAll(
        _writeClassFields(classElement, labelsOverrides, fields),
        '\n\n',
      )
      ..writeln(_collectAllClassFields(classElement.displayName, fields))
      ..writeln(
        allowExtension ? '' : 'factory $generatedClassName() => _instance;',
      )
      ..writeln('$generatedClassName${allowExtension ? '' : '._'}();\n')
      ..writeln('}');

    return buffer.toString();
  }

  String _collectAllClassFields(
    String className,
    Iterable<SyntheticElement> fields,
  ) {
    return '\n\nlate final List<FieldMetadata<Object>> allFields = [${fields.map((p) => p.name.maybeAddDollar()).join(',\n')}];\n'
        'late final Map<String, FieldMetadata<Object>> allFieldsByName = {${fields.map((p) => "'${p.name}': ${p.name.maybeAddDollar()}").join(',\n')}};';
  }

  Iterable<String> _writeClassFields(
    ClassElement classElement,
    Map<String?, String?> labelsOverrides,
    Iterable<SyntheticElement> fields,
  ) {
    return fields.map((f) {
      final name = f.name;

      String getLabel() => labelsOverrides[name] ?? _getFieldLabel(name);

      if (name == 'id') {
        return _writeFieldMetadata(
          parentType: classElement.thisType,
          type: classElement.thisType,
          name: name,
          label: getLabel(),
        );
      }

      if (f.type is InterfaceType &&
          (f.type as InterfaceType).allSupertypes.any(
                (t) => t
                    .getDisplayStringWithoutNullability()
                    .startsWith('Iterable'),
              )) {
        log.info({
          'type': f.type,
          'isList': true,
        });
        final iterableType = (f.type as InterfaceType).allSupertypes.firstWhere(
              (t) =>
                  t.getDisplayStringWithoutNullability().startsWith('Iterable'),
            );
        final type = iterableType.typeArguments.first;

        final annotation = f.element != null
            ? const TypeChecker.typeNamed(
                QueryableField,
                inPackage: 'church_admin_annotations',
                inSdk: false,
              )
                .annotationsOf(f.element!)
                .singleOrNull
            : null;

        final manyToManyRelType =
            annotation?.getField('manyToManyRelType')?.toTypeValue();
        final manyToManyRelSelectField =
            annotation?.getField('manyToManyRelSelectField')?.toStringValue();

        if (manyToManyRelType != null) {
          return [
            _writeFieldMetadata(
              parentType: classElement.thisType,
              type: manyToManyRelType,
              name: name,
              label: name,
              isRelationship: true,
              isIterable: true,
              isCodeOnly: true,
            ),
            '\n',
            _writeRelationshipFieldMetadata(
              type,
              name,
              manyToManyRelType.getDisplayStringWithoutNullability(),
              manyToManyRelSelectField,
            ),
          ];
        }

        return _writeFieldMetadata(
          parentType: classElement.thisType,
          type: type,
          name: name,
          label: getLabel(),
          isIterable: true,
        );
      }

      return _writeFieldMetadata(
        parentType: classElement.thisType,
        type: f.type,
        name: name,
        label: name.endsWith('Aggregate') ? name : getLabel(),
        isCodeOnly: name.endsWith('Aggregate'),
      );
    }).expand(
      (e) => switch (e) {
        String() => [e],
        Iterable<String>() => e,
        _ => [],
      },
    );
  }

  String _writeRelationshipFieldMetadata(
    DartType type,
    String name,
    String manyToManyRelClassName,
    String? manyToManyRelSelectField,
  ) {
    final buffer = StringBuffer()
      ..write('late final ')
      ..write(_toFieldMetadataType(type))
      ..write(' $name = ')
      ..write(name)
      ..write('Rel.redirectTo(')
      ..write(manyToManyRelClassName)
      ..write('Fields().')
      ..write(
        manyToManyRelSelectField ??
            type
                .getDisplayStringWithoutNullability()
                .toLowerCase()
                .maybeAddDollar(),
      )
      ..write(', isExpandable: false, isOrderable: false,')
      ..write(');');

    return buffer.toString();
  }

  String _writeFieldMetadata({
    required DartType parentType,
    required DartType type,
    required String name,
    required String label,
    bool isIterable = false,
    bool isCodeOnly = false,
    bool isRelationship = false,
  }) {
    final operators = getOperatorsStringForType(type, name);

    final String fieldMetadataType = _toFieldMetadataType(type);

    final fieldBuffer = StringBuffer()
      ..write('final ')
      ..write(fieldMetadataType)
      ..write(name.maybeAddDollar())
      ..write(isRelationship ? 'Rel' : '')
      ..write(' = ')
      ..write(fieldMetadataType)
      ..write('(')
      ..write(
        'getValue: (obj) => obj is $parentType ? obj.${name.maybeAddDollar()} : null,',
      )
      ..write('parentType: $parentType,')
      ..write("name: '$name',")
      ..write("label: '$label',")
      ..write('isCodeOnly: $isCodeOnly,');

    if (isIterable || name.endsWith('History')) {
      log.info(isIterable);
      fieldBuffer.write('isOrderable: false,');
    }

    if (operators != null) {
      fieldBuffer.write('operators: $operators,);');
    } else {
      fieldBuffer.write(');');
    }

    return fieldBuffer.toString();
  }

  String _toFieldMetadataType(DartType type) {
    final typeName = type
        .getDisplayStringWithoutNullability()
        .replaceFirst(RegExp('^History'), '');

    return 'FieldMetadata<$typeName>';
  }

  String _getFieldLabel(String name) {
    final label = _fieldsLabels[name.replaceAll('Aggregate', '')];

    if (label == null && !name.endsWith('Aggregate')) {
      log.info(
        'No label found for field $name, using field name as label instead',
      );
    }
    return label ?? name;
  }

  String? getOperatorsStringForType(DartType type, String fieldName) {
    final operators = <String>[];

    final typeName = type.getDisplayStringWithoutNullability();

    if (fieldName == 'birthday') {
      operators.add('...BirthdayOperator.values');
    } else if (type.isDartCoreBool) {
      operators.add('...BooleanOperator.values');
    } else if (type.isDartCoreNum ||
        type.isDartCoreInt ||
        type.isDartCoreDouble) {
      operators.add('...PrimitiveOperator.values');
    } else if (type.isDartCoreString) {
      operators.add('...StringOperator.values');
    } else if (typeName == 'Color') {
      operators.add('...ColorOperator.values');
    } else if (typeName == 'DateTime') {
      operators
        ..add('...DateTimeOperator.values')
        ..add('...DateRangeOperator.values');
    } else if (type is InterfaceType &&
        type.allSupertypes
            .any((t) => t.getDisplayStringWithoutNullability() == 'Spatial')) {
      operators.add('...SpatialOperator.values');
    } else if (type is InterfaceType &&
        type.allSupertypes.any(
          (t) {
            final displayString = t.getDisplayStringWithoutNullability();

            return displayString == 'Enum' ||
                displayString == 'Iterable' ||
                displayString == 'ViewableWithID' ||
                displayString == 'ID';
          },
        )) {
      operators.add('...MultiSelectOperator.values');
    }

    if (operators.isEmpty) {
      return null;
    }

    if (type.nullabilitySuffix == NullabilitySuffix.question) {
      operators
        ..add('PrimitiveOperator.isNull')
        ..add('PrimitiveOperator.isNotNull');
    }

    return '{${operators.join(',')}}';
  }
}

extension on ConstantReader {
  Queryable asQueryable() {
    return Queryable(
      classLabel: read('classLabel').stringValue,
      labelsOverrides: read('labelsOverrides').mapValue.map(
            (key, value) => MapEntry(
              key!.toStringValue()!,
              value!.toStringValue()!,
            ),
          ),
      ignoreFields: read('ignoreFields')
          .listValue
          .map((e) => e.toStringValue())
          .nonNulls
          .toList(),
      allowExtension: read('allowExtension').boolValue,
      regexIgnoreFields: read('regexIgnoreFields')
          .listValue
          .map((e) => e.toStringValue())
          .nonNulls
          .toList(),
    );
  }
}

extension on String {
  String maybeAddDollar() {
    if (this == 'class') {
      return r'class$';
    }

    return this;
  }
}

extension on DartType {
  String getDisplayStringWithoutNullability() {
    return getDisplayString().replaceAll('?', '');
  }
}

final Map<String, String> _fieldsLabels = {
  'id': '=',
  'name': 'الاسم',
  'bounds': 'الموقع',
  'color': 'اللون',
  'photoUpdatedAt': 'أخر تحديث للصورة',
  'adminUsers': 'الخدام المسؤلين',
  'families': 'العائلات',
  'stores': 'المتاجر',
  'streets': 'الشوارع',
  'persons': 'المخدومين',
  'line': 'الموقع',
  'areas': 'المناطق',
  'address': 'تفاصيل العنوان',
  'fullAddressText': 'العنوان الكامل',
  'geolocation': 'الموقع',
  'notes': 'ملاحظات',
  'children': 'العائلات الأبناء',
  'parents': 'العائلات الأباء',
  'adminFamily': 'العائلة المسؤولة',
  'studyYearFrom': 'السنة الدراسية: من',
  'studyYearTo': 'السنة الدراسية: إلى',
  'nextService': 'الخدمة التالية',
  'class': 'الفصل',
  'classes': 'الفصول',
  'group': 'المجموعة',
  'groups': 'المجموعات',
  'service': 'الخدمة',
  'studyYear': 'السنة الدراسية',
  'serviceGender': 'نوع المخدومين المسؤول عنهم',
  'adminOn': 'مسؤول عن',
  'permission': 'الصلاحية',
  'permissions': 'الصلاحيات',
  'person': 'بيانات المخدوم',
  'mainPhone': 'رقم الهاتف',
  'birthdate': 'تاريخ الميلاد',
  'birthday': 'يوم وشهر الميلاد',
  'isStudent': 'طالب؟',
  'college': 'الكلية',
  'school': 'المدرسة',
  'qualification': 'المؤهل',
  'job': 'الوظيفة',
  'jobDescription': 'تفاصيل الوظيفة',
  'gender': 'النوع',
  'personType': 'نوع الفرد في العائلة',
  'isShammas': 'شماس؟',
  'shammasLevel': 'رتبة الشموسية',
  'church': 'الكنيسة',
  'father': 'اب الاعتراف',
  'isServant': 'خادم؟',
  'state': 'الحالة الروحية',
  'hobby': 'الهواية',
  'hobbies': 'الهوايات',
  'tag': 'الشارة',
  'tags': 'الشارات',
  'district': 'الحي',
  'districts': 'الأحياء السكنية',
  'substreetName': 'الشارع الفرعي',
  'storeyNumber': 'رقم الدور',
  'apartmentNumber': 'رقم الشقة',
  'houseCode': 'رقم العمارة',
  'specialLandmark': 'علامة مميزة',
  'area': 'المنطقة',
  'street': 'الشارع',
  'family': 'العائلة',
  'store': 'المتجر',
  'services': 'الخدمات',
  'recordedByUser': 'الخادم الذي سجل',
  'user': 'بيانات الخادم',
  'order': 'الترتيب',
  'time': 'الوقت',
  'lastAttendance': 'أخر حضور',
  'lastEdit': 'أخر تحديث البيانات',
  'lastKodas': 'أخر تناول',
  'lastConfession': 'أخر اعتراف',
  'lastVisit': 'أخر افتقاد',
  'lastCall': 'أخر مكالمات',
  'attendanceHistory': 'سجل الحضور',
  'editHistory': 'سجل تحديث البيانات',
  'kodasHistory': 'سجل التناول',
  'confessionHistory': 'سجل الاعتراف',
  'visitHistory': 'سجل الافتقاد',
  'callHistory': 'سجل المكالمات',
  'max': 'أقصى',
  'min': 'أدنى',
  'count': 'العدد',
  'areaAllowEdit': 'يمكنه تعديل المنطقة',
  'areaAdminOnUsers': 'مسؤول عن خدام المنطقة',
  'serviceStudyYearData': 'السنة الدراسية',
  'serviceAllowEdit': 'يمكنه تعديل الخدمة',
  'serviceAdminOnUsers': 'مسؤول عن خدام الخدمة',
  'groupAllowEdit': 'يمكنه تعديل المجموعة',
  'groupAdminOnUsers': 'مسؤول عن خدام المجموعة',
};
