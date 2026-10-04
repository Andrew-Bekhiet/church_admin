import { PhoneDisplayFormat } from "./PhoneDisplayFormat";

export class PhoneColumns {
  static join<T extends { phone: string }>(
    contacts: T[],
    columnOf: (contact: T) => string,
  ): Record<string, string> {
    const columns: Record<string, string> = {};

    for (const contact of contacts) {
      const column = columnOf(contact);
      const phone = PhoneDisplayFormat.of(contact.phone);

      columns[column] =
        column in columns ? `${columns[column]} - ${phone}` : phone;
    }

    return columns;
  }
}
