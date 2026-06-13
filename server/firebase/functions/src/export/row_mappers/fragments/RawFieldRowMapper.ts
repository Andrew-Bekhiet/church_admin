import { RowMapper } from "../row_mapper";

export class RawFieldRowMapper extends RowMapper {
  constructor(private readonly field: string) {
    super();
  }

  map(row: Record<string, unknown>): Record<string, unknown> {
    return {
      [this.field]: row[this.field],
    };
  }
}
