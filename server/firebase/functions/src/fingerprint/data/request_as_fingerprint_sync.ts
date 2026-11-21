import { dataOrThrow, makeGraphqlRequest } from "../../hasura_interface";

const FINGERPRINT_SYNC_ROLE = "fingerprint_sync";

export async function requestAsFingerprintSync(
  query: string,
  variables: object,
  operationName: string,
) {
  return dataOrThrow(
    await makeGraphqlRequest({
      query,
      variables,
      operationName,
      asRole: FINGERPRINT_SYNC_ROLE,
    }),
  );
}
