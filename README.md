# action-rebuild-sqlite

[![GitHub Release](https://img.shields.io/github/v/release/ryohidaka/action-rebuild-sqlite)](https://github.com/ryohidaka/action-rebuild-sqlite/releases/)
[![Test Action](https://github.com/ryohidaka/action-rebuild-sqlite/actions/workflows/test.yml/badge.svg)](https://github.com/ryohidaka/action-rebuild-sqlite/actions/workflows/test.yml)

GitHub Actions to rebuild SQLite DB from dump file.

## Usage

```yml
on: [push]

permissions:
  contents: write

jobs:
  bump-uses:
    runs-on: ubuntu-latest
    steps:
      - uses: ryohidaka/action-rebuild-sqlite@v1
        with:
          who-to-greet: "Mona the Octocat"

      - run: echo random-number "$RANDOM_NUMBER"
        shell: bash
        env:
          RANDOM_NUMBER: ${{ steps.foo.outputs.random-number }}
```

## Inputs

| Input          | Description  | Required | Default |
| -------------- | ------------ | -------- | ------- |
| `who-to-greet` | Who to greet | ✅       | `World` |

## Outputs

| Output          | Description   | Example |
| --------------- | ------------- | ------- |
| `random-number` | Random number | `9999`  |
