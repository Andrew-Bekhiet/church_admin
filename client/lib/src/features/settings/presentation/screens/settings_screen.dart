import 'dart:ui';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:posthog_flutter/posthog_flutter.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final _formKey = GlobalKey<FormState>();

  final userPreferencesService = UserPreferencesService.I;

  late bool? darkTheme = userPreferencesService.darkTheme;
  late bool greatFeastTheme = userPreferencesService.greatFeastTheme;

  bool _needsSaving = false;

  void Function(bool _) _onDarkThemeChanged(bool? value) =>
      (_) => setState(() {
        darkTheme = value;
      });

  @override
  Widget build(BuildContext context) {
    return PostHogUnmaskWidget(
      child: Scaffold(
        appBar: AppBar(title: const Text('الإعدادات')),
        body: Form(
          key: _formKey,
          onChanged: () => setState(() => _needsSaving = true),
          canPop: !_needsSaving,
          onPopInvokedWithResult: _onPopWithResult,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8),
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
                            selected: darkTheme ?? false,
                            onSelected: _onDarkThemeChanged(true),
                          ),
                          ChoiceChip(
                            label: const Text('المظهر الفاتح'),
                            selected: !(darkTheme ?? false),
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
      ),
    );
  }

  Future<void> _applyThemeChange() async {
    await userPreferencesService.setDarkTheme(darkTheme);
    await userPreferencesService.setGreatFeastTheme(greatFeastTheme);

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

    _needsSaving = false;

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
