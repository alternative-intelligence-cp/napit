# Napit (Nitpick API Tool)

Napit is an offline-first, Git-native API client built entirely in the [Nitpick](https://github.com/alternative-intelligence-cp/nitpick) programming language.

Inspired by tools like Voiden and HTTPie, Napit treats API tooling as plain text files rather than platform-locked collections in the cloud. By defining your API requests in simple, version-controllable files (like Markdown or custom plain-text formats), you can keep your API specs, tests, and documentation perfectly synchronized with your codebase using Git.

## Philosophy
* **Offline-First**: No required logins, telemetry, or cloud synchronization.
* **Git-Native**: Requests live alongside your code. PR your API tests just like you PR your application logic.
* **CLI-Driven**: Designed for fast, terminal-based workflows and CI/CD integration.

## Ecosystem
Napit is built on top of `nitpick-api`, a robust HTTP client library for the Nitpick language ecosystem.

*(Note: Napit is currently under active development. Usage instructions and build steps will be provided once the v0.1 release is published.)*
