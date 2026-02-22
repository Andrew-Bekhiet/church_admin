import { LocalizationRowMapper } from "../LocalizationRowMapper";
import { AddressRowMapper } from "../fragments/AddressRowMapper";
import { AuditLogRowMapper } from "../fragments/AuditLogRowMapper";
import { ListNamesAndIdsRowMapper } from "../fragments/ListNamesAndIdsRowMapper";
import { ObjectRefRowMapper } from "../fragments/ObjectRefRowMapper";
import { RawFieldRowMapper } from "../fragments/RawFieldRowMapper";
import { ViewableRowMapper } from "../fragments/ViewableRowMapper";
import { MultiRowMapper, type RowMapper } from "../row_mapper";

export class FamilyRowMapper implements RowMapper {
  private readonly mapper: RowMapper;

  constructor() {
    this.mapper = new LocalizationRowMapper(
      new MultiRowMapper([
        new ViewableRowMapper(),
        new AddressRowMapper(),
        new RawFieldRowMapper("marriageDate"),
        new RawFieldRowMapper("deceasedSpouseName"),
        new RawFieldRowMapper("status"),
        new ObjectRefRowMapper("church"),
        new RawFieldRowMapper("notes"),
        new AuditLogRowMapper("lastVisit"),
        new AuditLogRowMapper("lastFatherVisit"),
        new AuditLogRowMapper("lastEdit"),
        new ListNamesAndIdsRowMapper("stores"),
        new AuditLogRowMapper("lastEdit"),
      ]),
    );
  }

  map(row: Record<string, unknown>): Record<string, unknown> {
    return this.mapper.map(row);
  }
}
