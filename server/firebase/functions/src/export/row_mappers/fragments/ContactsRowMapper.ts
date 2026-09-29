import { RowMapper } from "../row_mapper";
import { PhoneDisplayFormat } from "./PhoneDisplayFormat";
import { PhonesMapRowMapper } from "./PhonesMapRowMapper";

type Contact = {
  phone: string;
  label: string | null;
  isMainPhone: boolean;
  createdAt: string;
};

type FamilyAdminContact = Omit<Contact, "label"> & {
  personId: string | null;
  personType: { id: string; name: string };
};

export class ContactsRowMapper extends RowMapper {
  private static readonly labelPrefix = "رقم الهاتف";
  private static readonly definiteArticle = "ال";

  map(row: Record<string, unknown>): Record<string, unknown> {
    const own = (row["contacts"] as Contact[] | null) ?? [];
    const family = row["familyAdminContacts"] as {
      contacts: FamilyAdminContact[];
    } | null;

    return {
      mainPhone: this.display(own.find((c) => c.isMainPhone)?.phone),
      ...new PhonesMapRowMapper("otherPhones").map({
        otherPhones: this.otherPhonesByLabel(own.filter((c) => !c.isMainPhone)),
      }),
      ...this.familyAdminPhones(
        row["id"] as string,
        family?.contacts ?? [],
      ),
    };
  }

  private display(phone: string | undefined): string | null {
    return phone === undefined ? null : PhoneDisplayFormat.of(phone);
  }

  private otherPhonesByLabel(contacts: Contact[]): Record<string, string> {
    let unlabelled = 0;

    return Object.fromEntries(
      contacts.map((c) => [
        c.label ?? `${ContactsRowMapper.labelPrefix} ${++unlabelled}`,
        PhoneDisplayFormat.of(c.phone),
      ]),
    );
  }

  private familyAdminPhones(
    personId: string,
    contacts: FamilyAdminContact[],
  ): Record<string, string> {
    const byRole = new Map<string, FamilyAdminContact[]>();

    for (const contact of contacts) {
      if (contact.personId === personId) continue;

      const roleId = contact.personType.id;

      byRole.set(roleId, [...(byRole.get(roleId) ?? []), contact]);
    }

    return Object.fromEntries(
      [...byRole.values()].map((roleContacts) => {
        const chosen =
          roleContacts.find((c) => c.isMainPhone) ??
          roleContacts.reduce((a, b) => (b.createdAt < a.createdAt ? b : a));

        return [
          this.roleHeader(chosen.personType.name),
          PhoneDisplayFormat.of(chosen.phone),
        ];
      }),
    );
  }

  private roleHeader(typeName: string): string {
    const role = typeName.startsWith(ContactsRowMapper.definiteArticle)
      ? typeName
      : `${ContactsRowMapper.definiteArticle}${typeName}`;

    return `${ContactsRowMapper.labelPrefix} (${role})`;
  }
}
