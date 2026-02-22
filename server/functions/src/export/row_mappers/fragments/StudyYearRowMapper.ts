import { StudyYear } from "../types";
import { ObjectRefRowMapper } from "./ObjectRefRowMapper";

export class StudyYearRowMapper extends ObjectRefRowMapper {
  constructor(protected readonly field: string = "studyYear") {
    super(field);
  }

  map(row: Record<string, unknown>): Record<string, unknown> {
    const studyYear = row[this.field] as StudyYear | null;

    return {
      ...super.map(row),
      [`${this.field}.order`]: studyYear?.order,
    };
  }
}
