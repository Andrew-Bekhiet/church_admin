# Church Admin

Servants of a church use this app to keep records of the families and people they serve. It covers their addresses, their attendance at meetings and communion, and the permissions that decide who sees and edits what.

## Language

### People and accounts

**Servant**:
A church worker who uses the app. The UI says servant. Technical writing calls the same concept a user or an account.
_Avoid_: user or account in UI copy

**Automated account**:
A user that is not a person, such as the fingerprint bot. It cannot sign in and cannot be edited.
_Avoid_: Bot (except for a specific automated account), non-human user

**Fingerprint bot**:
The automated account that records the attendance and communion that fingerprint auto attendance produces.

### Access

**Permission**:
A named ability granted to a servant, either app-wide or for a single action.

**Scope**:
The families and groups a servant administers. The servant's permissions apply within it.
_Also_: admin-on (the same concept)

**Super admin**:
A servant who holds read-all, write-all or manage-servants. It is derived from those permissions and never granted directly.

**Access**:
Everything that decides which records the server shows a servant: who they are, their permissions and their scope.

**Data check**:
An automatic verdict on whether a family's record is complete.

**Data check override**:
A servant's manual replacement of a data check's verdict.
_Avoid_: change, choice

### Places

**Address**:
Where a family, person or store is found: a street, a house code and optionally a location.

**Family address**:
The one address shared by every member of a family. Editing it from any member changes it for the whole family.

**Area**:
A named neighbourhood the church serves. A street can belong to several areas.
_Avoid_: Service area, region

**Street**:
A named street that belongs to one or more areas.

**House code**:
The label of a building within its street. It is numeric and may carry a letter suffix.
_Avoid_: House number

**Location**:
The geographic coordinates of an address. It is distinct from the address itself.

**Location link**:
A pasted maps URL, short link, geo URI or plus code that resolves to a location.

### Attendance and communion

**Communion**:
A person taking communion, recorded with when it happened.
_Avoid_: Kodas (legacy name, to be migrated)

**Fingerprint auto attendance**:
Recording attendance and communion automatically from fingerprint punches, with no servant taking the attendance.
_Avoid_: auto presence

**Fingerprint server**:
The church's BioTime server. It collects punches from the fingerprint devices.

**Fingerprint ID**:
The number that identifies a person on the fingerprint devices. The fingerprint server calls it the employee code.
_Avoid_: employee code (outside the code that talks to the fingerprint server), fingerprint number

**Punch**:
One fingerprint scan by one person, at one instant, on one fingerprint device.

**Fingerprint attendance sync**:
One delivery of new punches from the fingerprint server to the app.
_Avoid_: auto fingerprint attendance sync (for a single delivery)

**Auto attendance window**:
The weekly period of a meeting in which a punch counts as attending it.

**Auto communion window**:
The weekly period in which a punch counts as taking communion.
