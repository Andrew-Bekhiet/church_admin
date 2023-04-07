import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class AddressWithLocationField extends StatefulWidget {
  final String? initialAddress;
  final void Function(String) onAddressChanged;
  final Future<Point?> Function(BuildContext) onEditLocation;

  const AddressWithLocationField({
    required this.initialAddress,
    required this.onAddressChanged,
    required this.onEditLocation,
    super.key,
  });

  @override
  State<AddressWithLocationField> createState() =>
      _AddressWithLocationFieldState();
}

class _AddressWithLocationFieldState extends State<AddressWithLocationField> {
  String? _suggestedAddress;

  late String? _currentAddress = widget.initialAddress;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        //TODO: address fields (eg block number, Street, Area ...)
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Builder(
            builder: (context) => TextFormField(
              key: ValueKey(_currentAddress),
              decoration: InputDecoration(
                labelText: 'العنوان والموقع',
                suffixIcon: IconButton(
                  onPressed: () async {
                    final newLocation = await widget.onEditLocation(context);

                    if (newLocation != null) {
                      final address = await CAFunctionsService.I
                          .getAddressFromLocation(newLocation);

                      if (address != null) {
                        _suggestedAddress = address;
                        if (mounted) setState(() {});
                      }
                    }
                  },
                  icon: const Icon(Icons.edit_location),
                ),
              ),
              initialValue: _currentAddress,
              onChanged: (v) {
                widget.onAddressChanged(v);
                _currentAddress = v;
              },
              textInputAction: TextInputAction.next,
              textCapitalization: TextCapitalization.words,
              validator: (value) => null,
            ),
          ),
        ),
        if (_suggestedAddress != null)
          Card(
            elevation: 5,
            child: ListTile(
              title: const Text('تم ايجاد عنوان مقترح:'),
              subtitle: Text(_suggestedAddress!),
              trailing: TextButton.icon(
                onPressed: () => setState(
                  () {
                    widget.onAddressChanged(_suggestedAddress!);

                    _currentAddress = _suggestedAddress;
                    _suggestedAddress = null;
                  },
                ),
                icon: const Icon(Icons.done),
                label: const Text('استخدام العنوان المقترح'),
              ),
            ),
          ),
      ],
    );
  }
}
