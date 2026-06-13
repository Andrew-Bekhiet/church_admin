import { RowMapper } from "../row_mapper";
import { type AuditLogObject } from "../types";

export class AuditLogRowMapper extends RowMapper {
  constructor(
    private readonly field: string,
    private readonly prefix?: string,
  ) {
    super();
  }

  map(row: Record<string, unknown>): Record<string, unknown> {
    const auditLog = (row as Record<string, AuditLogObject>)[this.field];

    const prefix = this.prefix ?? this.field;

    return {
      [`${prefix}.name`]: auditLog?.user?.name,
      [`${prefix}.time`]: auditLog?.time,
      [`${prefix}.uid`]: auditLog?.user?.uid,
    };
  }
}
