/**
 * Builds GraphQL variables for the exportData query according to the plan:
 * - By area: subdata = streets, families, stores, persons; related = classes, services, groups
 * - By service: subdata = classes, groups, persons; related = families, stores, streets, areas
 * - By class: subdata = persons; related = families, stores, streets, areas
 * - By group: subdata = persons; related = families, stores, streets, areas
 * When multiple selection types are provided, filters are combined with _or (union of scopes).
 */

type Where = Record<string, unknown>;

export interface ExportSelectionIds {
  areasIds: string[];
  servicesIds: string[];
  classesIds: string[];
  groupsIds: string[];
}

function combineWhereParts(parts: Where[]): Where | null {
  if (parts.length === 0) return null;
  if (parts.length === 1) return parts[0]!;
  return { _or: parts };
}

export function buildExportVariables(selection: ExportSelectionIds) {
  const { areasIds, servicesIds, classesIds, groupsIds } = selection;
  const hasAreas = areasIds.length > 0;
  const hasServices = servicesIds.length > 0;
  const hasClasses = classesIds.length > 0;
  const hasGroups = groupsIds.length > 0;
  const hasAnySelection = hasAreas || hasServices || hasClasses || hasGroups;

  const personsWhere = buildPersonsWhere(selection);
  const familiesWhere = buildFamiliesWhere(selection);
  const storesWhere = buildStoresWhere(selection);
  const streetsWhere = buildStreetsWhere(selection);
  const areasWhere = buildAreasWhere(selection);
  const classesWhere = buildClassesWhere(selection);
  const groupsWhere = buildGroupsWhere(selection);
  const servicesWhere = buildServicesWhere(selection);

  return {
    areasWhere,
    servicesWhere,
    classesWhere,
    groupsWhere,
    personsWhere,
    familiesWhere,
    storesWhere,
    streetsWhere,
    includeFamilies: familiesWhere && (hasAreas || hasServices || hasClasses),
    includeStores: storesWhere && hasAreas,
    includeStreets: streetsWhere && hasAnySelection,
    includeAreas: areasWhere && hasAnySelection,
    includeClasses: classesWhere && hasAnySelection,
    includeGroups: groupsWhere && (hasGroups || hasServices || hasClasses),
    includeServices: servicesWhere && hasAnySelection,
  };
}

function buildPersonsWhere(params: ExportSelectionIds): Where | null {
  const parts: Where[] = [];
  if (params.areasIds.length > 0) {
    parts.push({ address: { area: { id: { _in: params.areasIds } } } });
  }
  if (params.servicesIds.length > 0) {
    parts.push({ services: { serviceId: { _in: params.servicesIds } } });
  }
  if (params.classesIds.length > 0) {
    parts.push({ classes: { classId: { _in: params.classesIds } } });
  }
  if (params.groupsIds.length > 0) {
    parts.push({ groups: { groupId: { _in: params.groupsIds } } });
  }
  return combineWhereParts(parts);
}

function buildFamiliesWhere(params: ExportSelectionIds): Where | null {
  const parts: Where[] = [];
  if (params.areasIds.length > 0) {
    parts.push({ address: { area: { id: { _in: params.areasIds } } } });
  }
  if (params.servicesIds.length > 0) {
    parts.push({
      persons: { services: { serviceId: { _in: params.servicesIds } } },
    });
  }
  if (params.classesIds.length > 0) {
    parts.push({
      persons: { classes: { classId: { _in: params.classesIds } } },
    });
  }
  if (params.groupsIds.length > 0) {
    parts.push({ persons: { groups: { groupId: { _in: params.groupsIds } } } });
  }
  return combineWhereParts(parts);
}

function buildStoresWhere(params: ExportSelectionIds): Where {
  if (params.areasIds.length === 0) return {};
  return { address: { area: { id: { _in: params.areasIds } } } };
}

/** Where clause for street filtered by persons relation (services/classes/groups). */
function streetWhereViaPersons(personsWhere: Where): Where {
  return {
    areas: {
      area: {
        addresses: { family: { persons: personsWhere } },
      },
    },
  };
}

function buildStreetsWhere(params: ExportSelectionIds): Where | null {
  const parts: Where[] = [];
  if (params.areasIds.length > 0) {
    parts.push({ areas: { areaId: { _in: params.areasIds } } });
  }
  if (params.servicesIds.length > 0) {
    parts.push(
      streetWhereViaPersons({
        services: { serviceId: { _in: params.servicesIds } },
      }),
    );
  }
  if (params.classesIds.length > 0) {
    parts.push(
      streetWhereViaPersons({
        classes: { classId: { _in: params.classesIds } },
      }),
    );
  }
  if (params.groupsIds.length > 0) {
    parts.push(
      streetWhereViaPersons({ groups: { groupId: { _in: params.groupsIds } } }),
    );
  }
  return combineWhereParts(parts);
}

/** Where clause for area filtered by persons relation (services/classes/groups). */
function areaWhereViaPersons(personsWhere: Where): Where {
  return { addresses: { family: { persons: personsWhere } } };
}

function buildAreasWhere(params: ExportSelectionIds): Where | null {
  const parts: Where[] = [];
  if (params.areasIds.length > 0) {
    parts.push({ id: { _in: params.areasIds } });
  }
  if (params.servicesIds.length > 0) {
    parts.push(
      areaWhereViaPersons({
        services: { serviceId: { _in: params.servicesIds } },
      }),
    );
  }
  if (params.classesIds.length > 0) {
    parts.push(
      areaWhereViaPersons({ classes: { classId: { _in: params.classesIds } } }),
    );
  }
  if (params.groupsIds.length > 0) {
    parts.push(
      areaWhereViaPersons({ groups: { groupId: { _in: params.groupsIds } } }),
    );
  }
  return combineWhereParts(parts);
}

function buildClassesWhere(params: ExportSelectionIds): Where | null {
  const parts: Where[] = [];
  if (params.areasIds.length > 0) {
    parts.push({
      persons: {
        person: { address: { area: { id: { _in: params.areasIds } } } },
      },
    });
  }
  if (params.servicesIds.length > 0) {
    parts.push({ serviceId: { _in: params.servicesIds } });
  }
  if (params.classesIds.length > 0) {
    parts.push({ id: { _in: params.classesIds } });
  }
  if (params.groupsIds.length > 0) {
    parts.push({
      persons: { person: { groups: { groupId: { _in: params.groupsIds } } } },
    });
  }
  return combineWhereParts(parts);
}

function buildGroupsWhere(params: ExportSelectionIds): Where | null {
  const parts: Where[] = [];
  if (params.servicesIds.length > 0) {
    parts.push({ serviceId: { _in: params.servicesIds } });
  }
  if (params.classesIds.length > 0) {
    parts.push({
      persons: { person: { classes: { classId: { _in: params.classesIds } } } },
    });
  }
  if (params.groupsIds.length > 0) {
    parts.push({ id: { _in: params.groupsIds } });
  }
  return combineWhereParts(parts);
}

function buildServicesWhere(params: ExportSelectionIds): Where | null {
  const parts: Where[] = [];
  if (params.areasIds.length > 0) {
    parts.push({
      persons: {
        person: { address: { area: { id: { _in: params.areasIds } } } },
      },
    });
  }
  if (params.servicesIds.length > 0) {
    parts.push({ id: { _in: params.servicesIds } });
  }
  if (params.classesIds.length > 0) {
    parts.push({
      persons: { person: { classes: { classId: { _in: params.classesIds } } } },
    });
  }
  if (params.groupsIds.length > 0) {
    parts.push({
      persons: { person: { groups: { groupId: { _in: params.groupsIds } } } },
    });
  }
  return combineWhereParts(parts);
}
