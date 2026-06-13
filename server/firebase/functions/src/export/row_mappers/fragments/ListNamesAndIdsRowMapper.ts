import { RowMapper } from "../row_mapper";
import { type IdAndName } from "../types";

export class ListNamesAndIdsRowMapper<T> extends RowMapper {
  constructor(
    private readonly field: string,
    private readonly selector?: (item: T) => IdAndName,
  ) {
    super();
  }

  map(row: Record<string, unknown>): Record<string, unknown> {
    const items = (row[this.field] as T[]) ?? [];
    const selectedItems = items.map(
      (item) => this.selector?.call(this, item as T) ?? (item as IdAndName),
    );

    return {
      [this.field]: selectedItems.map((item) => item.name).join(","),
      [`${this.field}.id`]: selectedItems.map((item) => item.id).join(","),
    };
  }
}
