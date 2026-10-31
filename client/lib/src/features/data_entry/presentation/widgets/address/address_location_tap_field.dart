import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:material_ui/material_ui.dart';

class AddressLocationTapField extends StatelessWidget {
  final Point? geolocation;
  final bool enabled;
  final Future<void>? Function(FormFieldState<Point?>) onTap;
  const AddressLocationTapField({
    required this.geolocation,
    required this.enabled,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return TappableFormField<Point?>(
      key: ValueKey(geolocation),
      validator: (v) => null,
      decoration: (context, state) => InputDecoration(
        labelText: 'الموقع',
        errorText: state.errorText,
        suffixIcon: Icon(
          Symbols.location_on,
          color: geolocation != null ? colorScheme.primary : null,
        ),
        prefixIcon: state.value != null
            ? const Icon(Symbols.check_circle)
            : null,
        enabled: enabled,
      ),
      builder: (context, state) =>
          geolocation != null ? const Text('تم تحديد الموقع') : null,
      initialValue: geolocation,
      onTap: enabled ? onTap : null,
    );
  }
}
