part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class EntityAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'entity';

  const EntityAnalyticsEvent();
}

final class EntityPropertyCopy extends EntityAnalyticsEvent {
  final CopiedEntityProperty copiedProperty;

  @override
  String get objectAction => 'property_copy';

  @override
  Json get properties => {'copied_property': copiedProperty.name};

  const EntityPropertyCopy(this.copiedProperty);
}

sealed class SingleEntityAnalyticsEvent extends EntityAnalyticsEvent {
  final Json entityProperties;

  @override
  Json get properties => entityProperties;

  SingleEntityAnalyticsEvent(ViewableWithID entity)
    : entityProperties = AnalyticsEntityType.propertiesOf(entity);
}

final class EntityMapShow extends SingleEntityAnalyticsEvent {
  @override
  String get objectAction => 'map_show';

  EntityMapShow(super.entity);
}

final class EntityAttendanceRecordOpen extends SingleEntityAnalyticsEvent {
  @override
  String get objectAction => 'attendance_record_open';

  EntityAttendanceRecordOpen(super.entity);
}

final class EntityStatisticsOpen extends SingleEntityAnalyticsEvent {
  @override
  String get objectAction => 'statistics_open';

  EntityStatisticsOpen(super.entity);
}

final class EntityRelatedCreateTap extends EntityAnalyticsEvent {
  final Json viewedEntityProperties;
  final AnalyticsEntityType relatedType;
  final EntityRelation relation;

  @override
  String get objectAction => 'related_create_tap';

  @override
  Json get properties => {
    ...viewedEntityProperties,
    'related_entity_type': relatedType.key,
    'relation': relation.name,
  };

  EntityRelatedCreateTap(
    ViewableWithID viewed,
    this.relatedType, {
    required this.relation,
  }) : viewedEntityProperties = AnalyticsEntityType.propertiesOf(viewed);

  EntityRelatedCreateTap.unlinkedStore(ViewableWithID viewed)
    : viewedEntityProperties = AnalyticsEntityType.propertiesOf(viewed),
      relatedType = AnalyticsEntityType.store,
      relation = EntityRelation.unlinked;
}
