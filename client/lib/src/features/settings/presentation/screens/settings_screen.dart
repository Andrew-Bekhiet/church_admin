import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final _formKey = GlobalKey<FormState>();

  final userPreferencesService = UserPreferencesService.I;

  late ThemeChoice themeChoice = userPreferencesService.themeChoice;
  late bool greatFeastTheme = userPreferencesService.greatFeastTheme;

  bool _needsSaving = false;

  void Function(bool _) _onThemeChoiceChanged(ThemeChoice value) =>
      (_) => setState(() {
        themeChoice = value;
      });

  @override
  Widget build(BuildContext context) {
    return SessionReplayUnmask(
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
                    key: SettingsScreenKeys.appearanceTile,
                    title: const Text('المظهر'),
                    subtitle: const Text('المظهر العام للبرنامج'),
                    expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Wrap(
                        alignment: WrapAlignment.spaceAround,
                        children: <Widget>[
                          ChoiceChip(
                            key: SettingsScreenKeys.themeChipFor(
                              ThemeChoice.dark,
                            ),
                            label: const Text('المظهر الداكن'),
                            selected: themeChoice == ThemeChoice.dark,
                            onSelected: _onThemeChoiceChanged(ThemeChoice.dark),
                          ),
                          ChoiceChip(
                            key: SettingsScreenKeys.themeChipFor(
                              ThemeChoice.light,
                            ),
                            label: const Text('المظهر الفاتح'),
                            selected: themeChoice == ThemeChoice.light,
                            onSelected: _onThemeChoiceChanged(
                              ThemeChoice.light,
                            ),
                          ),
                          ChoiceChip(
                            key: SettingsScreenKeys.themeChipFor(
                              ThemeChoice.system,
                            ),
                            label: const Text('حسب النظام'),
                            selected: themeChoice == ThemeChoice.system,
                            onSelected: _onThemeChoiceChanged(
                              ThemeChoice.system,
                            ),
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
    _maybeTrackThemeApply();

    await userPreferencesService.setThemeChoice(themeChoice);
    await userPreferencesService.setGreatFeastTheme(greatFeastTheme);

    ThemingService.I.switchTheme(themeChoice);
  }

  void _maybeTrackThemeApply() {
    final isThemeChanged =
        themeChoice != userPreferencesService.themeChoice ||
        greatFeastTheme != userPreferencesService.greatFeastTheme;
    if (!isThemeChanged) return;

    AnalyticsService.I.track(
      ThemeApply(
        themeChoice: themeChoice,
        isGreatFeastTheme: greatFeastTheme,
      ),
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
        builder: (context) => const ConfirmationDialog(
          title: 'هل أنت متأكد من الخروج؟',
          explanation: 'لم يتم حفظ التغييرات الجديدة',
          confirmLabel: 'خروج بدون حفظ',
          cancelLabel: 'البقاء',
          isDestructive: true,
        ),
      );

      final isDiscarded = confirmExit ?? false;
      AnalyticsService.I.track(
        UnsavedChangesPromptAnswer(isDiscarded: isDiscarded),
      );

      if (!isDiscarded) return;
    }

    navigator.pop(result);
  }
}

abstract final class SettingsScreenKeys {
  static const Key appearanceTile = ValueKey(
    'Settings Screen Appearance Tile Key',
  );

  static Key themeChipFor(ThemeChoice themeChoice) =>
      ValueKey('Settings Screen Theme Chip ${themeChoice.name} Key');
}
