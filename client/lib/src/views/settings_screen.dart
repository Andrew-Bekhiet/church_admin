import 'dart:ui';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends StatefulWidget {
  static final GoRoute route = GoRoute(
    path: 'settings',
    builder: (context, state) => const SettingsScreen(),
  );

  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  static const _secondLineTypes = [
    Area,
    Street,
    Family,
    Store,
    Service,
    Class,
    Group,
    Person,
  ];

  final userSettingsService = UserSettingsService.I;

  late bool? darkTheme = userSettingsService.darkTheme;
  late bool greatFeastTheme = userSettingsService.greatFeastTheme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الإعدادات'),
      ),
      body: SingleChildScrollView(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    value: userSettingsService.greatFeastTheme,
                    onChanged: (v) => setState(() => greatFeastTheme = v),
                    title: const Text(
                      'تغيير لون البرنامج حسب أسبوع الآلام وفترة الخمسين',
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () async {
                      await userSettingsService.setDarkTheme(darkTheme);
                      await userSettingsService
                          .setGreatFeastTheme(greatFeastTheme);

                      ThemingService.I.switchTheme(
                        darkTheme ??
                            PlatformDispatcher.instance.platformBrightness ==
                                Brightness.dark,
                      );
                    },
                    icon: const Icon(Icons.done),
                    label: const Text('تغيير'),
                  ),
                ],
              ),
              ExpansionTile(
                title: const Text('مظهر البيانات'),
                children: [
                  ..._secondLineTypes.map(
                    (type) => Container(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: DropdownButtonFormField<String?>(
                        value: userSettingsService.getSecondLineFor(type),
                        items: [
                          const DropdownMenuItem(
                            child: Text(''),
                          ),
                          ...AdvancedQueriesMetadata.propertiesByType[type]!
                              .where(
                                (element) =>
                                    element.$1 != 'id' && element.$1 != 'color',
                              )
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e.$1,
                                  child: Text(e.$2),
                                ),
                              ),
                        ],
                        onChanged: (value) {},
                        onSaved: (value) {
                          userSettingsService.setSecondLineFor(type, value);
                        },
                        decoration: InputDecoration(
                          labelText: 'السطر الثاني لل' +
                              AdvancedQueriesMetadata.queryableTypes[type]!.$1
                                  .replaceFirst(RegExp('^ال'), 'ل'),
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
    );
  }

  void Function(bool _) _onDarkThemeChanged(bool? value) =>
      (_) => setState(() => darkTheme = value);
}
