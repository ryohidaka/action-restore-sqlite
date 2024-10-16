# Restore SQLite

[![GitHub Release](https://img.shields.io/github/v/release/ryohidaka/action-restore-sqlite)](https://github.com/ryohidaka/action-restore-sqlite/releases/)
[![Test Action](https://github.com/ryohidaka/action-restore-sqlite/actions/workflows/test.yml/badge.svg)](https://github.com/ryohidaka/action-restore-sqlite/actions/workflows/test.yml)

GitHub Actions to restore SQLite DB from dump file.

## Usage

```yml
on: [push]

jobs:
  restore:
    runs-on: ubuntu-latest
    steps:
      - uses: ryohidaka/action-restore-sqlite@v0.1.0
        with:
          version: "3.43.2"
          db: "sample.db"
          dump-file: "sample.sql"
```

## Inputs

| Input       | Description                           | Required | Default    |
| ----------- | ------------------------------------- | -------- | ---------- |
| `version`   | SQLite version to install             |          | `"latest"` |
| `db`        | The output SQLite database file name. | ✅       |            |
| `dump-file` | The name of the dump file to use.     | ✅       |            |
