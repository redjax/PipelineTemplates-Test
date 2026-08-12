#!/usr/bin/env bash

###############################################################
# Make sure to save this file with formatting disabled.       #
#                                                             #
# The script is intentionally mis-formatted to test shellfmt. #
###############################################################

set -euo pipefail

function main() {
if true; then
echo "This file should cause shellfmt to produce a diff."
fi
}

main "$@"