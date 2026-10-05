export class NationalPhoneDisplayFormat {
  private static readonly egyptianNumber = /^\+20(\d{9,10})$/;

  static maybeFormat(e164: string): string {
    const national = NationalPhoneDisplayFormat.egyptianNumber.exec(e164)?.[1];

    return national ? `0${national}` : e164;
  }
}
