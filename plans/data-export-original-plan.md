# Export data to Excel sheets

1. Use snippets from previous project MeetingHelper
2. Make sure that each column has enough space to fit all data in it (using DBF and wch)
3. All column headers should be in Arabic and the sheet should be right to left
4. Optional: data should be imporable back to the original database, but ids don't need to be visible to the user in the excel sheet, we could add a SHA1 sum of each row to determine changed, removed and added records
5. Export operation should run on the backend
6. User should be able to export only the data they have permission to (view && export to excel) || export all data if they have export all data permission
7. The workbook should contain the following sheets in order:
   1. Persons
   2. Families
   3. Stores
   4. Streets
   5. Areas
   6. Classes
   7. Services
   8. Groups
8. If any sheet is has no data, it should be skipped
9. The user should be able to select which data to export:
   1. Specific areas with:
      - subdata: streets, families, stores, persons
      - related persons data (user can turn on/off): classes, services, groups
   2. Specific services with:
      - subdata: classes, groups, persons
      - related persons data (user can turn on/off): families, stores, streets, areas
   3. Specific classes with:
      - subdata: persons
      - related persons data (user can turn on/off): families, stores, streets, areas
   4. Specific groups with:
      - subdata: persons
      - related persons data (user can turn on/off): families, stores, streets, areas

## Backend function pseudocode

1. Check that the user has access to given ids (areas, services, classes, groups) using hasura admin secret, hasura user id and role to impersonate the user
2. If returned data length is different from the length of the ids, return 404 error
3. execute the exportData query with the given ids
4. Show textual data:
   - primitive types as is
   - lists of primitive types as comma separated strings
   - dates as ISO 8601 strings without time part
   - datetimes as ISO 8601 strings with time part
   - address fields will be spread over multiple columns
   - geolocation will be formatted as lat,lng
   - linestring and polygon will be formatted as list of lat,lng pairs in format (lat,lng),(lat,lng),(lat,lng)
   - birthday to be formatted as MM-DD
   - birthdate same as dates (ISO 8601 strings without time part)
   - gender to be formatted as ذكر or أنثى
   - booleans to be formatted as نعم or لا
   - color to be formatted as #RRGGBB (note that alpha channel will be discarded) and the cell color will be set to the color unless it's white, black, transparent or null
   - list of objects will be formatted as comma separated strings of their names
   - objects will be formatted as their name, with their id in another
   - person type to be splite to 2 columns: name and order
   - study year to be splite to 2 columns: name and order
   - familyAdminsPhones (json) to be spread over multiple columns with key as column header and value as value

## Time estimate

- Backend function: 1.5-2.5-4 hours
- Database tables (adjust export permissions, add export operations table and a cron job to remove old export operations): 2-3-5 hours
- CI/CD pipeline: 0.5-1-3 hours
- Frontend UI: 2.5-4-6 hours
- Total: 6.5-10.5-18 hours
- Weighted average: 11 hours
  On 4 hours per week, it will take 2.75 weeks
