import { RowMapper } from "../row_mapper";
import { type Address } from "../types";

export class AddressRowMapper implements RowMapper {
  map(row: Record<string, unknown>): Record<string, unknown> {
    const { address } = row as { address: Address };

    const geolocationCoords =
      address?.geolocation && typeof address?.geolocation === "object"
        ? (address?.geolocation as { coordinates: number[] })?.coordinates
        : null;

    return {
      "address.area.name": address?.area?.name ?? "",
      "address.area.id": address?.area?.id ?? "",
      "address.houseNumber": address?.houseNumber,
      "address.street.name": address?.street?.name ?? "",
      "address.street.id": address?.street?.id ?? "",
      "address.substreetName": address?.substreetName,
      "address.district.name": address?.district?.name ?? "",
      "address.district.id": address?.district?.id ?? "",
      "address.specialLandmark": address?.specialLandmark ?? "",
      "address.storeyNumber": address?.storeyNumber,
      "address.apartmentNumber": address?.apartmentNumber,
      "address.geolocation": geolocationCoords
        ? `${geolocationCoords[1]},${geolocationCoords[0]}`
        : null,
    };
  }
}
