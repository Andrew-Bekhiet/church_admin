import { findPersonIdsByEmployeeCodes } from "../data/find_person_ids_by_employee_codes";
import { FingerprintPunch } from "../domain/fingerprint_punches_request";
import { PersonPresence } from "../domain/presence";

export async function presencesOfLinkedPunches(
  punches: FingerprintPunch[],
): Promise<PersonPresence[]> {
  if (punches.length === 0) return [];

  const personIdsByEmployeeCode = await findPersonIdsByEmployeeCodes([
    ...new Set(punches.map((punch) => punch.employeeCode)),
  ]);

  return punches.flatMap((punch) => {
    const personId = personIdsByEmployeeCode.get(punch.employeeCode);

    if (personId === undefined) {
      console.warn(
        "Skipped a punch with an unlinked employee code",
        punch.employeeCode,
        punch.terminalSerial,
      );

      return [];
    }

    return [{ personId, at: punch.punchedAt }];
  });
}
