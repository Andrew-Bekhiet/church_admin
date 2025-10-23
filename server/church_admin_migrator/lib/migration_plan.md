* Migrate and merge independent data first then dependent data:
  * Migrate and Merge Metadata: Churches, Colleges, Fathers, StudyYears ...
  * Migrate Areas
  * Migrate and Merge Streets
  * Migrate and Merge Families then Families-Families relationships
  * Migrate and Merge Stores with their admin families relationships
  * Migrate and Merge Persons from ChurchData
  * Migrate and Merge Persons from MeetingHelper by merging into existing families or creating new families
  * Migrate and Merge Addresses from Families and Stores
* Use objects not object ids when migrating relationships
* This makes sure that referenced data is not going to change after finishing its migration stage
  * for example, migrating and merging families -> persons ensures that families are not going to be merged or changed later
* After migrating all data in memory, create a backup of the result data to a file
* Then start migrating all objects' ids in the same order to uuids based on original ids
  * so that same input id -> same output id
* Export final data to csv to be imported using psql or dbeaver
* Merging persons
  * When merging into a family, merge into the person with same phone number
  * Prefer the longest name
  * Combine & trim addresses
  * Combine notes
  * Prefer student over unemployed
  * Prefer older birthdate
  * Prefer single over married status if age is less than 21 yo
  * Prefer confession father from meetinghelper over churchdata
* TODO: Add index of current person out of total
* TODO: visit and edit history
