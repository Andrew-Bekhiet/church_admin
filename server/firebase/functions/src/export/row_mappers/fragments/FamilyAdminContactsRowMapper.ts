import { RowMapper } from "../row_mapper";
import { FamilyContact } from "../types";
import { ContactsRowMapper } from "./ContactsRowMapper";
import { PhoneDisplayFormat } from "./PhoneDisplayFormat";

export class FamilyAdminContactsRowMapper extends RowMapper {
  map(row: Record<string, unknown>): Record<string, unknown> {
    const contacts = (
      (row["familyContacts"] as FamilyContact[] | null) ?? []
    ).filter((c) => c.personId !== row["id"]);

    const byRole = new Map<string, FamilyContact[]>();

    for (const contact of contacts) {
      const roleId = contact.personType.id;

      byRole.set(roleId, [...(byRole.get(roleId) ?? []), contact]);
    }

    const roles = [...byRole.values()].sort(
      ([a], [b]) =>
        a.personType.order - b.personType.order ||
        a.personType.name.localeCompare(b.personType.name),
    );

    return Object.fromEntries(
      roles.map((roleContacts) => [
        `${ContactsRowMapper.labelPrefix} (${roleContacts[0].personType.name})`,
        [...roleContacts]
          .sort(
            (a, b) =>
              Number(b.isMainPhone) - Number(a.isMainPhone) ||
              a.createdAt.localeCompare(b.createdAt),
          )
          .map((c) => PhoneDisplayFormat.of(c.phone))
          .join(" - "),
      ]),
    );
  }
}
