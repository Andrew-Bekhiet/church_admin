# Agent guide — server/ash

The church_admin backend: Phoenix 1.8 (API only) + Ash 3, OTP app `:church_admin`, modules `ChurchAdmin` / `ChurchAdminWeb`. Names and comments follow the root [`AGENTS.md`](../../AGENTS.md) (a name tells the whole truth; aim for zero comments).

## How to work here

- **Ash first.** Model behaviour as resources, actions, changes, validations, calculations and policies. Reach for plain Ecto or raw SQL only when Ash has no feature for it.
- **Generators first.** Create and change code with `mix ash.gen.*`, `mix igniter.install` and `mix ash.codegen <name>` (which writes the Ecto migration and resource snapshot) before writing boilerplate by hand. Review every generated migration.
- **Tests first.** Write the ExUnit test against the real schema, watch it fail, then make it pass.
- **Schema.** `priv/repo/baseline/<hasura version>_<name>/up.sql` is the frozen Hasura-era schema; each folder is applied by its own Ecto migration in `priv/repo/migrations/` with the folder's version. Never edit the baseline. Every later schema change is a new Ecto migration.
- Before using an Ash package feature, read its skill in `.claude/skills/` or its usage rules below.

## Local database

`dev/db.sh up|down|reset|psql` runs Postgres (built from `server/postgres`) under the compose project `church-admin-ash-dev`: dev on `localhost:55432`, test on `localhost:55433`, both with database `church_admin`. `reset` recreates both: dev is built and seeded with `mix church_admin.setup`, test is only migrated with `MIX_ENV=test mix ecto.migrate`. `DB_HOST`, `DB_PORT`, `DB_USER`, `DB_PASSWORD`, `DB_NAME` (and `TEST_DB_PORT` for tests) override the defaults. A second checkout sets `ASH_DB_PROJECT`, `DB_PORT` and `TEST_DB_PORT` (e.g. `church-admin-ash-lane2`, 55442, 55443) to get its own servers.

**Never touch the `church-admin-local` compose project or its volumes** — it holds the user's own stack.

`mix church_admin.setup [--services | --scale small|medium]` migrates to the last baseline version, loads the reference seed (`priv/repo/seeds/`), with `--services` also the services seed, with `--scale` the services seed and the generated file, then migrates the rest (a database that already applied the last baseline version is only migrated, never reseeded); `dev/db.sh reset` runs it with `small` for dev only (`SEED_SCALE=medium` for more); the test database is built with `MIX_ENV=test mix ecto.migrate` and holds no seed data, so tests create the rows they need through `Factory`. `mix church_admin.seed.gen --scale small|medium` writes `priv/repo/seeds/generated/<scale>.sql` and `<scale>.auth_emulator.json` (deterministic; `small` is committed, `medium` is git-ignored and rebuilt on demand). The SQL targets the baseline schema, so the generator and its tests live in `dev/lib/` (compiled in dev and test only). Every seeded account signs in with the password in `ChurchAdmin.Dev.SeedGenerator.AuthEmulator.dev_password/0`; import `<scale>.auth_emulator.json` into the Auth emulator by POSTing it to `/identitytoolkit.googleapis.com/v1/projects/<project>/accounts:batchCreate`.

`dev/compare_baseline_schema.sh` proves the Ecto baseline produces the same schema as master's Hasura migrations.

## Local stack

`server/docker-compose.yml` is the whole backend: `postgres` (built from `server/postgres`, volume `pgdata_ash`), `ash` (built from `server/ash/Dockerfile`, running in dev env on `localhost:8080`, `/healthz`, `/gql`, `/socket`) and `firebase-emulators` (Auth 9099, Storage 9199, Database 9000, UI 4000; no functions emulator). There is no Hasura and no Cloud Functions. The client's `API_SERVER_URL` is `http://localhost:8080`.

```sh
cp server/example.env server/.env   # set POSTGRES_PASSWORD
docker compose -f server/docker-compose.yml --env-file server/.env up -d --build --wait
```

The `ash` container runs `mix church_admin.setup $ASH_SETUP_ARGS` and then `mix phx.server`. `setup` migrates and seeds only a database that has not applied the last baseline version yet, so restarts keep the data: `ASH_SETUP_ARGS=--services` (the default) loads the reference data and the sample services, `--scale small|medium` also the generated people (import `<scale>.auth_emulator.json` into the Auth emulator for their sign-ins). Change it only on a fresh volume (`docker compose down -v`).

The first administrator is the email named to `ChurchAdmin.Release.bootstrap_admin/1`; there is no first-sign-up rule. Sign up in the app (or the Auth emulator), then `docker compose -f server/docker-compose.yml --env-file server/.env exec ash mix church_admin.bootstrap_admin --email you@example.com`. It also works before sign-up: the later sign-up claims the seeded row.

The default project name is `church-admin-local`, the user's own stack; agents always pass `-p church-admin-ash-<lane>`. A stack from before the Ash backend keeps its Hasura-migrated volume `church-admin-local_pgdata`; the new stack starts a fresh `pgdata_ash`.

`server/scripts/e2e-backend.sh up|down|logs|compose` is the hermetic variant for the Patrol journeys (compose project `church-admin-e2e`, override with `E2E_COMPOSE_PROJECT`, Firebase project `demo-church-admin`): fresh database, admin `admin@e2e.test` signed up through the Auth emulator and bootstrapped, then checked through `/gql` with the admin's ID token. `client/patrol_test/support/e2e_backend.dart` talks to the same `/gql` as that admin.

## Write building blocks

Reuse these in write actions instead of re-deriving them; each moduledoc shows its options.

- `ChurchAdmin.History.Changes.RecordEdit`: writes the `history.edit_history` rows for creates, updates and soft deletes (`change {RecordEdit, table: "persons"}, on: [:create, :update, :destroy]`).
- `ChurchAdmin.Changes.StampActor`: sets an audit column such as `recorded_by` from the actor's uid (`change {StampActor, attribute: :recorded_by}, on: :create`).
- `ChurchAdmin.Validations.InvariantHolds`: checks an invariant against the written state inside the transaction and fails with a domain code (`change {InvariantHolds, code: Codes.validation_invalid(), violations: &M.f/1}`).
- `ChurchAdmin.Errors.Codes`: the client-facing error codes as functions (`Codes.user_email_taken()`); raise them through `ChurchAdmin.Errors.DomainError`.
- AshGraphql 1.x reports a generic action's error twice with `root_level_errors? true` (its resolver both puts the error on the resolution and appends it again in `add_root_errors`, the second copy with a `["input", field]` path); it is upstream behaviour with no setting or handler hook to avoid it, and clients read the first entry.
- `ChurchAdmin.Changes.AfterActionFailure.roll_back/2`: fail the `after_action` hook of any change that implements `atomic/3` with it, because Ash 3.36.1 commits a single atomic update whose hook returned an error. `AtomicAfterActionGuardTest` fails for a change in `lib/` that forgets it.
- `ChurchAdminWeb.FileToken` and `ChurchAdminWeb.FileController`: short-lived `/api/files/:token` URLs. A generic action issues `FileToken.issue(op, uid, params)` and returns `FileToken.download_url/2`; a new operation adds its window to `FileToken`'s `@max_age_seconds` and a `serve/2` clause to the controller, which re-checks the user's rights when the file is fetched (`ChurchAdmin.Exports.IssueDownloadLink` and the `:export` clause are the example).

## Verification

Run `mix precommit` (retired-dependency audit, compile with warnings as errors, unused-lock check, format, credo, tests) and keep it clean before reporting work done.

<!-- usage-rules-start -->
<!-- usage_rules-start -->
## usage_rules usage
_A config-driven dev tool for Elixir projects to manage AGENTS.md files and agent skills from dependencies_

## Using Usage Rules

Many packages have usage rules, which you should *thoroughly* consult before taking any
action. These usage rules contain guidelines and rules *directly from the package authors*.
They are your best source of knowledge for making decisions.

## Modules & functions in the current app and dependencies

When looking for docs for modules & functions that are dependencies of the current project,
or for Elixir itself, use `mix usage_rules.docs`

```
# Search a whole module
mix usage_rules.docs Enum

# Search a specific function
mix usage_rules.docs Enum.zip

# Search a specific function & arity
mix usage_rules.docs Enum.zip/1
```


## Searching Documentation

You should also consult the documentation of any tools you are using, early and often. The best 
way to accomplish this is to use the `usage_rules.search_docs` mix task. Once you have
found what you are looking for, use the links in the search results to get more detail. For example:

```
# Search docs for all packages in the current application, including Elixir
mix usage_rules.search_docs Enum.zip

# Search docs for specific packages
mix usage_rules.search_docs Req.get -p req

# Search docs for multi-word queries
mix usage_rules.search_docs "making requests" -p req

# Search only in titles (useful for finding specific functions/modules)
mix usage_rules.search_docs "Enum.zip" --query-by title
```


<!-- usage_rules-end -->
<!-- usage_rules:elixir-start -->
## usage_rules:elixir usage
# Elixir Core Usage Rules

## Pattern Matching
- Use pattern matching over conditional logic when possible
- Prefer to match on function heads instead of using `if`/`else` or `case` in function bodies
- `%{}` matches ANY map, not just empty maps. Use `map_size(map) == 0` guard to check for truly empty maps

## Error Handling
- Use `{:ok, result}` and `{:error, reason}` tuples for operations that can fail
- Avoid raising exceptions for control flow
- Use `with` for chaining operations that return `{:ok, _}` or `{:error, _}`

## Common Mistakes to Avoid
- Elixir has no `return` statement, nor early returns. The last expression in a block is always returned.
- Don't use `Enum` functions on large collections when `Stream` is more appropriate
- Avoid nested `case` statements - refactor to a single `case`, `with` or separate functions
- Don't use `String.to_atom/1` on user input (memory leak risk)
- Lists and enumerables cannot be indexed with brackets. Use pattern matching or `Enum` functions
- Prefer `Enum` functions like `Enum.reduce` over recursion
- When recursion is necessary, prefer to use pattern matching in function heads for base case detection
- Using the process dictionary is typically a sign of unidiomatic code
- Only use macros if explicitly requested
- There are many useful standard library functions, prefer to use them where possible

## Function Design
- Use guard clauses: `when is_binary(name) and byte_size(name) > 0`
- Prefer multiple function clauses over complex conditional logic
- Name functions descriptively: `calculate_total_price/2` not `calc/2`
- Predicate function names should not start with `is` and should end in a question mark.
- Names like `is_thing` should be reserved for guards

## Data Structures
- Use structs over maps when the shape is known: `defstruct [:name, :age]`
- Prefer keyword lists for options: `[timeout: 5000, retries: 3]`
- Use maps for dynamic key-value data
- Prefer to prepend to lists `[new | list]` not `list ++ [new]`

## Mix Tasks

- Use `mix help` to list available mix tasks
- Use `mix help task_name` to get docs for an individual task
- Read the docs and options fully before using tasks

## Testing
- Run tests in a specific file with `mix test test/my_test.exs` and a specific test with the line number `mix test path/to/test.exs:123`
- Limit the number of failed tests with `mix test --max-failures n`
- Use `@tag` to tag specific tests, and `mix test --only tag` to run only those tests
- Use `assert_raise` for testing expected exceptions: `assert_raise ArgumentError, fn -> invalid_function() end`
- Use `mix help test` to for full documentation on running tests

## Debugging

- Use `dbg/1` to print values while debugging. This will display the formatted value and other relevant information in the console.

<!-- usage_rules:elixir-end -->
<!-- usage_rules:otp-start -->
## usage_rules:otp usage
# OTP Usage Rules

## GenServer Best Practices
- Keep state simple and serializable
- Handle all expected messages explicitly
- Use `handle_continue/2` for post-init work
- Implement proper cleanup in `terminate/2` when necessary

## Process Communication
- Use `GenServer.call/3` for synchronous requests expecting replies
- Use `GenServer.cast/2` for fire-and-forget messages.
- When in doubt, use `call` over `cast`, to ensure back-pressure
- Set appropriate timeouts for `call/3` operations

## Fault Tolerance
- Set up processes such that they can handle crashing and being restarted by supervisors
- Use `:max_restarts` and `:max_seconds` to prevent restart loops

## Task and Async
- Use `Task.Supervisor` for better fault tolerance
- Handle task failures with `Task.yield/2` or `Task.shutdown/2`
- Set appropriate task timeouts
- Use `Task.async_stream/3` for concurrent enumeration with back-pressure

<!-- usage_rules:otp-end -->
<!-- ash-start -->
## ash usage
_A declarative, extensible framework for building Elixir applications._

# Rules for working with Ash

## Understanding Ash

Ash is an opinionated, composable framework for building applications in Elixir. It provides a declarative approach to modeling your domain with resources at the center. Read documentation  *before* attempting to use its features. Do not assume that you have prior knowledge of the framework or its conventions.


<!-- ash-end -->
<!-- ash_graphql-start -->
## ash_graphql usage
_The extension for building GraphQL APIs with Ash_

# Rules for working with AshGraphql

## Understanding AshGraphql

AshGraphql is a package for integrating Ash Framework with GraphQL. It provides tools for generating GraphQL types, queries, mutations, and subscriptions from your Ash resources. AshGraphql leverages Absinthe under the hood to create a seamless integration between your Ash resources and GraphQL API.

<!-- ash_graphql-end -->
<!-- ash_oban-start -->
## ash_oban usage
_The extension for integrating Ash resources with Oban._

# Rules for working with AshOban

## Understanding AshOban

AshOban is a package that integrates the Ash Framework with Oban, a robust job processing system for Elixir. It enables you to define triggers that can execute background jobs based on specific conditions in your Ash resources, as well as schedule periodic actions. AshOban is particularly useful for handling asynchronous tasks, background processing, and scheduled operations in your Ash application.

<!-- ash_oban-end -->
<!-- ash_postgres-start -->
## ash_postgres usage
_The PostgreSQL data layer for Ash Framework_

# Rules for working with AshPostgres

## Understanding AshPostgres

AshPostgres is the PostgreSQL data layer for Ash Framework. It's the most fully-featured Ash data layer and should be your default choice unless you have specific requirements for another data layer. Any PostgreSQL version higher than 13 is fully supported.

Remember that using AshPostgres provides a full-featured PostgreSQL data layer for your Ash application, giving you both the structure and declarative approach of Ash along with the power and flexibility of PostgreSQL.

<!-- ash_postgres-end -->
<!-- igniter-start -->
## igniter usage
_A code generation and project patching framework_

# Rules for working with Igniter

## Understanding Igniter

Igniter is a code generation and project patching framework that enables semantic manipulation of Elixir codebases. It provides tools for creating intelligent generators that can both create new files and modify existing ones safely. Igniter works with AST (Abstract Syntax Trees) through Sourceror.Zipper to make precise, context-aware changes to your code.

## Available Modules

### Project-Level Modules (`Igniter.Project.*`)

- **`Igniter.Project.Application`** - Working with Application modules and application configuration
- **`Igniter.Project.Config`** - Modifying Elixir config files (config.exs, runtime.exs, etc.)
- **`Igniter.Project.Deps`** - Managing dependencies declared in mix.exs
- **`Igniter.Project.Formatter`** - Interacting with .formatter.exs files
- **`Igniter.Project.IgniterConfig`** - Managing .igniter.exs configuration files
- **`Igniter.Project.MixProject`** - Updating project configuration in mix.exs
- **`Igniter.Project.Module`** - Creating and managing modules with proper file placement
- **`Igniter.Project.TaskAliases`** - Managing task aliases in mix.exs
- **`Igniter.Project.Test`** - Working with test and test support files

### Code-Level Modules (`Igniter.Code.*`)

- **`Igniter.Code.Common`** - General purpose utilities for working with Sourceror.Zipper
- **`Igniter.Code.Function`** - Working with function definitions and calls
- **`Igniter.Code.Keyword`** - Manipulating keyword lists
- **`Igniter.Code.List`** - Working with lists in AST
- **`Igniter.Code.Map`** - Manipulating maps
- **`Igniter.Code.Module`** - Working with module definitions and usage
- **`Igniter.Code.String`** - Utilities for string literals
- **`Igniter.Code.Tuple`** - Working with tuples

<!-- igniter-end -->
<!-- phoenix:phoenix-start -->
## phoenix:phoenix usage
## Phoenix guidelines

- Remember Phoenix router `scope` blocks include an optional alias which is prefixed for all routes within the scope. **Always** be mindful of this when creating routes within a scope to avoid duplicate module prefixes.

- You **never** need to create your own `alias` for route definitions! The `scope` provides the alias, ie:

      scope "/admin", AppWeb.Admin do
        pipe_through :browser

        live "/users", UserLive, :index
      end

  the UserLive route would point to the `AppWeb.Admin.UserLive` module

- `Phoenix.View` no longer is needed or included with Phoenix, don't use it

<!-- phoenix:phoenix-end -->
<!-- phoenix:ecto-start -->
## phoenix:ecto usage
## Ecto Guidelines

- **Always** preload Ecto associations in queries when they'll be accessed in templates, ie a message that needs to reference the `message.user.email`
- Remember `import Ecto.Query` and other supporting modules when you write `seeds.exs`
- `Ecto.Schema` fields always use the `:string` type, even for `:text`, columns, ie: `field :name, :string`
- `Ecto.Changeset.validate_number/2` **DOES NOT SUPPORT the `:allow_nil` option**. By default, Ecto validations only run if a change for the given field exists and the change value is not nil, so such as option is never needed
- You **must** use `Ecto.Changeset.get_field(changeset, :field)` to access changeset fields
- Fields which are set programmatically, such as `user_id`, must not be listed in `cast` calls or similar for security purposes. Instead they must be explicitly set when creating the struct
- **Always** invoke `mix ecto.gen.migration migration_name_using_underscores` when generating migration files, so the correct timestamp and conventions are applied

<!-- phoenix:ecto-end -->
<!-- usage-rules-end -->
