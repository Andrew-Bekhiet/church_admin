export class PhoneDisplayFormat {
  private static readonly egyptianNumber = /^\+20(\d{9,10})$/;

  static of(e164: string): string {
    const national = PhoneDisplayFormat.egyptianNumber.exec(e164)?.[1];

    return national ? `0${national}` : e164;
  }
}
