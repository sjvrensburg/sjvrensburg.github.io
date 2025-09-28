# CRUSH.md

## Build / Lint / Test

| Command | Purpose |
|---------|---------|
| `npm run dev` | Start Hugo dev server with drafts & future content
| `npm run serve` | Same as dev but with navigateToChanged
| `npm run build` | Build production site (gc + minify)
| `npm run build:preview` | Build preview (drafts & future)
| `npm run clean` | Remove public & resources directories
| `npm run lint` | Run linting (currently a placeholder)
| `npm run check` | Hugo memory & path warnings check

### Run a single test
+ If tests are added (e.g., Jest), use `npm test -- <path>`.
+ Example: `npm test -- src/components/Button.test.js`.

## Code Style Guidelines

* **Imports** – place external imports first, then local modules. Sort alphabetically.
* **Formatting** – use Prettier (config in `.prettierrc`). Run `npx prettier --write .`.
* **Types** – if TypeScript is used, enable `strict` in `tsconfig.json`.
* **Naming** – use camelCase for variables/functions, PascalCase for components, constants in UPPER_SNAKE_CASE.
* **Error handling** – prefer `try/catch` with explicit error logging; do not swallow errors.
* **Testing** – write unit tests with Jest/React Testing Library; keep tests in `__tests__` or `*.test.js`.

## Cursor / Copilot Rules

No custom Cursor or Copilot rules are present in this repository.
