import { RowMapper } from "../row_mapper";
import { type Viewable } from "../types";

export class ViewableRowMapper implements RowMapper {
  map(row: Record<string, unknown>): Record<string, unknown> {
    const r = row as Viewable;

    const hexColor =
      r.color && typeof r.color === "number"
        ? r.color.toString(16).padStart(8, "0")
        : null;

    const hexColorWithoutAlpha = hexColor?.substring(2);

    return {
      id: r.id,
      name: r.name,
      color: hexColorWithoutAlpha ? `#${hexColorWithoutAlpha}` : null,
    };
  }
}
