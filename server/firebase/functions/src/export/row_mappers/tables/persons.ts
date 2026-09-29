import { LocalizationRowMapper } from "../LocalizationRowMapper";
import { AddressRowMapper } from "../fragments/AddressRowMapper";
import { AuditLogRowMapper } from "../fragments/AuditLogRowMapper";
import { GenderRowMapper } from "../fragments/GenderRowMapper";
import { ListNamesAndIdsRowMapper } from "../fragments/ListNamesAndIdsRowMapper";
import { ObjectRefRowMapper } from "../fragments/ObjectRefRowMapper";
import { PersonTypeRowMapper } from "../fragments/PersonTypeRowMapper";
import { ContactsRowMapper } from "../fragments/ContactsRowMapper";
import { RawFieldRowMapper } from "../fragments/RawFieldRowMapper";
import { StudyYearRowMapper } from "../fragments/StudyYearRowMapper";
import { ViewableRowMapper } from "../fragments/ViewableRowMapper";
import { MultiRowMapper, RowMapper } from "../row_mapper";
import { IdAndName } from "../types";

export class PersonRowMapper implements RowMapper {
  private readonly mapper: RowMapper;

  constructor() {
    this.mapper = new LocalizationRowMapper(
      new MultiRowMapper([
        new ViewableRowMapper(),
        new ContactsRowMapper(),
        new AddressRowMapper(),
        new RawFieldRowMapper("birthdate"),
        new RawFieldRowMapper("birthday"),
        new ListNamesAndIdsRowMapper<{ service: IdAndName }>(
          "services",
          (s) => s.service,
        ),
        new ListNamesAndIdsRowMapper<{ class: IdAndName }>(
          "classes",
          (c) => c.class,
        ),
        new ListNamesAndIdsRowMapper<{ group: IdAndName }>(
          "groups",
          (g) => g.group,
        ),
        new RawFieldRowMapper("workStatus"),
        new RawFieldRowMapper("isStudent"),
        new StudyYearRowMapper(),
        new ObjectRefRowMapper("college"),
        new ObjectRefRowMapper("school"),
        new ObjectRefRowMapper("qualification"),
        new ObjectRefRowMapper("job"),
        new RawFieldRowMapper("jobDescription"),
        new GenderRowMapper(),
        new RawFieldRowMapper("martialStatus"),
        new PersonTypeRowMapper(),
        new ObjectRefRowMapper("church"),
        new ObjectRefRowMapper("confessionFather"),
        new RawFieldRowMapper("isServant"),
        new ObjectRefRowMapper("servingChurch"),
        new RawFieldRowMapper("isShammas"),
        new ObjectRefRowMapper("shammasLevel"),
        new ObjectRefRowMapper("state"),
        new ListNamesAndIdsRowMapper<{ hobby: IdAndName }>(
          "hobbies",
          (h) => h.hobby,
        ),
        new ListNamesAndIdsRowMapper<{ tag: IdAndName }>("tags", (t) => t.tag),
        new RawFieldRowMapper("notes"),
        new ObjectRefRowMapper("family"),
        new ObjectRefRowMapper("store"),
        new AuditLogRowMapper("lastKodas"),
        new AuditLogRowMapper("lastConfession"),
        new AuditLogRowMapper("lastVisit"),
        new AuditLogRowMapper("lastCall"),
        new AuditLogRowMapper("lastEdit"),
        new RawFieldRowMapper("uid"),
        new ObjectRefRowMapper("user"),
      ]),
    );
  }

  map(row: Record<string, unknown>): Record<string, unknown> {
    return this.mapper.map(row);
  }
}
