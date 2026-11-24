# Domain docs

## Before exploring, read these

- **`CONTEXT.md`** at the repo root: the domain glossary.
- **Decision records in Linear**: architecture decisions and design docs are Linear documents attached to the ENG issue that made them. Search Linear's documents for the topic.
- **`docs/technical-decisions/`**: in-repo write-ups of how a subsystem works, such as `study-year-roll.md`. Read the one that covers the area you're working in.

## Where new material goes

- A new or sharpened domain term goes in `CONTEXT.md`. Keep it a glossary: one or two sentences per term, no implementation details.
- A new decision goes on its Linear issue as a document. Don't create `docs/adr/`.

## Use the glossary's vocabulary

When your output names a domain concept (an issue title, a refactor proposal, a hypothesis, a test name), use the term as `CONTEXT.md` defines it. Don't drift to the synonyms it lists under _Avoid_. Domain terms stay in English even though UI strings are Arabic.

If the concept you need isn't in the glossary, either you're inventing language the project doesn't use (reconsider), or there's a real gap (add the term).

## Flag decision conflicts

If your output contradicts an existing decision document, say so explicitly instead of silently overriding it.
