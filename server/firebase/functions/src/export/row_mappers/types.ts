export type IdAndName = {
  id: string;
  name: string;
};

export type Viewable = IdAndName & {
  color: number;
  lastEdit: AuditLogObject | null;
};

export type PersonType = IdAndName & {
  order: number | null;
};

export type StudyYear = IdAndName & {
  order: number | null;
};

export type Address = {
  id: string;
  apartmentNumber: number | null;
  houseCode: string | null;
  storeyNumber: number | null;
  substreetName: string | null;
  district: IdAndName | null;
  street: IdAndName | null;
  area: IdAndName | null;
  specialLandmark: string | null;
  geolocation: string | null;
};

export type AuditLogObject = {
  user: { name: string; uid: string } | null;
  time: string;
};
