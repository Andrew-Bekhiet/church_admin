import { findPersonIdsByEmployeeCodes } from "../data/find_person_ids_by_employee_codes";
import { FingerprintPunch } from "../domain/fingerprint_punches_request";
import { PersonPresence } from "../domain/presence";

export async function presencesOfLinkedPunches(
  punches: FingerprintPunch[],
): Promise<PersonPresence[]> {
  if (punches.length === 0) return [];

  const personIdsByFingerprintId = await findPersonIdsByEmployeeCodes([
    ...new Set(punches.map((punch) => punch.fingerprintId)),
  ]);

  return punches.flatMap((punch) => {
    const personId = personIdsByFingerprintId.get(punch.fingerprintId);

    if (personId === undefined) {
      console.warn(
        "Skipped a punch with an unlinked fingerprint ID",
        punch.fingerprintId,
        punch.terminalSerial,
      );

      return [];
    }

    return [{ personId, at: punch.punchedAt }];
  });
}
