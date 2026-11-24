export type PushTargetKind = "registration_token" | "installation_id";

export interface PushTarget {
  kind: PushTargetKind;
  token: string;
}
