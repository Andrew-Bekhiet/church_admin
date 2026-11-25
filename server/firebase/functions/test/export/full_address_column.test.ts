import assert from "node:assert/strict";
import { randomUUID } from "node:crypto";
import fs from "node:fs";
import path from "node:path";
import { describe, it } from "node:test";
import * as XLSX from "xlsx";
import { buildWorkbookBuffer, type ExportPayload } from "../../src/export/to_excel";
import { graphqlAs, runSql } from "../support/local_hasura";

const FULL_ADDRESS_COLUMN = "العنوان: العنوان بالكامل";

interface AddressParts {
  houseCode: string;
  street: string;
  substreet: string;
  storey: number;
  apartment: number;
}

const ADDRESS: AddressParts = {
  houseCode: "12ب",
  street: "شارع الجلاء",
  substreet: "شارع النصر",
  storey: 3,
  apartment: 7,
};

const ADDRESS_FULL_TEXT = "12ب ش الجلاء متفرع من النصر الدور 3 شقة 7";

interface StreetInArea {
  areaId: string;
  streetId: string;
}

async function seedStreetInArea(streetName: string): Promise<StreetInArea> {
  const [areaId, streetId] = [randomUUID(), randomUUID()];

  await runSql(
    `insert into public.areas (id, name) values ('${areaId}', 'area ${areaId}');
     insert into public.streets (id, name) values ('${streetId}', '${streetName}');
     insert into public.areas_streets (area_id, street_id) values ('${areaId}', '${streetId}');`,
  );

  return { areaId, streetId };
}

function insertAddressSql(
  owner: { column: "family_id" | "store_id"; id: string },
  { areaId, streetId }: StreetInArea,
  address: AddressParts,
): string {
  return `insert into public.addresses (${owner.column}, area_id, street_id, house_code, substreet_name, storey_number, apartment_number)
          values ('${owner.id}', '${areaId}', '${streetId}', '${address.houseCode}', '${address.substreet}', ${address.storey}, ${address.apartment});`;
}

async function seedFamilyWithAddress(address: AddressParts): Promise<string> {
  const familyId = randomUUID();
  const streetInArea = await seedStreetInArea(address.street);

  await runSql(
    `insert into public.families (id, name) values ('${familyId}', 'family ${familyId}');
     ${insertAddressSql({ column: "family_id", id: familyId }, streetInArea, address)}`,
  );

  return familyId;
}

async function seedPersonInFamilyWithAddress(address: AddressParts): Promise<string> {
  const [personId, familyId] = [randomUUID(), await seedFamilyWithAddress(address)];

  await runSql(
    `insert into public.persons (id, name, family_id) values ('${personId}', 'person ${personId}', '${familyId}');`,
  );

  return personId;
}

async function seedStoreWithAddress(address: AddressParts): Promise<string> {
  const storeId = randomUUID();
  const streetInArea = await seedStreetInArea(address.street);

  await runSql(
    `insert into public.stores (id, name) values ('${storeId}', 'store ${storeId}');
     ${insertAddressSql({ column: "store_id", id: storeId }, streetInArea, address)}`,
  );

  return storeId;
}

async function exportSheetRowsAsAdmin(
  sheet: "persons" | "families" | "stores",
  id: string,
): Promise<Record<string, unknown>[]> {
  const query = fs.readFileSync(
    path.join(process.cwd(), "src/export/export_data.graphql"),
    "utf8",
  );
  const matchNoPersons = { id: { _isNull: true } };
  const response = await graphqlAs("admin", query, {
    personsWhere: sheet === "persons" ? { id: { _eq: id } } : matchNoPersons,
    familiesWhere: { id: { _eq: id } },
    storesWhere: { id: { _eq: id } },
    includeFamilies: sheet === "families",
    includeStores: sheet === "stores",
    includeStreets: false,
    includeAreas: false,
    includeClasses: false,
    includeGroups: false,
    includeServices: false,
  });

  assert.equal(response.errors, undefined);

  const workbook = XLSX.read(
    buildWorkbookBuffer({ [sheet]: response.data![sheet] } as ExportPayload),
  );

  return XLSX.utils.sheet_to_json(workbook.Sheets[sheet]!);
}

describe("excel export", () => {
  for (const [sheet, seed] of [
    ["persons", seedPersonInFamilyWithAddress],
    ["families", seedFamilyWithAddress],
    ["stores", seedStoreWithAddress],
  ] as const) {
    it(`writes the address's full text from the database into its own column on the ${sheet} sheet`, async () => {
      const id = await seed(ADDRESS);

      const [row] = await exportSheetRowsAsAdmin(sheet, id);

      assert.equal(row![FULL_ADDRESS_COLUMN], ADDRESS_FULL_TEXT);
    });
  }
});
