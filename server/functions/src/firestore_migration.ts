import { randomUUID } from "crypto";
import { firestore } from "firebase-admin";
import * as fs from "fs";
import * as uuid from "uuid";
import {
  PhotoTable,
  makeGraphqlRequest,
  updatePhotoBlurHash,
} from "./hasura_interface";
import { getImageBlurHash } from "./storage_triggers";
import path = require("path");

type IdsMapping = {
  Classes: Record<string, string>;
  Services: Record<string, string>;
  Areas: Record<string, string>;
  Streets: Record<string, string>;
  Families: Record<string, string>;
  Stores: Record<string, string>;
  Persons: Record<string, string>;
};

type Area = {
  id: string;
  name: string;
  bounds: {
    type: "Polygon";
    coordinates: [[number, number][]];
  } | null;
  color: number;
  photoUpdatedAt: string | null;
};

type Street = {
  id: string;
  name: string;
  line: {
    type: "LineString";
    coordinates: [number, number][];
  } | null;
  color: number;
  photoUpdatedAt: string | null;
  areas: {
    data: { areaId: string }[];
    onConflict: { constraint: "areasStreetsPk"; updateColumns: [] };
  };
};

type Family = {
  id: string;
  name: string;
  address: string | null;
  geolocation: {
    type: "Point";
    coordinates: [number, number];
  } | null;
  notes: string | null;
  color: number | null;
  photoUpdatedAt: string | null;
  parents: {
    data: { parentFamilyId: string }[];
  };
  streets: {
    data: { streetId: string }[];
    onConflict: { constraint: "streetsFamiliesPk"; updateColumns: [] };
  };
};

type Store = {
  id: string;
  adminFamily: string;
  name: string;
  address: string;
  geolocation: {
    type: "Point";
    coordinates: [number, number];
  } | null;
  color: number;
  photoUpdatedAt: string | null;
  streets: {
    data: { streetId: string }[];
    onConflict: { constraint: "streetsStoresPk"; updateColumns: [] };
  };
};

type Service = {
  id: string;
  name: string;
  studyYearFromId: number | null;
  studyYearToId: number | null;
  color?: number;
  photoUpdatedAt: string | null;
};

type Class = {
  id: string;
  name: string;
  serviceId: string;
  serviceStudyYear: number;
  serviceGender: boolean;
  color: number | null;
  photoUpdatedAt: string | null;
};

type Person = {
  id: string;
  name: string;
  address: string;
  geolocation: {
    type: "Point";
    coordinates: [number, number];
  } | null;
  mainPhone: string | null;
  otherPhones: Record<string, string>;
  birthdate: string | null;
  gender: boolean;
  isShammas: boolean;
  shammasLevelId: string;
  isStudent: boolean;
  isServant: boolean;
  notes: string;
  schoolId: string | null;
  collegeId: string | null;
  churchId: string | null;
  fatherId: string | null;
  studyYearId: number | null;
  color: number;
  photoUpdatedAt: string | null;
  services: {
    data: { serviceId: string }[];
  };
  jobId: string | null;
  jobDescription: string | null;
  qualificationId: string | null;
  personTypeId: string | null;
  stateId: string | null;
  familyId: string | string[] | null;
  storeId: string | null;
};

export async function migrateProjectsFromFirestore(
  meetingHelperFirestore?: firestore.Firestore,
  churchDataFirestore?: firestore.Firestore,
  dstStorageInstance?: Storage
) {
  if (!meetingHelperFirestore && !churchDataFirestore) {
    console.error(
      "Please provide at least one firestore instance to migrate from"
    );
    return;
  }

  const migrationTime = new Date();
  console.log("Starting migration at", migrationTime.toISOString());

  const oldIdsMapping = fs.existsSync(path.join(".", "migration-mapping.json"))
    ? JSON.parse(
        fs.readFileSync(path.join(".", "migration-mapping.json")).toString()
      )
    : null;

  const { variables, idsMapping } = await getMigrationVarsAndWriteToFile(
    migrationTime,
    meetingHelperFirestore,
    churchDataFirestore,
    oldIdsMapping
  );

  if ((await executeMigration(variables)) !== true) {
    console.error("Migration execution failed. Exiting");
    return;
  }

  if (dstStorageInstance) {
    console.log("Migration successful. Updating photos blurhashes");
    await renamePhotosAndUpdateBlurhashes(dstStorageInstance, idsMapping);
  } else {
    console.log("Migration successful. Skipping photos blurhashes update");
  }
}

export async function getMigrationVarsAndWriteToFile(
  migrationTime: Date,
  meetingHelperFirestore?: firestore.Firestore,
  churchDataFirestore?: firestore.Firestore,
  mapping?: IdsMapping
) {
  const studyYears = Object.entries({
    ...(await getMappedCollection("StudyYears", meetingHelperFirestore)),
    ...(await getMappedCollection("StudyYears", churchDataFirestore)),
  }).reduce((acc, [key, value]) => {
    const grade = value["Grade"]?.toString();

    const duplicate = Object.entries(acc).find(
      ([, item]) => item["Grade"]?.toString() === grade
    );

    if (duplicate) {
      return {
        ...acc,
        [key]: acc[duplicate[0]],
      };
    }

    return {
      ...acc,
      [key]: value,
    };
  }, {} as Record<string, firestore.DocumentData>);

  console.log("Got study years", JSON.stringify(studyYears));

  const uniqueChurches = await getCollectionDataUniqueByName(
    "Churches",
    meetingHelperFirestore,
    churchDataFirestore
  );
  console.log("Got unique churches", JSON.stringify(uniqueChurches));

  const uniqueColleges = await getCollectionDataUniqueByName(
    "Colleges",
    meetingHelperFirestore,
    churchDataFirestore
  );
  console.log("Got unique colleges", JSON.stringify(uniqueColleges));

  const uniqueFathers = Object.entries(
    await getCollectionDataUniqueByName(
      "Fathers",
      meetingHelperFirestore,
      churchDataFirestore
    )
  ).reduce((acc, [k, v], i, a) => {
    if (!v) {
      console.log("Processing father", k, v);
      console.log(a);
    }

    return {
      ...acc,
      [k]: {
        ...v,
        churchId: v.churchId ? uniqueChurches[v.churchId]?.id : null,
      },
    };
  }, {} as Record<string, { id: string; name: string; churchId: string | null }>);

  console.log("Got unique fathers", JSON.stringify(uniqueFathers));

  const uniqueSchools = await getCollectionDataUniqueByName(
    "Schools",
    meetingHelperFirestore,
    churchDataFirestore
  );
  console.log("Got unique schools", JSON.stringify(uniqueSchools));

  const uniqueJobs = await getCollectionDataUniqueByName(
    "Jobs",
    churchDataFirestore
  );
  console.log("Got unique jobs", JSON.stringify(uniqueJobs));

  const uniqueStates = await getCollectionDataUniqueByName(
    "States",
    churchDataFirestore
  );
  console.log("Got unique states", JSON.stringify(uniqueStates));

  const uniqueTypes = await getCollectionDataUniqueByName(
    "Types",
    churchDataFirestore
  );
  console.log("Got unique types", JSON.stringify(uniqueTypes));

  const areas = await getMappedCollection("Areas", churchDataFirestore);
  console.log("Got areas", JSON.stringify(areas));

  const streets = await getMappedCollection("Streets", churchDataFirestore);
  console.log("Got streets", JSON.stringify(streets));

  const familiesAndStores = await getMappedCollection(
    "Families",
    churchDataFirestore
  );
  console.log("Got families", JSON.stringify(familiesAndStores));

  const classes = await getMappedCollection("Classes", meetingHelperFirestore);
  console.log("Got classes", JSON.stringify(classes));

  const services = await getMappedCollection(
    "Services",
    meetingHelperFirestore
  );
  console.log("Got services", JSON.stringify(services));

  const persons = {
    ...(await getMappedCollection("Persons", meetingHelperFirestore)),
    ...(await getMappedCollection("Persons", churchDataFirestore)),
  };
  console.log(
    "Got persons, count: ",
    Object.keys(persons).length,
    "first 10:",
    JSON.stringify(Object.entries(persons).slice(0, 10))
  );

  const uniqueQualifications: Record<string, { id: string; name: string }> =
    Object.values(persons).reduce((acc, value) => {
      if (!value["Qualification"]?.trim()) return acc;

      return {
        ...acc,
        [value["Qualification"].trim()]: {
          id: uuid.v4(),
          name: value["Qualification"].trim(),
        },
      };
    }, {} as Record<string, { id: string; name: string }>);

  const createdStudyYears = [
    {
      order: -3,
      name: "baby class 1",
    },
    {
      order: -2,
      name: "baby class 2",
    },
    {
      order: -1,
      name: "KG 1",
    },
    {
      order: 0,
      name: "KG 2",
    },
    {
      order: 1,
      name: "أولى ابتدائي",
    },
    {
      order: 2,
      name: "ثانية ابتدائي",
    },
    {
      order: 3,
      name: "ثالثة ابتدائي",
    },
    {
      order: 4,
      name: "رابعة ابتدائي",
    },
    {
      order: 5,
      name: "خامسة ابتدائي",
    },
    {
      order: 6,
      name: "سادسة ابتدائي",
    },
    {
      order: 7,
      name: "أولى اعدادي",
    },
    {
      order: 8,
      name: "ثانية اعدادي",
    },
    {
      order: 9,
      name: "ثالثة اعدادي",
    },
    {
      order: 10,
      name: "أولى ثانوي",
    },
    {
      order: 11,
      name: "ثانية ثانوي",
    },
    {
      order: 12,
      name: "ثالثة ثانوي",
    },
    {
      order: 13,
      name: "أولى جامعة",
    },
    {
      order: 14,
      name: "ثانية جامعة",
    },
    {
      order: 15,
      name: "ثالثة جامعة",
    },
    {
      order: 16,
      name: "رابعة جامعة",
    },
    {
      order: 17,
      name: "خامسة جامعة",
    },
    {
      order: 18,
      name: "سادسة جامعة",
    },
  ];

  const oldShammasLevels = [
    "ابصالتس",
    "اغأناغنوستيس",
    "أيبودياكون",
    "دياكون",
    "أرشيدياكون",
  ];

  const createdShammasLevels: Record<
    string,
    { id: string; order: number; name: string }
  > = oldShammasLevels.reduce((acc, level, index) => {
    return {
      ...acc,
      [level]: {
        id: uuid.v4(),
        order: index,
        name: level,
      },
    };
  }, {} as Record<string, { id: string; order: number; name: string }>);

  console.log("Staged Shammas levels", JSON.stringify(createdShammasLevels));

  const migratedAreas: Record<string, Area> = Object.entries(areas).reduce(
    (acc, [key, value]) => {
      if (!value["Name"]?.trim()) {
        console.log("Skipping", key, "because it has no name");
        return acc;
      }

      return {
        ...acc,
        [key]: {
          id: getExistingOrNewUUID(key, "Areas", mapping),
          name: value["Name"].trim(),
          color: value["Color"] === 0 ? null : value["Color"],
          photoUpdatedAt:
            value["hasPhoto"] === true ? migrationTime.toISOString() : null,
          bounds:
            value["Location"] &&
            Array.isArray(value["Location"]) &&
            (value["Location"] as Array<firestore.GeoPoint>).length > 0
              ? {
                  type: "Polygon",
                  coordinates: [
                    [
                      ...(value["Location"] as Array<firestore.GeoPoint>).map(
                        (e) => [e.longitude, e.latitude] as [number, number]
                      ),
                      [
                        (value["Location"] as Array<firestore.GeoPoint>)[0]
                          .longitude,
                        (value["Location"] as Array<firestore.GeoPoint>)[0]
                          .latitude,
                      ],
                    ],
                  ],
                }
              : null,
        } satisfies Area,
      };
    },
    {} as Record<string, Area>
  );

  console.log("Staged migrated areas", JSON.stringify(migratedAreas));

  const migratedStreets: Record<string, Street> = Object.entries(
    streets
  ).reduce((acc, [key, value]) => {
    if (!value["Name"]?.trim()) {
      console.log("Skipping", key, "because it has no name");
      return acc;
    }

    const firestoreAreaId = value["AreaId"]?.id;

    return {
      ...acc,
      [key]: {
        id: getExistingOrNewUUID(key, "Streets", mapping),
        name: value["Name"].trim(),
        color: value["Color"] === 0 ? null : value["Color"],
        photoUpdatedAt:
          value["HasPhoto"] === true ? migrationTime.toISOString() : null,
        line:
          value["Location"] &&
          Array.isArray(value["Location"]) &&
          (value["Location"] as Array<firestore.GeoPoint>).length > 0
            ? {
                type: "LineString",
                coordinates: (
                  value["Location"] as Array<firestore.GeoPoint>
                ).map((e) => [e.longitude, e.latitude]),
              }
            : null,
        areas: {
          data: [{ areaId: migratedAreas[firestoreAreaId]?.id }].filter(
            (e) => e.areaId != null
          ),
          onConflict: { constraint: "areasStreetsPk", updateColumns: [] },
        },
      } satisfies Street,
    };
  }, {} as Record<string, Street>);

  console.log("Staged migrated streets", JSON.stringify(migratedStreets));

  const intermediateFamilies: Record<string, Family> = Object.entries(
    familiesAndStores
  ).reduce((acc, [key, value]) => {
    if (value["IsStore"]) return acc;

    if (!value["Name"]?.trim()) {
      console.log("Skipping", key, "because it has no name");
      return acc;
    }

    const parentFamily1 = value["InsideFamily"]?.id;
    const parentFamily2 = value["InsideFamily2"]?.id;

    const firestoreStreetId = value["StreetId"]?.id;

    return {
      ...acc,
      [key]: {
        id: getExistingOrNewUUID(key, "Families", mapping),
        name: value["Name"].trim(),
        address: value["Address"]?.trim(),
        notes: value["Notes"],
        color: value["Color"] === 0 ? null : value["Color"],
        photoUpdatedAt:
          value["HasPhoto"] === true ? migrationTime.toISOString() : null,
        geolocation: value["Location"]
          ? {
              type: "Point",
              coordinates: [
                value["Location"].longitude,
                value["Location"].latitude,
              ],
            }
          : null,
        parents: {
          data: [
            parentFamily1 ? { parentFamilyId: parentFamily1 } : null,
            parentFamily2
              ? {
                  parentFamilyId: parentFamily2,
                }
              : null,
          ]
            .filter((e) => e != null)
            .map((o) => o as { parentFamilyId: string }),
        },
        streets: {
          data: [{ streetId: migratedStreets[firestoreStreetId]?.id }].filter(
            (e) => e.streetId != null
          ),
          onConflict: { constraint: "streetsFamiliesPk", updateColumns: [] },
        },
      } satisfies Family,
    };
  }, {} as Record<string, Family>);

  const migratedFamilies: Record<string, Family> = Object.fromEntries(
    Object.entries(intermediateFamilies).map(([k, v]) => {
      const parentFamily1 =
        intermediateFamilies[v.parents.data[0]?.parentFamilyId]?.id;
      const parentFamily2 =
        intermediateFamilies[v.parents.data[1]?.parentFamilyId]?.id;

      return [
        k,
        {
          ...v,
          parents: {
            data: [parentFamily1, parentFamily2]
              .filter((e) => e != null)
              .map((o) => ({ parentFamilyId: o as string })),
          },
        } satisfies Family,
      ];
    })
  );

  console.log("Staged migrated families", JSON.stringify(migratedFamilies));

  const migratedStores: Record<string, Store> = Object.entries(
    familiesAndStores
  ).reduce((acc, [key, value]) => {
    if (!value["IsStore"]) return acc;

    if (!value["Name"]?.trim()) {
      console.log("Skipping", key, "because it has no name");
      return acc;
    }
    if (migratedFamilies[value["InsideFamily"]?.id] == null) {
      console.log(
        "Skipping",
        key,
        "because it has no admin family",
        value["InsideFamily"]?.path
      );
      return acc;
    }

    const firestoreStreetId = value["StreetId"]?.id;

    return {
      ...acc,
      [key]: {
        id: getExistingOrNewUUID(key, "Stores", mapping),
        name: value["Name"].trim(),
        adminFamily: migratedFamilies[value["InsideFamily"]?.id].id,
        address: value["Address"]?.trim(),
        color: value["Color"] === 0 ? null : value["Color"],
        photoUpdatedAt:
          value["HasPhoto"] === true ? migrationTime.toISOString() : null,
        geolocation: value["Location"]
          ? {
              type: "Point",
              coordinates: [
                value["Location"].longitude,
                value["Location"].latitude,
              ],
            }
          : null,
        streets: {
          data: [{ streetId: migratedStreets[firestoreStreetId]?.id }].filter(
            (e) => e.streetId != null
          ),
          onConflict: { constraint: "streetsStoresPk", updateColumns: [] },
        },
      } satisfies Store,
    };
  }, {} as Record<string, Store>);

  console.log("Staged migrated stores", JSON.stringify(migratedStores));

  const createdServices: Service[] = [
    {
      id: uuid.v4(),
      name: "خدمة baby class",
      studyYearFromId: -3,
      studyYearToId: -2,
      photoUpdatedAt: null,
    },
    {
      id: uuid.v4(),
      name: "خدمة KG",
      studyYearFromId: -1,
      studyYearToId: 0,
      photoUpdatedAt: null,
    },
    {
      id: uuid.v4(),
      name: "خدمة ابتدائي",
      studyYearFromId: 1,
      studyYearToId: 6,
      photoUpdatedAt: null,
    },
    {
      id: uuid.v4(),
      name: "خدمة اعدادي",
      studyYearFromId: 7,
      studyYearToId: 9,
      photoUpdatedAt: null,
    },
    {
      id: uuid.v4(),
      name: "خدمة ثانوي",
      studyYearFromId: 10,
      studyYearToId: 12,
      photoUpdatedAt: null,
    },
    {
      id: uuid.v4(),
      name: "خدمة جامعة",
      studyYearFromId: 13,
      studyYearToId: 18,
      photoUpdatedAt: null,
    },
  ];

  console.log("Staged new services", JSON.stringify(createdServices));

  const migratedServices: Record<string, Service> = Object.entries(
    services
  ).reduce((acc, [key, value]) => {
    if (!value["Name"]?.trim()) {
      console.log("Skipping", key, "because it has no name");
      return acc;
    }

    const studyYearFrom =
      value["StudyYearRange"] != null
        ? studyYears[value["StudyYearRange"]["From"].id]
        : null;
    const studyYearTo =
      value["StudyYearRange"] != null
        ? studyYears[value["StudyYearRange"]["To"].id]
        : null;

    const service: Service = {
      id: getExistingOrNewUUID(key, "Services", mapping),
      name: value["Name"].trim(),
      photoUpdatedAt:
        value["HasPhoto"] === true ? migrationTime.toISOString() : null,
      color: value["Color"] === 0 ? null : value["Color"],
      studyYearFromId: null,
      studyYearToId: null,
    } satisfies Service;

    if (
      value["StudyYearRange"] != null &&
      studyYearFrom != null &&
      studyYearTo != null
    ) {
      service.studyYearFromId = studyYearFrom["Grade"];
      service.studyYearToId = studyYearTo["Grade"];

      console.log(
        "Migrating service",
        key,
        "with study year range",
        studyYearFrom["Name"],
        "to",
        studyYearTo["Name"]
      );
    } else {
      console.log(
        "Migrating service",
        key,
        "with no study year range, got",
        value["StudyYearRange"],
        "from",
        studyYearFrom,
        "to",
        studyYearTo
      );
    }

    return {
      ...acc,
      [key]: service,
    };
  }, {});

  console.log("Staged migrated services", JSON.stringify(migratedServices));

  const allServices = [...createdServices, ...Object.values(migratedServices)];

  console.log("Staged all services", JSON.stringify(allServices));

  const migratedClasses: Record<string, Class> = Object.entries(classes).reduce(
    (acc, [key, value]) => {
      if (!value["Name"]?.trim()) {
        console.log("Skipping", key, "because it has no name");
        return acc;
      }

      const serviceStudyYear = studyYears[value["StudyYear"].id]?.[
        "Grade"
      ] as number;

      const serviceData = createdServices.find(
        (s) =>
          s.studyYearFromId != null &&
          s.studyYearFromId <= serviceStudyYear &&
          s.studyYearToId != null &&
          s.studyYearToId >= serviceStudyYear
      );

      if (serviceData == null) {
        console.log(
          "Skipping",
          key,
          "because it has no service for study year",
          "StudyYear:",
          (value["StudyYear"] as firestore.DocumentReference).path
        );
        return acc;
      }

      return {
        ...acc,
        [key]: {
          id: getExistingOrNewUUID(key, "Classes", mapping),
          name: value["Name"].trim(),
          color: value["Color"] === 0 ? null : value["Color"],
          photoUpdatedAt:
            value["HasPhoto"] === true ? migrationTime.toISOString() : null,
          serviceId: serviceData["id"],
          serviceGender: value["Gender"],
          serviceStudyYear,
        } satisfies Class,
      };
    },
    {} as Record<string, Class>
  );

  console.log("Staged migrated classes", JSON.stringify(migratedClasses));

  const migratedPersons: Record<string, Person> = Object.entries(
    persons
  ).reduce((acc, [key, value]) => {
    if (value["Name"] == null) {
      console.log("Skipping", key, "because it has no name");
      return acc;
    }

    const studyYearIdFromClassId =
      classes[value["ClassId"]?.id]?.["StudyYear"]?.id ??
      value["StudyYear"]?.id;
    const studyYearOrder = studyYears[studyYearIdFromClassId]?.["Grade"];

    const personServices: string[] = [
      ...(value["Services"] ?? []).map(
        (e: firestore.DocumentReference) => migratedServices[e.id]!.id
      ),
      studyYearOrder != null
        ? createdServices.find(
            (s) =>
              s["studyYearFromId"] != null &&
              s["studyYearFromId"] <= studyYearOrder &&
              s["studyYearToId"] != null &&
              s["studyYearToId"] >= studyYearOrder
          )?.id
        : null,
    ].filter((e) => e !== null);

    const gender =
      value["Gender"] ?? classes[value["ClassId"]?.id]?.["Gender"] ?? true;

    const geolocation: Person["geolocation"] = value["Location"]
      ? {
          type: "Point",
          coordinates: [
            value["Location"].longitude,
            value["Location"].latitude,
          ],
        }
      : null;

    const streetId = value["StreetId"]?.id;

    const familyName = (value["Name"] as string)
      .trim()
      .split(" ")
      .splice(1)
      .join(" ");

    const familyOrStoreId = value["FamilyId"]?.id;

    const familyId =
      // Get family by firestore id
      migratedFamilies[familyOrStoreId]?.id ??
      // Or previously created family
      (
        migratedFamilies[familyName] ??
        // Or existing family with same name
        Object.values(migratedFamilies).find((f) => f.name === familyName) ??
        // Or create a new family
        (migratedFamilies[familyName] = {
          id: randomUUID(),
          name: familyName,
          address: null,
          geolocation: geolocation,
          notes: null,
          color: null,
          photoUpdatedAt: null,
          parents: { data: [] },
          streets: {
            data: streetId ? [{ streetId: migratedStreets[streetId]?.id }] : [],
            onConflict: { constraint: "streetsFamiliesPk", updateColumns: [] },
          },
        })
      ).id;
    const storeId = migratedStores[familyOrStoreId]?.id;

    if (
      studyYearOrder == null &&
      personServices.length === 0 &&
      !value["Location"] &&
      !familyOrStoreId
    ) {
      console.log(
        "Skipping",
        key,
        "because it has no study year, no services, no location and no familyOrStoreId"
      );
      return acc;
    }

    const schoolId =
      value["School"] != null && uniqueSchools[value["School"].id] != null
        ? uniqueSchools[value["School"].id]?.id
        : null;
    const collegeId =
      value["College"] != null && uniqueColleges[value["College"].id] != null
        ? uniqueColleges[value["College"].id]?.id
        : null;
    const jobId =
      value["Job"] != null && uniqueJobs[value["Job"].id] != null
        ? uniqueJobs[value["Job"].id]?.id
        : null;
    const jobDescription = value["JobDescription"]?.trim();

    return {
      ...acc,
      [key]: {
        id: getExistingOrNewUUID(key, "Persons", mapping),
        name: value["Name"].trim(),
        mainPhone: value["Phone"]?.replace(/ /g, "").trim(),
        otherPhones: {
          ...(value["FatherPhone"] != null
            ? {
                "رقم هاتف الأب": (value["FatherPhone"] as string)
                  .replace(/ /g, "")
                  .trim(),
              }
            : {}),
          ...(value["MotherPhone"] != null
            ? {
                "رقم هاتف الأم": (value["MotherPhone"] as string)
                  .replace(/ /g, "")
                  .trim(),
              }
            : {}),
          ...Object.fromEntries(
            Object.entries(value["Phones"] ?? {}).map(([key, value]) => [
              key,
              (value as string).replace(/ /g, "").trim(),
            ])
          ),
        },
        gender,
        isShammas: gender && !!createdShammasLevels[value["ShammasLevel"]]?.id,
        isStudent: !!(schoolId || collegeId || !(jobId || jobDescription)),
        isServant: false,
        shammasLevelId: createdShammasLevels[value["ShammasLevel"]]?.["id"],
        geolocation,
        color: value["Color"] === 0 ? null : value["Color"],
        notes: value["Notes"],
        photoUpdatedAt:
          value["HasPhoto"] === true ? migrationTime.toISOString() : null,
        address: value["Address"]?.trim(),
        birthdate:
          toNearestDay(value["BirthDate"]?.toDate())?.toISOString() ?? null,
        churchId:
          value["Church"] != null && uniqueChurches[value["Church"].id] != null
            ? uniqueChurches[value["Church"].id]?.id
            : null,
        fatherId:
          value["CFather"] != null && uniqueFathers[value["CFather"].id] != null
            ? uniqueFathers[value["CFather"].id]?.id
            : null,
        collegeId,
        schoolId,
        studyYearId: studyYearOrder,
        services: {
          data: Array.from(new Set(personServices)).map((e) => ({
            serviceId: e,
          })),
        },
        jobId,
        jobDescription,
        familyId: [familyId],
        storeId,
        personTypeId: value["Type"] ? uniqueTypes[value["Type"]]?.id : null,
        qualificationId:
          value["Qualification"] &&
          uniqueQualifications[value["Qualification"].trim()] != null
            ? uniqueQualifications[value["Qualification"].trim()]?.id
            : null,
        stateId:
          value["State"] != null && uniqueStates[value["State"].id] != null
            ? uniqueStates[value["State"].id]?.id
            : null,
      } satisfies Person,
    };
  }, {} as Record<string, Person>);

  const uniqueMigratedPersons = Object.values(migratedPersons).reduce(
    (acc, person) => {
      const existingPerson = acc.find(
        (p) =>
          p.name
            .substring(0, Math.min(p.name.length, person.name.length))
            .replace(/ /g, "")
            .replace(/ى/g, "ي")
            .replace(/أ/g, "ا")
            .replace(/إ/g, "ا")
            .replace(/آ/g, "ا")
            .replace(/ة/g, "ه") ===
          person.name
            .substring(0, Math.min(p.name.length, person.name.length))
            .replace(/ /g, "")
            .replace(/ى/g, "ي")
            .replace(/أ/g, "ا")
            .replace(/إ/g, "ا")
            .replace(/آ/g, "ا")
            .replace(/ة/g, "ه")
      );

      if (
        existingPerson &&
        existingPerson.birthdate &&
        person.birthdate &&
        existingPerson.birthdate == person.birthdate
      ) {
        const shammasLevelId =
          existingPerson.shammasLevelId ?? person.shammasLevelId;

        const gender =
          !!shammasLevelId ||
          (existingPerson.gender != null && person.gender != null
            ? existingPerson.gender === person.gender
              ? existingPerson.gender
              : false
            : existingPerson.gender ?? person.gender);

        const merged: Person = {
          id: existingPerson.id ?? person.id,
          name: maxString(existingPerson.name, person.name),
          address: (
            (existingPerson.address ?? "") +
            "\n" +
            (person.address ?? "")
          ).trim(),
          geolocation: existingPerson.geolocation ?? person.geolocation,
          mainPhone: existingPerson.mainPhone || person.mainPhone,
          otherPhones: {
            ...person.otherPhones,
            ...existingPerson.otherPhones,
          },
          birthdate: existingPerson.birthdate || person.birthdate,
          gender: gender,
          isShammas: gender && !!shammasLevelId,
          shammasLevelId: shammasLevelId,
          isStudent: existingPerson.isStudent ?? person.isStudent,
          isServant: existingPerson.isServant ?? person.isServant,
          notes: (
            (existingPerson.notes ?? "") +
            "\n" +
            (person.notes ?? "")
          ).trim(),
          schoolId: existingPerson.schoolId ?? person.schoolId,
          collegeId: existingPerson.collegeId ?? person.collegeId,
          churchId: existingPerson.churchId ?? person.churchId,
          fatherId: existingPerson.fatherId ?? person.fatherId,
          studyYearId: existingPerson.studyYearId ?? person.studyYearId,
          color: existingPerson.color ?? person.color,
          photoUpdatedAt:
            existingPerson.photoUpdatedAt ?? person.photoUpdatedAt,
          services: {
            data: existingPerson.services.data.concat(
              person.services.data.filter(
                (item) =>
                  !existingPerson.services.data.find(
                    (o) => o.serviceId == item.serviceId
                  )
              )
            ),
          },
          jobId: existingPerson.jobId ?? person.jobId,
          jobDescription: (
            (existingPerson.jobDescription ?? "") +
            "\n" +
            (person.jobDescription ?? "")
          ).trim(),
          qualificationId:
            existingPerson.qualificationId ?? person.qualificationId,
          personTypeId: existingPerson.personTypeId ?? person.personTypeId,
          stateId: existingPerson.stateId ?? person.stateId,
          familyId: Array.from(
            new Set([
              ...(existingPerson.familyId ?? []),
              ...(person.familyId ?? []),
            ])
          ).filter((v) => v != null),
          storeId: existingPerson.storeId ?? person.storeId,
        };

        console.log("Found duplicate person", person.name);
        console.dir(["Existing person:", existingPerson]);
        console.dir(["New person:", person]);
        console.dir(["Merged:", merged]);

        return [...acc.filter((p) => p.id != existingPerson.id), merged];
      } else if (existingPerson) {
        console.log(
          "Possible duplicate person",
          person.name,
          existingPerson.name,
          "trimmedName",
          existingPerson.name
            .substring(
              0,
              Math.min(existingPerson.name.length, person.name.length)
            )
            .replace(/ /g, "")
            .replace(/ى/g, "ي")
            .replace(/أ/g, "ا")
            .replace(/إ/g, "ا")
            .replace(/آ/g, "ا")
            .replace(/ة/g, "ه")
        );
      }

      return [...acc, person];
    },
    [] as Person[]
  );

  const mergedFamiliesIdsMapping: Record<string, string> =
    mergeFamiliesWithCommonPersons(uniqueMigratedPersons, migratedFamilies);

  replaceFamiliesParentsIds(mergedFamiliesIdsMapping, migratedFamilies);
  replaceStoresAdminFamiliesIds(mergedFamiliesIdsMapping, migratedStores);
  replacePersonsFamiliesIds(mergedFamiliesIdsMapping, uniqueMigratedPersons);

  console.log(
    "Staged migrated persons, count:",
    Object.keys(uniqueMigratedPersons).length,
    "first 10:",
    JSON.stringify(Object.entries(uniqueMigratedPersons).slice(0, 10))
  );

  const idsMapping: IdsMapping = {
    Classes: Object.entries(migratedClasses).reduce(
      (acc, [key, value]) => ({ ...acc, [key]: value["id"] }),
      {} as Record<string, string>
    ),
    Services: Object.entries(migratedServices).reduce(
      (acc, [key, value]) => ({ ...acc, [key]: value["id"] as string }),
      {} as Record<string, string>
    ),
    Areas: Object.entries(migratedAreas).reduce(
      (acc, [key, value]) => ({ ...acc, [key]: value["id"] }),
      {} as Record<string, string>
    ),
    Streets: Object.entries(migratedStreets).reduce(
      (acc, [key, value]) => ({ ...acc, [key]: value["id"] }),
      {} as Record<string, string>
    ),
    Families: Object.entries(migratedFamilies).reduce(
      (acc, [key, value]) => ({ ...acc, [key]: value["id"] }),
      {} as Record<string, string>
    ),
    Stores: Object.entries(migratedStores).reduce(
      (acc, [key, value]) => ({ ...acc, [key]: value["id"] }),
      {} as Record<string, string>
    ),
    Persons: Object.entries(migratedPersons).reduce(
      (acc, [key, value]) => ({ ...acc, [key]: value["id"] }),
      {} as Record<string, string>
    ),
  };

  console.log(
    "Done migrating data. Saving migration ids mapping to ./migration-mapping.json"
  );

  const filePath = path.join(".", "migration-mapping.json");
  fs.mkdirSync(path.dirname(filePath), { recursive: true });
  fs.writeFileSync(filePath, JSON.stringify(idsMapping));

  const variables = {
    studyYears: createdStudyYears,

    qualifications: getUniqueValuesByName(
      Object.values(uniqueQualifications) ?? []
    ),
    jobs: getUniqueValuesByName(Object.values(uniqueJobs) ?? []),
    states: getUniqueValuesByName(Object.values(uniqueStates) ?? []),
    types: getUniqueValuesByName(Object.values(uniqueTypes) ?? []),
    colleges: getUniqueValuesByName(Object.values(uniqueColleges) ?? []),
    schools: getUniqueValuesByName(Object.values(uniqueSchools) ?? []),
    churches: getUniqueValuesByName(Object.values(uniqueChurches) ?? []),
    fathers: getUniqueValuesByName(Object.values(uniqueFathers) ?? []),
    shamasLevels: getUniqueValuesByName(
      Object.values(createdShammasLevels) ?? []
    ),

    areas: Object.values(migratedAreas).filter((v) => v != null) ?? [],
    streets: Object.values(migratedStreets).filter((v) => v != null) ?? [],
    families: Object.values(migratedFamilies).filter((v) => v != null) ?? [],
    stores: Object.values(migratedStores).filter((v) => v != null) ?? [],

    services: allServices.filter((v) => v != null) ?? [],
    classes: Object.values(migratedClasses).filter((v) => v != null) ?? [],

    persons: uniqueMigratedPersons.filter((v) => v != null) ?? [],
  };

  console.log("Saving migration vars to ./migration-vars.json");

  const filePath2 = path.join(".", "migration-vars.json");
  fs.mkdirSync(path.dirname(filePath2), { recursive: true });
  fs.writeFileSync(filePath2, JSON.stringify(variables));

  return { variables, idsMapping };
}

function replacePersonsFamiliesIds(
  mergedFamiliesIdsMapping: Record<string, string>,
  uniqueMigratedPersons: Person[]
) {
  for (const person of Object.values(uniqueMigratedPersons)) {
    if (
      typeof person.familyId == "string" &&
      mergedFamiliesIdsMapping[person.familyId!] != null
    ) {
      person.familyId = mergedFamiliesIdsMapping[person.familyId];
    }
  }
}

function replaceStoresAdminFamiliesIds(
  mergedFamiliesIdsMapping: Record<string, string>,
  migratedStores: Record<string, Store>
) {
  for (const store of Object.values(migratedStores)) {
    if (store.adminFamily == null) continue;

    const newAdminFamilyId = mergedFamiliesIdsMapping[store.adminFamily];

    if (newAdminFamilyId == null) continue;

    store.adminFamily = newAdminFamilyId;
  }
}

function replaceFamiliesParentsIds(
  mergedFamiliesIdsMapping: Record<string, string>,
  migratedFamilies: Record<string, Family>
) {
  const allMergedIds = [
    ...Object.keys(mergedFamiliesIdsMapping),
    ...Object.values(mergedFamiliesIdsMapping),
  ];
  for (const family of Object.values(migratedFamilies)) {
    if (
      family.parents.data.filter((e) => allMergedIds.includes(e.parentFamilyId))
        .length > 0
    ) {
      family.parents.data = family.parents.data.map((parent) => {
        return {
          parentFamilyId:
            mergedFamiliesIdsMapping[parent.parentFamilyId] ??
            parent.parentFamilyId,
        };
      });
    }
  }
}

function mergeFamiliesWithCommonPersons(
  uniqueMigratedPersons: Person[],
  migratedFamilies: Record<string, Family>
) {
  const mergedFamiliesIdsMapping: Record<string, string> = {};
  let deletedFamilies: string[] = [];

  for (const person of Object.values(uniqueMigratedPersons)) {
    if (typeof person.familyId == "string") {
      continue;
    } else if ((person.familyId?.length ?? 0) == 1) {
      person.familyId = person.familyId![0];

      continue;
    } else if ((person.familyId?.length ?? 0) == 0) {
      console.log("Person: ", person.name, "has no family");
      throw new Error("Person has no family");
    }

    console.log(
      "Person: ",
      person.name,
      "has multiple families",
      person.familyId,
      "merging them"
    );

    const firstFamilyId = person.familyId![0];

    const [firstFamilyFirestoreId, firstFamily] = Object.entries(
      migratedFamilies
    ).find(
      ([, v]) =>
        v.id === (mergedFamiliesIdsMapping[firstFamilyId] ?? firstFamilyId)
    )!;

    const [newToBeDeletedFamilies, mergedFamily] = (
      person.familyId! as string[]
    ).reduce(
      ([deletedFamilies, acc], familyId) => {
        const newId = mergedFamiliesIdsMapping[acc.id] ?? acc.id;

        const [familyFirestoreId, family] = Object.entries(
          migratedFamilies
        ).find(
          ([, v]) => v.id === (mergedFamiliesIdsMapping[familyId] ?? familyId)
        )!;

        const newFamily: Family = {
          id: newId,
          name: maxString(acc.name, family.name),
          address: (acc.address ?? "") + "\n" + (family.address ?? ""),
          geolocation: acc.geolocation ?? family.geolocation,
          color: acc.color ?? family.color,
          photoUpdatedAt: acc.photoUpdatedAt ?? family.photoUpdatedAt,
          parents: {
            data: acc.parents.data.concat(family.parents.data),
          },
          streets: {
            data: acc.streets.data.concat(family.streets.data),
            onConflict: { constraint: "streetsFamiliesPk", updateColumns: [] },
          },
          notes: (acc.notes ?? "") + "\n" + (family.notes ?? ""),
        };

        mergedFamiliesIdsMapping[familyId] = newId;
        migratedFamilies[familyFirestoreId] = newFamily;

        return [[...deletedFamilies, familyFirestoreId], newFamily];
      },
      [new Array<string>(), firstFamily]
    );

    migratedFamilies[firstFamilyFirestoreId] = mergedFamily;
    deletedFamilies = [...deletedFamilies, ...newToBeDeletedFamilies].filter(
      (e) => e != firstFamilyFirestoreId
    );

    person.familyId = mergedFamily!.id;
  }

  for (const familyId of deletedFamilies) {
    delete migratedFamilies[familyId];
  }
  return mergedFamiliesIdsMapping;
}

export async function executeMigration(variables?: {
  studyYears: Array<object>;
  colleges: Array<object>;
  schools: Array<object>;
  churches: Array<object>;
  fathers: Array<object>;
  shamasLevels: Array<object>;
  qualifications: Array<object>;
  jobs: Array<object>;
  states: Array<object>;
  types: Array<object>;
  areas: Array<Area>;
  streets: Array<Street>;
  families: Array<Family>;
  stores: Array<Store>;
  services: Array<Service>;
  classes: Array<Class>;
  persons: Array<Person>;
}): Promise<boolean> {
  if (!variables) {
    variables = JSON.parse(
      fs.readFileSync(path.join(".", "migration-vars.json")).toString()
    );
  }

  try {
    const result = await makeGraphqlRequest({
      query: `
        mutation migrateFromFirestore(
  $studyYears: [StudyYearsInsertInput!]!
  $colleges: [CollegesInsertInput!]!
  $schools: [SchoolsInsertInput!]!
  $churches: [ChurchesInsertInput!]!
  $fathers: [FathersInsertInput!]!
  $shamasLevels: [ShammasLevelsInsertInput!]!
  $services: [ServicesInsertInput!]!
  $classes: [ClassesInsertInput!]!
  $persons: [PersonsInsertInput!]!

  $qualifications: [QualificationsInsertInput!]!
  $jobs: [JobsInsertInput!]!
  $states: [PersonStatesInsertInput!]!
  $types: [PersonTypesInsertInput!]!
  $areas: [AreasInsertInput!]!
  $streets: [StreetsInsertInput!]!
  $families: [FamiliesInsertInput!]!
  $stores: [StoresInsertInput!]!
) {
  insertStudyYears(
    objects: $studyYears
    onConflict: { constraint: studyYearsOrderKey, updateColumns: order }
  ) {
    affectedRows
  }
  insertServices(
    objects: $services
    onConflict: { constraint: servicesNameKey, updateColumns: id }
  ) {
    affectedRows
  }
  insertColleges(
    objects: $colleges
    onConflict: { constraint: collegesNameKey, updateColumns: id }
  ) {
    affectedRows
  }
  insertSchools(
    objects: $schools
    onConflict: { constraint: schoolsNameKey, updateColumns: id }
  ) {
    affectedRows
  }
  insertChurches(
    objects: $churches
    onConflict: { constraint: churchesNameKey, updateColumns: id }
  ) {
    affectedRows
  }
  insertFathers(
    objects: $fathers
    onConflict: { constraint: fathersNameKey, updateColumns: id }
  ) {
    affectedRows
  }
  insertQualifications(
    objects: $qualifications
    onConflict: { constraint: qualificationsNameKey, updateColumns: id }
  ) {
    affectedRows
  }
  insertJobs(
    objects: $jobs
    onConflict: { constraint: jobsNameKey, updateColumns: id }
  ) {
    affectedRows
  }
  insertPersonStates(
    objects: $states
    onConflict: { constraint: statesNameKey, updateColumns: id }
  ) {
    affectedRows
  }
  insertPersonTypes(
    objects: $types
    onConflict: { constraint: personTypesNameKey, updateColumns: id }
  ) {
    affectedRows
  }
  insertShammasLevels(
    objects: $shamasLevels
    onConflict: { constraint: shammasLevelNameKey, updateColumns: id }
  ) {
    affectedRows
  }
  insertClasses(
    objects: $classes
    onConflict: { constraint: classesPkey, updateColumns: id }
  ) {
    affectedRows
  }
  insertAreas(
    objects: $areas
    onConflict: { constraint: areasPkey, updateColumns: id }
  ) {
    affectedRows
  }
  insertStreets(
    objects: $streets
    onConflict: { constraint: streetsPkey, updateColumns: id }
  ) {
    affectedRows
  }
  insertFamilies(
    objects: $families
    onConflict: { constraint: familiesPkey, updateColumns: id }
  ) {
    affectedRows
  }
  insertStores(
    objects: $stores
    onConflict: { constraint: storesPkey, updateColumns: id }
  ) {
    affectedRows
  }
  insertPersons(objects: $persons) {
    affectedRows
  }
}
`,
      variables: variables!,
    });

    if (result.data.errors != null) {
      throw result.data.errors;
    }

    return true;
  } catch (e) {
    console.dir(e, { depth: 3 });
    throw e;
  }
}

export async function getCollectionDataUniqueByName(
  collectionName:
    | keyof IdsMapping
    | "Churches"
    | "Colleges"
    | "Fathers"
    | "Schools"
    | "Jobs"
    | "States"
    | "Types",
  firestoreInstance1?: firestore.Firestore,
  firestoreInstance2?: firestore.Firestore,
  mapping?: Record<string, Record<string, string>>
): Promise<
  Record<
    string,
    {
      id: string;
      name: string;
      color?: number | null;
      order?: number | null;
      churchId?: string | null;
    }
  >
> {
  const collection1 = await firestoreInstance1
    ?.collection(collectionName)
    .get();
  const collection2 = await firestoreInstance2
    ?.collection(collectionName)
    .get();

  return [...(collection1?.docs ?? []), ...(collection2?.docs ?? [])].reduce(
    (acc, doc, i) => {
      const name = doc.data()["Name"].trim();
      const duplicate = Object.entries(acc).find(
        ([, item]) => item && item.name === name
      );

      // if (doc.id == "RKEGGwtx27S2dft1Ln1r") {
      //   console.dir(doc.data(), { depth: 3 });
      //   console.dir(duplicate, { depth: 3 });
      // }

      if (duplicate) {
        return {
          ...acc,
          [doc.id]: acc[duplicate[0]],
        };
      }

      if (collectionName == "States") {
        return {
          ...acc,
          [doc.id]: {
            id: getExistingOrNewUUID(doc.id, collectionName, mapping),
            name,
            color: parseInt(doc.data()["Color"], 16),
          },
        };
      } else if (collectionName == "Types") {
        return {
          ...acc,
          [doc.id]: {
            id: getExistingOrNewUUID(doc.id, collectionName, mapping),
            name,
            order: i,
          },
        };
      } else if (collectionName == "Fathers") {
        return {
          ...acc,
          [doc.id]: {
            id: getExistingOrNewUUID(doc.id, collectionName, mapping),
            name,
            churchId: doc.data()["ChurchId"]?.id ?? null,
          },
        };
      }

      return {
        ...acc,
        [doc.id]: {
          id: getExistingOrNewUUID(doc.id, collectionName, mapping),
          name,
        },
      };
    },
    {} as Record<
      string,
      { id: string; name: string; color?: number | null; order?: number | null }
    >
  );
}

export async function getMappedCollection(
  name: string,
  firestoreInstance?: firestore.Firestore
) {
  if (!firestoreInstance) return {};

  const collection = await firestoreInstance.collection(name).get();

  return collection.docs.reduce((acc, doc) => {
    return {
      ...acc,
      [doc.id]: doc.data(),
    };
  }, {} as Record<string, firestore.DocumentData>);
}

export function toNearestDay(date?: Date): Date | null {
  if (date == null) return null;

  date.setUTCDate(date.getUTCDate() + (date.getUTCHours() >= 12 ? 1 : 0));
  date.setUTCHours(6);
  date.setUTCMinutes(0);
  date.setUTCSeconds(0);
  date.setUTCMilliseconds(0);
  return date;
}

export async function renamePhotosAndUpdateBlurhashes(
  dstStorageInstance: Storage,
  idsMapping?: IdsMapping,
  pageToken?: string,
  startOffset?: string,
  maxResults?: string
) {
  if (!idsMapping) {
    idsMapping = JSON.parse(
      fs.readFileSync(path.join(".", "migration-mapping.json")).toString()
    );
  }

  const files = await dstStorageInstance
    .bucket("church-data-admin.appspot.com")
    .getFiles({
      maxResults: Number.parseInt(
        maxResults ?? process.env["maxResults"] ?? "3500"
      ),
      matchGlob: "{Persons,Classes,Services,Areas,Streets,Families}*/**",
      startOffset: startOffset ?? process.env["startOffset"] ?? "0",
      pageToken: pageToken ?? process.env["pageToken"] ?? undefined,
    });

  for (const file of files[0]) {
    if (
      !file.name.match(
        /^((Persons)|(Classes)|(Services)|(Areas)|(Streets)|(Families))Photos\/.+/
      )
    ) {
      console.log("Skipping", file.name);
      continue;
    }

    const table = file.name.match(/^(.+)Photos\/(.+$)/)![1];
    const id = file.name.match(/^(.+)Photos\/(.+$)/)![2];

    const newId = (
      idsMapping?.[table as keyof IdsMapping] as
        | Record<string, string>
        | undefined
    )?.[id] as string | undefined;

    if (newId) {
      console.log("Getting blurhash for", table, "/", id);

      const blurhash = await getImageBlurHash(file);

      console.log("Setting blurhash for", table, "/", id, "to", blurhash);
      await updatePhotoBlurHash(
        table.toLowerCase() as PhotoTable,
        newId,
        blurhash
      ).catch((e) => {
        console.log(
          "Failed to set blurhash for",
          table,
          "/",
          id,
          "to",
          blurhash
        );
        console.log("Error:", e);
      });

      console.log("Renaming", table, "/", id, "to", newId);
      await file.rename(path.join(table.toLowerCase(), newId));
    }
  }
}

function maxString(a: string, b: string): string {
  return a.length >= b.length ? a : b;
}

function getUniqueValuesByName<T extends { name: string }>(objects: T[]): T[] {
  return objects.reduce((acc, value) => {
    if (value && !acc.some((item) => item && item.name === value.name)) {
      return [...acc, value];
    }
    return acc;
  }, [] as T[]);
}

function getExistingOrNewUUID(
  firestoreId: string,
  collectionName: string,
  mapping?: Record<string, Record<string, string>> | null
): string {
  return mapping?.[collectionName]?.[firestoreId] ?? uuid.v4();
}

export async function createBlurhashesJSONToSQL(
  json?: Record<string, Record<string, string>>
) {
  if (!json) {
    const dir = fs.readdirSync("../../../migration/server");
    for (const file of dir) {
      if (file.match(/_blurhashes.json/)) {
        json = {
          ...(json ?? {}),
          ...JSON.parse(
            fs.readFileSync("../../../migration/server/" + file).toString()
          ),
        };
      }
    }
  }

  const result = Object.entries(json!)
    .map(([table, values]) => {
      const valuesEntries = (values as unknown as Array<Record<string, string>>)
        .filter(
          (o) =>
            o["photo_updated_at"] &&
            o["photo_updated_at"] != "null" &&
            o["photo_updated_at"] != "" &&
            o["blurhash"] &&
            o["blurhash"] != "null" &&
            o["blurhash"] != ""
        )
        .map((o) => `('${o["id"]}'::uuid, '${o["blurhash"]}')`)
        .join(",\n");

      if (valuesEntries.length == 0) return "";

      return `
UPDATE "${table}" SET "blurhash" = v."value"
FROM (VALUES
  ${valuesEntries}
) AS v("key", "value")
WHERE "${table}"."id" = v."key";
    `;
    })
    .join("\n");

  fs.writeFileSync("../../../migration/server/blurhashes.sql", result);
}
