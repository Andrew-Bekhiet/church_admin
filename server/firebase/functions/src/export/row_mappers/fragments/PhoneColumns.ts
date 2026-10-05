import { NationalPhoneDisplayFormat } from "./PhoneDisplayFormat";

export class PhoneColumns {
  static joinValuesIfKeysDuplicated<T extends { phone: string }>(
    contacts: T[],
    columnOf: (contact: T) => string,
  ): Record<string, string> {
    const columns: Record<string, string> = {};

    for (const contact of contacts) {
      const column = columnOf(contact);
      const phone = NationalPhoneDisplayFormat.maybeFormat(contact.phone);

      const phoneExists = column in columns;
      const existingPhone = columns[column];

      columns[column] = phoneExists ? `${existingPhone} - ${phone}` : phone;
    }

    return columns;
  }
}
