import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class EditLocationActionsBar extends StatelessWidget
    implements PreferredSizeWidget {
  final VoidCallback onPickFromMapsLink;
  final Stream<Position?>? userLocation;
  final ValueChanged<Position> onUseCurrentLocation;

  const EditLocationActionsBar({
    required this.onPickFromMapsLink,
    required this.onUseCurrentLocation,
    this.userLocation,
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    final tonalButtonStyle = Theme.of(
      context,
    ).filledTonalButtonStyleWorkaround;

    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 16, end: 16, bottom: 8),
      child: Row(
        spacing: 8,
        children: [
          if (userLocation case final userLocation?)
            Expanded(
              child: StreamBuilder<Position?>(
                stream: userLocation,
                builder: (context, snapshot) {
                  final position = snapshot.data;

                  return FilledButton.tonalIcon(
                    key: EditLocationActionsBarKeys.fromCurrentLocation,
                    style: tonalButtonStyle,
                    onPressed: position == null
                        ? null
                        : () => onUseCurrentLocation(position),
                    icon: const Icon(Symbols.my_location),
                    label: const Text('موقعي الحالي'),
                  );
                },
              ),
            ),
          Expanded(
            child: FilledButton.tonalIcon(
              key: EditLocationActionsBarKeys.fromMapsLink,
              style: tonalButtonStyle,
              onPressed: onPickFromMapsLink,
              icon: const Icon(Symbols.link),
              label: const Text('من رابط خرائط'),
            ),
          ),
        ],
      ),
    );
  }
}

abstract final class EditLocationActionsBarKeys {
  static const fromMapsLink = Key('EditLocationActionsBar.fromMapsLink');
  static const fromCurrentLocation = Key(
    'EditLocationActionsBar.fromCurrentLocation',
  );
}
