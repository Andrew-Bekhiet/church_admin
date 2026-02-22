import { LocalizationRowMapper } from "../LocalizationRowMapper";
import { AuditLogRowMapper } from "../fragments/AuditLogRowMapper";
import { ObjectRefRowMapper } from "../fragments/ObjectRefRowMapper";
import { RawFieldRowMapper } from "../fragments/RawFieldRowMapper";
import { ViewableRowMapper } from "../fragments/ViewableRowMapper";
import { MultiRowMapper, RowMapper } from "../row_mapper";

export class GroupRowMapper implements RowMapper {
  private readonly mapper: RowMapper;

  constructor() {
    this.mapper = new LocalizationRowMapper(
      new MultiRowMapper([
        new ViewableRowMapper(),
        new ObjectRefRowMapper("service"),
        new RawFieldRowMapper("validity"),
        new AuditLogRowMapper("lastEdit"),
      ]),
    );
  }

  map(row: Record<string, unknown>): Record<string, unknown> {
    return this.mapper.map(row);
  }
}
