import assert from "node:assert/strict";
import { randomUUID } from "node:crypto";
import fs from "node:fs";
import path from "node:path";
import { describe, it } from "node:test";
import * as XLSX from "xlsx";
import { buildWorkbookBuffer } from "../../src/export/to_excel";
import { graphqlAs, runSql } from "../support/local_hasura";

const FULL_ADDRESS_COLUMN = "العنوان: العنوان بالكامل";

async function seedFamilyWithAddress(): Promise<string> {
  const [familyId, areaId, streetId] = [randomUUID(), randomUUID(), randomUUID()];

  await runSql(
    `insert into public.areas (id, name) values ('${areaId}', 'area ${areaId}');
     insert into public.streets (id, name) values ('${streetId}', 'شارع الجلاء');
     insert into public.areas_streets (area_id, street_id) values ('${areaId}', '${streetId}');
     insert into public.families (id, name) values ('${familyId}', 'family ${familyId}');
     insert into public.addresses (family_id, area_id, street_id, house_code, substreet_name, storey_number, apartment_number)
     values ('${familyId}', '${areaId}', '${streetId}', '12ب', 'شارع النصر', 3, 7);`,
  );

  return familyId;
}

async function exportFamily(familyId: string): Promise<Record<string, unknown>[]> {
  const query = fs.readFileSync(
    path.join(process.cwd(), "src/export/export_data.graphql"),
    "utf8",
  );
  const response = await graphqlAs("admin", query, {
    personsWhere: { id: { _isNull: true } },
    familiesWhere: { id: { _eq: familyId } },
    includeStores: false,
    includeStreets: false,
    includeAreas: false,
    includeClasses: false,
    includeGroups: false,
    includeServices: false,
  });

  assert.equal(response.errors, undefined);

  const workbook = XLSX.read(
    buildWorkbookBuffer({
      families: response.data!["families"] as unknown[],
    }),
  );

  return XLSX.utils.sheet_to_json(workbook.Sheets["families"]!);
}

describe("excel export", () => {
  it("writes the address's full text from the database into its own column", async () => {
    const familyId = await seedFamilyWithAddress();

    const [row] = await exportFamily(familyId);

    assert.equal(row![FULL_ADDRESS_COLUMN], "12ب ش الجلاء متفرع من النصر الدور 3 شقة 7");
  });
});
