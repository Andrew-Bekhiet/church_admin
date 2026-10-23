import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

sealed class EntityAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'entity';

  const EntityAnalyticsEvent();
}

final class EntityPropertyCopy extends EntityAnalyticsEvent {
  final CopiedEntityProperty property;

  @override
  String get objectAction => 'property_copy';

  @override
  Json get properties => {'property': property.name};

  const EntityPropertyCopy(this.property);
}

final class EntityMapShow extends EntityAnalyticsEvent {
  final ViewableWithID entity;

  @override
  String get objectAction => 'map_show';

  @override
  Json get properties => AnalyticsEntityType.propertiesOf(entity);

  const EntityMapShow(this.entity);
}

final class EntityAttendanceRecordOpen extends EntityAnalyticsEvent {
  final ViewableWithID entity;

  @override
  String get objectAction => 'attendance_record_open';

  @override
  Json get properties => AnalyticsEntityType.propertiesOf(entity);

  const EntityAttendanceRecordOpen(this.entity);
}

final class EntityStatisticsOpen extends EntityAnalyticsEvent {
  final ViewableWithID entity;

  @override
  String get objectAction => 'statistics_open';

  @override
  Json get properties => AnalyticsEntityType.propertiesOf(entity);

  const EntityStatisticsOpen(this.entity);
}

final class EntityShowMoreTap extends EntityAnalyticsEvent {
  final List<Object> items;

  @override
  String get objectAction => 'show_more_tap';

  @override
  Json get properties => {
    if (AnalyticsEntityType.of(items.firstOrNull) case final type?)
      'object_type': type.key,
    'item_count': items.length,
  };

  const EntityShowMoreTap(this.items);
}

final class EntityRelatedCreateTap extends EntityAnalyticsEvent {
  final ViewableWithID viewed;
  final AnalyticsEntityType relatedType;
  final EntityRelation relation;

  @override
  String get objectAction => 'related_create_tap';

  @override
  Json get properties => {
    ...AnalyticsEntityType.propertiesOf(viewed),
    'related_entity_type': relatedType.key,
    'relation': relation.name,
  };

  const EntityRelatedCreateTap(
    this.viewed,
    this.relatedType, {
    required this.relation,
  });

  const EntityRelatedCreateTap.unlinkedStore(this.viewed)
    : relatedType = AnalyticsEntityType.store,
      relation = EntityRelation.unlinked;
}

enum CopiedEntityProperty { address, notes }

enum EntityRelation { child, parent, member, owned, unlinked }
