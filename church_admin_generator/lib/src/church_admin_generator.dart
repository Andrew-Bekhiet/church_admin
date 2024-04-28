import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:build/build.dart';
import 'package:church_admin/annotations.dart';
import 'package:church_admin_generator/src/models/church_admin_options.dart';
import 'package:church_admin_generator/src/models/synthetic_element.dart';
import 'package:source_gen/source_gen.dart';

class ChurchAdminGenerator extends GeneratorForAnnotation<TypeMetadata> {
  final ChurchAdminOptions config;

  const ChurchAdminGenerator(this.config);

  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    if (element is! ClassElement) {
      throw InvalidGenerationSourceError(
        'TypeMetadata annotation can only be used on classes',
        element: element,
      );
    } else if (element.unnamedConstructor == null) {
      throw InvalidGenerationSourceError(
        'TypeMetadata annotation can only be used on classes with unnamed constructors',
        element: element,
      );
    }

    final labelsOverrides = annotation
        .read('labelsOverrides')
        .mapValue
        .map((k, v) => MapEntry(k?.toStringValue(), v?.toStringValue()));

    final ignoreFields = annotation
        .read('ignoreFields')
        .listValue
        .map((e) => e.toStringValue())
        .nonNulls
        .toSet();

    final addFields = annotation
        .read('addFields')
        .mapValue
        .entries
        .map(
          (e) => e.key == null || e.value == null
              ? null
              : SyntheticElement(
                  name: e.key!.toStringValue()!,
                  type: e.value!.toTypeValue()!,
                ),
        )
        .nonNulls
        .toList();

    final regexIgnoreFields = annotation
        .read('regexIgnoreFields')
        .listValue
        .map(
          (e) => e.toStringValue() == null ? null : RegExp(e.toStringValue()!),
        )
        .nonNulls
        .toList();

    final fieldsMapContent = element.unnamedConstructor!.parameters
        .where(
          (p) =>
              !ignoreFields.contains(p.name) &&
              !regexIgnoreFields.any((r) => r.hasMatch(p.name)),
        )
        .map((p) => SyntheticElement(name: p.name, type: p.type))
        .followedBy(addFields)
        .map((p) {
      final name = p.name;
      final label = labelsOverrides[name] ?? _getFieldLabel(name);

      if (name == 'id') {
        return _writeFieldMetadata(
          type: element.thisType,
          name: name,
          label: label,
        );
      }

      if (p.type.isDartCoreList) {
        final type = (p.type as ParameterizedType).typeArguments.first;
        log.info({
          'type': p.type,
          'isList': true,
        });
        return _writeFieldMetadata(
          type: type,
          name: name,
          label: label,
          isList: true,
        );
      }

      return _writeFieldMetadata(type: p.type, name: name, label: label);
    });

    return _writeFieldsMap(element.name, fieldsMapContent);
  }

  String _writeFieldMetadata({
    required DartType type,
    required String name,
    required String label,
    bool isList = false,
  }) {
    final typeName = type
        .getDisplayString(withNullability: false)
        .replaceFirst(RegExp('^History'), '');

    final fieldBuffer = StringBuffer()
      ..write("'")
      ..write(name)
      ..write("': FieldMetadata<")
      ..write(typeName)
      ..write('>(')
      ..write("name: '$name',")
      ..write("label: '$label',");

    if (isList || name.endsWith('History')) {
      log.info(isList);
      fieldBuffer.write('isOrderable: false,');
    }

    final operators = getOperatorsStringForType(type, name);

    if (operators != null) {
      fieldBuffer.write('operators: $operators,),');
    } else {
      fieldBuffer.write('),');
    }

    return fieldBuffer.toString();
  }

  String _getFieldLabel(String name) {
    final label = _fieldsLabels[name.replaceAll('Aggregate', '')];

    if (label == null) {
      log.warning(
        'No label found for field $name, using field name as label instead',
      );
    } else if (name.endsWith('Aggregate')) {
      return 'إحصائيات $label';
    }
    return label ?? name;
  }

  String _writeFieldsMap(String className, Iterable<String> fieldsMapContent) {
    final buffer = StringBuffer()
      ..writeln('final _\$${className}Fields = <String, FieldMetadata>{')
      ..writeAll(fieldsMapContent, '\n')
      ..writeln('};');

    return buffer.toString();
  }

  String? getOperatorsStringForType(DartType type, String fieldName) {
    final typeName = type.getDisplayString(withNullability: false);

    final operators = <String>[];

    if (type.isDartCoreString ||
        type.isDartCoreInt ||
        type.isDartCoreDouble ||
        type.isDartCoreBool ||
        typeName == 'DateTime' ||
        typeName == 'Color') {
      operators.add('Operator.comparitive');
    }

    if (type.isDartCoreString) {
      operators.add('Operator.textual');
    }

    if (fieldName case 'geolocation' || 'bounds' || 'line') {
      operators.add('Operator.spatial');
    }

    if (fieldName != 'id' &&
        (type.isDartCoreString ||
            type.isDartCoreBool ||
            typeName == 'DateTime' ||
            typeName == 'Color')) {
      operators.add('{Operator.isNull}');
    }

    if (operators.isEmpty) return null;

    return operators.first +
        operators.sublist(1).map((e) => '.union($e)').join();
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
  'address': 'العنوان',
  'geolocation': 'الموقع',
  'notes': 'ملاحظات',
  'children': 'العائلات الأبناء',
  'parents': 'العائلات الأباء',
  'adminFamily': 'العائلة المسؤولة',
  'studyYearFrom': 'السنة الدراسية: من',
  'studyYearTo': 'السنة الدراسية: إلى',
  'nextService': 'الخدمة التالية',
  'classes': 'الفصول',
  'groups': 'المجموعات',
  'service': 'الخدمة',
  'studyYear': 'السنة الدراسية',
  'serviceGender': 'النوع',
  'adminOn': 'مسؤول عن',
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
  'personType': 'الحالة الاجتماعية',
  'isShammas': 'شماس؟',
  'shammasLevel': 'رتبة الشموسية',
  'church': 'الكنيسة',
  'father': 'اب الاعتراف',
  'isServant': 'خادم؟',
  'state': 'الحالة الروحية',
  'hobbies': 'الهوايات',
  'tags': 'الشارات',
  'family': 'العائلة',
  'store': 'المتجر',
  'services': 'الخدمات',
  'user': 'بيانات الخادم',
  'order': 'الترتيب',
  'time': 'الوقت',
  'lastEdit': 'أخر تحديث البيانات',
  'lastKodas': 'أخر تناول',
  'lastConfession': 'أخر اعتراف',
  'lastVisit': 'أخر افتقاد',
  'lastCall': 'أخر مكالمات',
  'editHistory': 'سجل تحديث البيانات',
  'kodasHistory': 'سجل التناول',
  'confessionHistory': 'سجل الاعتراف',
  'visitHistory': 'سجل الافتقاد',
  'callHistory': 'سجل المكالمات',
  'max': 'أقصى',
  'min': 'أدنى',
  'count': 'العدد',
};
