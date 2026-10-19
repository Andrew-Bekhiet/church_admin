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

In scope: the code in this repository, including the Flutter client, the Ash backend (migrations and policies), and the Firebase security rules.

Out of scope:

- Denial-of-service or load testing against any deployment
- Testing against a deployment you do not run yourself. Every church hosts its own data; set up your own instance from this repository instead.
- Findings that need a compromised device, a stolen admin secret, or an already-approved admin account acting within its permissions

## Deploying your own instance

- **Name your first administrator.** Signing up first grants nothing. Run `bin/church_admin eval 'ChurchAdmin.Release.bootstrap_admin("you@example.com")'` once, then sign up with that email; the account claims the seeded administrator row.
- Leave `AUTH_MODE` unset in production: unsigned emulator tokens are accepted only in dev and test, and the app refuses to boot otherwise.
- Do not expose Postgres to the internet. The Ash backend is the only thing that needs to reach it.
- Restrict your Firebase API keys to your app's package name, bundle ID and web domain in the Google Cloud console, and set a billing budget alert.
