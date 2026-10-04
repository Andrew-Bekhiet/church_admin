import { RowMapper } from "../row_mapper";
import { Contact } from "../types";
import { PhoneColumns } from "./PhoneColumns";
import { PhoneDisplayFormat } from "./PhoneDisplayFormat";

export class ContactsRowMapper extends RowMapper {
  static readonly labelPrefix = "رقم الهاتف";

  map(row: Record<string, unknown>): Record<string, unknown> {
    const contacts = [...((row["contacts"] as Contact[] | null) ?? [])].sort(
      (a, b) => a.createdAt.localeCompare(b.createdAt),
    );
    const main = contacts.find((c) => c.isMainPhone);
    const others = contacts.filter((c) => c !== main);

    let unlabelledCount = 0;
    const labelOf = (c: Contact) =>
      c.label ?? `${ContactsRowMapper.labelPrefix} ${++unlabelledCount}`;

    return {
      mainPhone: main ? PhoneDisplayFormat.of(main.phone) : null,
      ...PhoneColumns.join(others, (c) => `otherPhones.${labelOf(c)}`),
    };
  }
}
