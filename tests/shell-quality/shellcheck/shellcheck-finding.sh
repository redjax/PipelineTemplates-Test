#!/usr/bin/env bash
set -euo pipefail

function main() {
  source_file="source file"
  destination_file="destination file"

  # Intentionally unquoted expansions for the ShellCheck test fixture.
  cp $source_file $destination_file
}

main "$@"
