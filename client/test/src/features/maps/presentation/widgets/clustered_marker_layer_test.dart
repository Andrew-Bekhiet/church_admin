import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:latlong2/latlong.dart';

void main() {
  const center = LatLng(30.6, 32.27);

  Marker pin(String id, LatLng point) => Marker(
    point: point,
    child: SizedBox.expand(key: ValueKey(id)),
  );

  LatLng nearCenter(int offset) =>
      LatLng(center.latitude + offset * 0.0001, center.longitude);

  Future<void> pumpMap(
    WidgetTester tester, {
    required List<Marker> markers,
    Marker? focusedMarker,
  }) async {
    tester.view
      ..physicalSize = const Size(800, 800)
      ..devicePixelRatio = 1;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(
      MaterialApp(
        home: FlutterMap(
          options: const MapOptions(initialCenter: center, initialZoom: 14),
          children: [
            ClusteredMarkerLayer(
              markers: markers,
              focusedMarker: focusedMarker,
            ),
          ],
        ),
      ),
    );
    await tester.pumpAndSettle();
  }

  testWidgets('nearby pins merge into one badge counting them', (
    tester,
  ) async {
    await pumpMap(
      tester,
      markers: [for (var i = 0; i < 3; i++) pin('p$i', nearCenter(i))],
    );

    expect(find.byType(MarkerClusterBadge), findsOneWidget);
    expect(
      find.descendant(
        of: find.byType(MarkerClusterBadge),
        matching: find.text('3'),
      ),
      findsOneWidget,
    );
    expect(find.byKey(const ValueKey('p0')), findsNothing);
  });

  testWidgets('distant pins stay individual', (tester) async {
    await pumpMap(
      tester,
      markers: [
        pin('west', LatLng(center.latitude, center.longitude - 0.02)),
        pin('east', LatLng(center.latitude, center.longitude + 0.02)),
      ],
    );

    expect(find.byType(MarkerClusterBadge), findsNothing);
    expect(find.byKey(const ValueKey('west')), findsOneWidget);
    expect(find.byKey(const ValueKey('east')), findsOneWidget);
  });

  testWidgets('the focused pin stays visible among clustered neighbours', (
    tester,
  ) async {
    await pumpMap(
      tester,
      markers: [for (var i = 0; i < 3; i++) pin('p$i', nearCenter(i))],
      focusedMarker: pin('focused', nearCenter(1)),
    );

    expect(find.byKey(const ValueKey('focused')), findsOneWidget);
  });
}
