import { RowMapper } from "../row_mapper";
import { type IdAndName } from "../types";

export class ObjectRefRowMapper extends RowMapper {
  constructor(
    protected readonly field: string,
    protected readonly prefix?: string,
  ) {
    super();
  }

  map(row: Record<string, unknown>): Record<string, unknown> {
    const obj = (row as Record<string, IdAndName>)[this.field];

    const prefix = this.prefix ?? this.field;

    return {
      [`${prefix}.name`]: obj?.name,
      [`${prefix}.id`]: obj?.id,
    };
  }
}
