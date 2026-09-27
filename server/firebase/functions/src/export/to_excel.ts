import * as XLSX from "xlsx";
import { RowMapper } from "./row_mappers/row_mapper";

import { AreaRowMapper } from "./row_mappers/tables/areas";
import { ClassRowMapper } from "./row_mappers/tables/classes";
import { FamilyRowMapper } from "./row_mappers/tables/families";
import { GroupRowMapper } from "./row_mappers/tables/groups";
import { PersonRowMapper } from "./row_mappers/tables/persons";
import { ServiceRowMapper } from "./row_mappers/tables/services";
import { StoreRowMapper } from "./row_mappers/tables/stores";
import { StreetRowMapper } from "./row_mappers/tables/streets";

export type ExportPayload = Record<string, unknown[]>;

export function buildWorkbookBuffer(payload: ExportPayload): Buffer {
  const workbook = XLSX.utils.book_new();
  workbook.Workbook = {
    ...(workbook.Workbook ?? {}),
    Views: [{ RTL: true }, ...(workbook.Workbook?.Views ?? [])],
  };

  for (const [table, rows] of Object.entries(payload)) {
    if (!Array.isArray(rows) || rows.length === 0) continue;

    const { sheet, sheetName } = createSheetFrom(table, rows);

    XLSX.utils.book_append_sheet(workbook, sheet, sheetName);
  }

  return XLSX.write(workbook, { type: "buffer", bookType: "xlsx" }) as Buffer;
}

function createSheetFrom(
  table: string,
  rows: unknown[],
): { sheet: XLSX.WorkSheet; sheetName: string } {
  const mapper = getRowMapperForTable(table);
  const jsonRows = rows.map((row) =>
    mapper.map(row as Record<string, unknown>),
  );
  const rowsWithIdsMovedToTheEnd = moveIdsToEnd(jsonRows);
  const header = mergeRowsKeys(rowsWithIdsMovedToTheEnd);

  const sheet = XLSX.utils.json_to_sheet(rowsWithIdsMovedToTheEnd, {
    header,
    cellDates: true,
    cellStyles: true,
  });

  adjustColumnsWidths(sheet, header, rowsWithIdsMovedToTheEnd);
  addAutoFilterRange(sheet, header, rowsWithIdsMovedToTheEnd);

  return { sheet, sheetName: sanitizeSheetName(table) };
}

function getRowMapperForTable(table: string): RowMapper {
  switch (table) {
    case "persons":
      return new PersonRowMapper();

    case "areas":
      return new AreaRowMapper();

    case "streets":
      return new StreetRowMapper();

    case "stores":
      return new StoreRowMapper();

    case "families":
      return new FamilyRowMapper();

    case "classes":
      return new ClassRowMapper();

    case "groups":
      return new GroupRowMapper();

    case "services":
      return new ServiceRowMapper();

    default:
      throw new Error(`Unknown table: ${table}`);
  }
}

function moveIdsToEnd(jsonRows: Record<string, unknown>[]) {
  return jsonRows.reduce(
    (acc, row) => {
      const { fields, idFields } = Object.entries(row).reduce(
        (acc, [key, value]) => {
          if (isIdColumn(key)) {
            return {
              fields: acc.fields,
              idFields: { ...acc.idFields, [key]: value },
            };
          }

          return {
            fields: { ...acc.fields, [key]: value },
            idFields: acc.idFields,
          };
        },
        {
          fields: {} as Record<string, unknown>,
          idFields: {} as Record<string, unknown>,
        },
      );

      return [...acc, { ...fields, ...idFields }];
    },
    [] as Record<string, unknown>[],
  );
}

function isIdColumn(key: string): boolean {
  return /(^|\.)u?id$/.test(key);
}

function mergeRowsKeys(jsonRows: Record<string, unknown>[]): string[] {
  return jsonRows.reduce((header, row) => {
    let insertionIndex = 0;

    for (const key of Object.keys(row)) {
      const existingIndex = header.indexOf(key);

      if (existingIndex === -1) {
        header.splice(insertionIndex, 0, key);
        insertionIndex++;
        continue;
      }

      insertionIndex = Math.max(insertionIndex, existingIndex + 1);
    }

    return header;
  }, [] as string[]);
}

function adjustColumnsWidths(
  sheet: XLSX.WorkSheet,
  header: string[],
  jsonRows: Record<string, unknown>[],
) {
  sheet["!cols"] = header.map((propertyName) => {
    const maxCharWidth = jsonRows.reduce(
      (max, current) =>
        Math.max(max, String(current[propertyName] ?? "").length),
      propertyName.length,
    );

    return {
      wch: maxCharWidth,
    };
  });
}

function addAutoFilterRange(
  sheet: XLSX.WorkSheet,
  header: string[],
  jsonRows: Record<string, unknown>[],
) {
  const autoFilterRange = XLSX.utils.encode_range(
    { r: 0, c: 0 },
    {
      r: jsonRows.length,
      c: header.length - 1,
    },
  );
  sheet["!autofilter"] = { ref: autoFilterRange };
}

function sanitizeSheetName(name: string): string {
  return name.replace(/[:\\/?*[\]]/g, "_").slice(0, 31);
}
