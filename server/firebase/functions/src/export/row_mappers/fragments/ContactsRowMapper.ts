import { RowMapper } from "../row_mapper";
import { Contact } from "../types";
import { PhoneDisplayFormat } from "./PhoneDisplayFormat";
import { PhonesMapRowMapper } from "./PhonesMapRowMapper";

export class ContactsRowMapper extends RowMapper {
  static readonly labelPrefix = "رقم الهاتف";

  map(row: Record<string, unknown>): Record<string, unknown> {
    const own = [...((row["contacts"] as Contact[] | null) ?? [])].sort(
      (a, b) => a.createdAt.localeCompare(b.createdAt),
    );
    const main = own.find((c) => c.isMainPhone);

    return {
      mainPhone: main ? PhoneDisplayFormat.of(main.phone) : null,
      ...new PhonesMapRowMapper("otherPhones").map({
        otherPhones: this.otherPhonesByLabel(own.filter((c) => c !== main)),
      }),
    };
  }

  private otherPhonesByLabel(contacts: Contact[]): Record<string, string> {
    let unlabelled = 0;

    const byLabel = new Map<string, string[]>();

    for (const contact of contacts) {
      const label =
        contact.label ?? `${ContactsRowMapper.labelPrefix} ${++unlabelled}`;

      byLabel.set(label, [
        ...(byLabel.get(label) ?? []),
        PhoneDisplayFormat.of(contact.phone),
      ]);
    }

    return Object.fromEntries(
      [...byLabel].map(([label, phones]) => [label, phones.join(" - ")]),
    );
  }
}
