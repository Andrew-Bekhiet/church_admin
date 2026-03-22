import { PersonType } from "../types";
import { ObjectRefRowMapper } from "./ObjectRefRowMapper";

export class PersonTypeRowMapper extends ObjectRefRowMapper {
  constructor() {
    super("personType");
  }

  map(row: Record<string, unknown>): Record<string, unknown> {
    const personType = row["personType"] as PersonType | null;

    return {
      ...super.map(row),
      "personType.order": personType?.order,
    };
  }
}
