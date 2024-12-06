import 'dart:ui';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  static final List<QueryableType> _secondLineTypes = [
    Area.queryableType,
    Street.queryableType,
    Family.queryableType,
    Store.queryableType,
    Service.queryableType,
    Class.queryableType,
    Group.queryableType,
    Person.queryableType,
  ];

  final _formKey = GlobalKey<FormState>();

  final userSettingsService = UserSettingsService.I;

  late bool? darkTheme = userSettingsService.darkTheme;
  late bool greatFeastTheme = userSettingsService.greatFeastTheme;

  bool _needsSaving = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الإعدادات'),
      ),
      body: Form(
        key: _formKey,
        onChanged: () => setState(() => _needsSaving = true),
        canPop: !_needsSaving,
        onPopInvokedWithResult: _onPopWithResult,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ExpansionTile(
                  title: const Text('المظهر'),
                  subtitle: const Text('المظهر العام للبرنامج'),
                  expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Wrap(
                      alignment: WrapAlignment.spaceAround,
                      children: <Widget>[
                        ChoiceChip(
                          label: const Text('المظهر الداكن'),
                          // ignore: use_if_null_to_convert_nulls_to_bools
                          selected: darkTheme == true,
                          onSelected: _onDarkThemeChanged(true),
                        ),
                        ChoiceChip(
                          label: const Text('المظهر الفاتح'),
                          selected: darkTheme == false,
                          onSelected: _onDarkThemeChanged(false),
                        ),
                        ChoiceChip(
                          label: const Text('حسب النظام'),
                          selected: darkTheme == null,
                          onSelected: _onDarkThemeChanged(null),
                        ),
                      ],
                    ),
                    SwitchListTile(
                      value: greatFeastTheme,
                      onChanged: (v) => setState(() {
                        greatFeastTheme = v;
                        _needsSaving = true;
                      }),
                      title: const Text(
                        'تغيير لون البرنامج حسب أسبوع الآلام وفترة الخمسين',
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: _applyThemeChange,
                      icon: const Icon(Symbols.done),
                      label: const Text('تغيير'),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: const Text('مظهر البيانات'),
                  children: [
                    ..._secondLineTypes.map(
                      (qtype) => Container(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: DropdownButtonFormField<String?>(
                          value:
                              userSettingsService.getSecondLineFor(qtype.type),
                          items: [
                            const DropdownMenuItem(
                              child: Text(''),
                            ),
                            ...qtype.fieldsMetadata.values
                                .where(
                                  (element) =>
                                      element.name != 'id' &&
                                      element.name != 'name' &&
                                      element.name != 'color',
                                )
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e.name,
                                    child: Text(e.label),
                                  ),
                                ),
                          ],
                          onChanged: (_) {},
                          onSaved: (value) {
                            userSettingsService.setSecondLineFor(
                              type: qtype.type,
                              value: value,
                            );
                            _needsSaving = false;
                          },
                          decoration: InputDecoration(
                            labelText: 'السطر الثاني لل' +
                                qtype.label.replaceFirst(RegExp('^ال'), 'ل'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const ExpansionTile(
                  title: Text('الاشعارات'),
                  subtitle: Text('اعدادات الاشعارات'),
                  // TODO: Implement notifications settings
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'حفظ',
        onPressed: _save,
        child: const Icon(Symbols.save),
      ),
    );
  }

  void Function(bool _) _onDarkThemeChanged(bool? value) => (_) => setState(() {
        darkTheme = value;
        _needsSaving = true;
      });

  Future<void> _applyThemeChange() async {
    await userSettingsService.setDarkTheme(darkTheme);
    await userSettingsService.setGreatFeastTheme(greatFeastTheme);

    ThemingService.I.switchTheme(
      darkTheme ??
          PlatformDispatcher.instance.platformBrightness == Brightness.dark,
    );
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;

    _formKey.currentState!.save();

    final scaffoldMessenger = ScaffoldMessenger.of(context);

    await _applyThemeChange();

    scaffoldMessenger.showSnackBar(
      const SnackBar(content: Text('تم حفظ التغييرات')),
    );
  }

  Future<void> _onPopWithResult(bool didPop, Object? result) async {
    if (didPop) return;

    final navigator = Navigator.of(context);

    if (_needsSaving) {
      final confirmExit = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('هل أنت متأكد من الخروج؟'),
          content: const Text('لم يتم حفظ التغييرات الجديدة'),
          actions: [
            FilledButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('البقاء'),
            ),
            FilledButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text('خروج بدون حفظ'),
            ),
          ],
        ),
      );

      if (!(confirmExit ?? false)) return;
    }

    navigator.pop(result);
  }
}
