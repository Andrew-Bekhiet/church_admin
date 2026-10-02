import { LocalizationRowMapper } from "../LocalizationRowMapper";
import { AuditLogRowMapper } from "../fragments/AuditLogRowMapper";
import { GenderRowMapper } from "../fragments/GenderRowMapper";
import { ObjectRefRowMapper } from "../fragments/ObjectRefRowMapper";
import { StudyYearRowMapper } from "../fragments/StudyYearRowMapper";
import { ViewableRowMapper } from "../fragments/ViewableRowMapper";
import { MultiRowMapper, RowMapper } from "../row_mapper";

export class ClassRowMapper implements RowMapper {
  private readonly mapper: RowMapper;

  constructor() {
    this.mapper = new LocalizationRowMapper(
      new MultiRowMapper([
        new ViewableRowMapper(),
        new StudyYearRowMapper("studyYearFrom"),
        new StudyYearRowMapper("studyYearTo"),
        new GenderRowMapper(),
        new ObjectRefRowMapper("service"),
        new AuditLogRowMapper("lastEdit"),
      ]),
    );
  }

  map(row: Record<string, unknown>): Record<string, unknown> {
    return this.mapper.map(row);
  }
}
