import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class SelectPolygon extends StatelessWidget {
  final Polygon? initialValue;
  final void Function(Polygon? value) onValueChanged;

  const SelectPolygon({
    required this.initialValue,
    required this.onValueChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TappableFormField<Polygon?>(
      onTap: (state) async {
        final initialArea = Area(
          id: Namespace.nil.value,
          name: '',
          bounds: state.value,
          color: Theme.of(state.context).colorScheme.primary,
        );

        final newArea = await Navigator.of(context).push<Area?>(
          MaterialPageRoute(
            builder: (context) {
              return EditObjectPointsMap<Area>(
                initialObject: initialArea,
                getObjectPoints: (p0) => p0.bounds?.coordinates,
                overrideResponseObjects: (response, areaStream) {
                  return areaStream.map(
                    (value) => response!.copyWith(areas: {value}),
                  );
                },
                onModify: (newCoords, resultArea) =>
                    resultArea.copyWith(bounds: Polygon(newCoords)),
                onSaved: Navigator.of(context).pop,
                closedShape: true,
                geomapOptions: GeomapOptions(
                  layers: const {GeoMapLayer.areas},
                  selectedAreas: {initialArea},
                ),
              );
            },
          ),
        );

        if (newArea != null) {
          state.didChange(newArea.bounds);
          onValueChanged(newArea.bounds);
        }
      },
      decoration: (context, state) => InputDecoration(
        prefixIcon: Icon(ViewableObjectService.I.getDefaultIconFor<Area>()),
      ),
      initialValue: initialValue,
      builder: (context, state) => state.value != null
          ? const ListTile(title: Text('مساحة على الخريطة'))
          : null,
    );
  }
}
