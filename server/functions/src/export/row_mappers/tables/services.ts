import { AuditLogRowMapper } from "../fragments/AuditLogRowMapper";
import { ObjectRefRowMapper } from "../fragments/ObjectRefRowMapper";
import { StudyYearRowMapper } from "../fragments/StudyYearRowMapper";
import { ViewableRowMapper } from "../fragments/ViewableRowMapper";
import { MultiRowMapper, type RowMapper } from "../row_mapper";

export class ServiceRowMapper implements RowMapper {
  private readonly mapper: RowMapper;

  constructor() {
    this.mapper = new MultiRowMapper([
      new ViewableRowMapper(),
      new StudyYearRowMapper("studyYearFrom"),
      new StudyYearRowMapper("studyYearTo"),
      new ObjectRefRowMapper("nextService"),
      new AuditLogRowMapper("lastEdit"),
    ]);
  }

  map(row: Record<string, unknown>): Record<string, unknown> {
    return this.mapper.map(row);
  }
}
