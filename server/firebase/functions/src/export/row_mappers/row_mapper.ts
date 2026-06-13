export abstract class RowMapper {
  abstract map(row: Record<string, unknown>): Record<string, unknown>;
}

export class MultiRowMapper extends RowMapper {
  constructor(private readonly mappers: RowMapper[]) {
    super();
  }

  map(row: Record<string, unknown>): Record<string, unknown> {
    return this.mappers.reduce(
      (acc, mapper) => ({ ...acc, ...mapper.map(row) }),
      {},
    );
  }
}
