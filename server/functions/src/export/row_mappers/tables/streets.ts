import { AuditLogRowMapper } from "../fragments/AuditLogRowMapper";
import { ListNamesAndIdsRowMapper } from "../fragments/ListNamesAndIdsRowMapper";
import { ViewableRowMapper } from "../fragments/ViewableRowMapper";
import { MultiRowMapper, RowMapper } from "../row_mapper";
import { type IdAndName } from "../types";

export class StreetRowMapper implements RowMapper {
  private readonly mapper: RowMapper;

  constructor() {
    this.mapper = new MultiRowMapper([
      new ViewableRowMapper(),
      new ListNamesAndIdsRowMapper<{ area: IdAndName }>("areas", (a) => a.area),
      new AuditLogRowMapper("lastEdit"),
    ]);
  }

  map(row: Record<string, unknown>): Record<string, unknown> {
    return this.mapper.map(row);
  }
}
