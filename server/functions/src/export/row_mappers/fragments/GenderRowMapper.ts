import { RowMapper } from "../row_mapper";

export class GenderRowMapper extends RowMapper {
  constructor() {
    super();
  }

  map(row: Record<string, unknown>): Record<string, unknown> {
    const value = row["gender"];

    return {
      gender: value === true ? "M" : value === false ? "F" : "U",
    };
  }
}
