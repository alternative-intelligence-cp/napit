# Napit — Nitpick API Tool

Napit is a powerful, cross-platform API client application designed to test and explore HTTP APIs.

It utilizes `nitpick-node` as a native bridge, offloading all core HTTP request handling, parsing, and execution to the native Nitpick backend (`nitpick-api`), while leveraging a modern web frontend for the UX via Electron.

## Features (Planned)
- CLI API Client for quick testing
- Electron GUI for advanced API exploration
- Environment variable support for secrets
- Request collections and code generation

## Architecture
Napit is built with:
- **Frontend:** Electron (HTML/CSS/JS)
- **Backend:** Node.js
- **Native Bridge:** `nitpick-node`
- **Core Library:** `nitpick-api` (written in Nitpick)

## Building
Documentation on building the project will be added once the foundational structure is established.

## License
AGPL v3
