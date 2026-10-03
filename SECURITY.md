# Security policy

## Reporting a vulnerability

Please do not open a public issue for a security problem. Report it privately through [GitHub's private vulnerability reporting](https://github.com/Andrew-Bekhiet/church_admin/security/advisories/new) and include:

- what an attacker can do, and which role or account they need to do it
- steps or a request that reproduces it
- the commit or release you tested against

You will get an acknowledgement once the report is triaged. Please give a fix time to ship before disclosing publicly.

## Supported versions

Only the latest release and the `master` branch receive security fixes.

## Scope

In scope: the code in this repository, including the Flutter client, Hasura metadata and migrations, and the Firebase functions and security rules.

Out of scope:

- Denial-of-service or load testing against any deployment
- Testing against a deployment you do not run yourself. Every church hosts its own data; set up your own instance from this repository instead.
- Findings that need a compromised device, a stolen admin secret, or an already-approved admin account acting within its permissions

## Deploying your own instance

- **Create your own account first.** The first Firebase account to sign up on a fresh project becomes an administrator with every permission. Sign up as soon as the functions are deployed, before you share the app.
- Keep `HASURA_GRAPHQL_ENABLE_CONSOLE=false` and `HASURA_GRAPHQL_ENABLED_APIS=graphql` in production, and use a long random `HASURA_GRAPHQL_ADMIN_SECRET`.
- Do not expose Postgres to the internet. Hasura and the functions are the only things that need to reach it.
- Restrict your Firebase API keys to your app's package name, bundle ID and web domain in the Google Cloud console, and set a billing budget alert.
