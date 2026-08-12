#!/usr/bin/env bash
set -euo pipefail

function main() {
  value="Hello from ShellCheck"

  echo $value
}

main "$@"
