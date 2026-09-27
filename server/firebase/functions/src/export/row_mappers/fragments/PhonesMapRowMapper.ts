import { RowMapper } from "../row_mapper";

export class PhonesMapRowMapper extends RowMapper {
  constructor(private readonly field: string) {
    super();
  }

  map(row: Record<string, unknown>): Record<string, unknown> {
    const phones = (row[this.field] as Record<string, unknown> | null) ?? {};

    return Object.fromEntries(
      Object.entries(phones).map(([label, phone]) => [
        `${this.field}.${label}`,
        phone,
      ]),
    );
  }
}
