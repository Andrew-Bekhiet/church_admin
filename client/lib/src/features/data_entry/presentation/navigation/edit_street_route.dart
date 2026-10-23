part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditStreetRoute extends HomeChildRoute {
  static const String routePath = '/edit_street';

  final StreetEditIntent? intent;

  @override
  String get path => routePath;

  @override
  Json get analyticsProperties => switch (intent ?? const CreateBlankStreet()) {
    CreateStreetInArea(:final area) => {
      'intent_kind': CreateStreetInArea.kind,
      'area_id': area.id,
    },
    CreateBlankStreet() => {'intent_kind': CreateBlankStreet.kind},
    UpdateStreet(:final street) => {
      'intent_kind': UpdateStreet.kind,
      'street_id': street.id,
    },
  };

  @override
  List<Object?> get props => [intent];

  const EditStreetRoute({this.intent});

  @override
  Widget build(BuildContext context) {
    return EditStreetScreen(intent: intent ?? const CreateBlankStreet());
  }
}
