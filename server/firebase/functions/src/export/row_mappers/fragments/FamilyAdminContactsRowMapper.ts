import { RowMapper } from "../row_mapper";
import { FamilyContact } from "../types";
import { ContactsRowMapper } from "./ContactsRowMapper";
import { PhoneColumns } from "./PhoneColumns";

export class FamilyAdminContactsRowMapper extends RowMapper {
  private static byRoleThenMainPhoneThenCreationDate(
    a: FamilyContact,
    b: FamilyContact,
  ): number {
    return (
      a.personType.order - b.personType.order ||
      a.personType.name.localeCompare(b.personType.name) ||
      Number(b.isMainPhone) - Number(a.isMainPhone) ||
      a.createdAt.localeCompare(b.createdAt)
    );
  }

  map(row: Record<string, unknown>): Record<string, unknown> {
    const otherAdminsContacts = (
      (row["familyContacts"] as FamilyContact[] | null) ?? []
    ).filter((c) => c.personId !== row["id"]);

    return PhoneColumns.joinValuesIfKeysDuplicated(
      otherAdminsContacts.sort(
        FamilyAdminContactsRowMapper.byRoleThenMainPhoneThenCreationDate,
      ),
      (c) => `${ContactsRowMapper.labelPrefix} (${c.personType.name})`,
    );
  }
}
