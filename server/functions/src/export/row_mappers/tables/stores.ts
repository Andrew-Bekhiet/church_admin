import { LocalizationRowMapper } from "../LocalizationRowMapper";
import { AddressRowMapper } from "../fragments/AddressRowMapper";
import { AuditLogRowMapper } from "../fragments/AuditLogRowMapper";
import { ObjectRefRowMapper } from "../fragments/ObjectRefRowMapper";
import { ViewableRowMapper } from "../fragments/ViewableRowMapper";
import { MultiRowMapper, type RowMapper } from "../row_mapper";

export class StoreRowMapper implements RowMapper {
  private readonly mapper: RowMapper;

  constructor() {
    this.mapper = new LocalizationRowMapper(
      new MultiRowMapper([
        new ViewableRowMapper(),
        new AddressRowMapper(),
        new ObjectRefRowMapper("adminFamily"),
        new AuditLogRowMapper("lastEdit"),
      ]),
    );
  }

  map(row: Record<string, unknown>): Record<string, unknown> {
    return this.mapper.map(row);
  }
}
