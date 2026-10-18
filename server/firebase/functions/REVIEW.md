# Review guide: Cloud Functions

These rules add to the root `REVIEW.md`. The conventions themselves live in `server/firebase/functions/AGENTS.md`. Functions deploy on merge, and most of them call Hasura with the admin secret. The worst bugs found in #1–#149 were here: an account takeover through invite claims (#111, #124) and linking a person outside the caller's scope (#139).

## Admin-secret calls

- Before a mutation that uses the admin secret, the function authorizes the caller for every ID the caller passed in, not only for the scopes the caller named.
- An export or query run as admin applies the caller's full scope itself, including service gender and study-year limits.

## Hasura responses

Hasura reports a GraphQL error as HTTP 200 with an `errors` key. A lookup must go through `dataOrThrow` (`hasura_interface.ts`), so that a failed query is never read as "no row" and never falls through to an insert or a claim. A function that returns partial `data` together with `errors` fails rather than continuing with incomplete results.

## Account identity

Trace each change to sign-up, sign-in, invite claims, and account deletion through the whole lifecycle:

- A seeded row is claimed only when its `auth_id` is null.
- A row whose account was deleted cannot be claimed by a new sign-up for the same email.
- Re-registering after deletion works.
- Email is compared in one canonical form.
- A claim that fails partway leaves the row claimable again.
- The `uid` survives every one of these paths (see `server/hasura/AGENTS.md`).

## Errors

Distinct failures keep distinct `HttpsError` codes the client can localise. Do not flatten them into `unknown` with an empty message.

## Values the client reads

A value written for the client keeps the client's type. For example, a sender ID must be a UUID even when the sender is the system.
