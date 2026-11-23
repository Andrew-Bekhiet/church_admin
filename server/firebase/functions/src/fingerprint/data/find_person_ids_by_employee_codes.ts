import { requestAsFingerprintSync } from "./request_as_fingerprint_sync";

export async function findPersonIdsByEmployeeCodes(
  employeeCodes: string[],
): Promise<Map<string, string>> {
  const data = await requestAsFingerprintSync(
    `
      query findPersonIdsByEmployeeCodes($employeeCodes: [String!]!) {
        personsFingerprintIds(where: { employeeCode: { _in: $employeeCodes } }) {
          employeeCode
          personId
        }
      }
    `,
    { employeeCodes },
    "findPersonIdsByEmployeeCodes",
  );
  const links: { employeeCode: string; personId: string }[] =
    data["personsFingerprintIds"];

  return new Map(links.map((link) => [link.employeeCode, link.personId]));
}
