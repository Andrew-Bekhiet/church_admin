import { LocalizationRowMapper } from "../LocalizationRowMapper";
import { ViewableRowMapper } from "../fragments/ViewableRowMapper";
import { RowMapper } from "../row_mapper";

export class AreaRowMapper implements RowMapper {
  private readonly mapper: RowMapper;

  constructor() {
    this.mapper = new LocalizationRowMapper(new ViewableRowMapper());
  }

  map(row: Record<string, unknown>): Record<string, unknown> {
    return this.mapper.map(row);
  }
}
