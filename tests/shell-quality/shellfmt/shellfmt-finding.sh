#!/usr/bin/env bash

###############################################################
# Make sure to save this file with formatting disabled.       #
#                                                             #
# The script is intentionally mis-formatted to test shellfmt. #
###############################################################


function main() {
if true;then
printf '%s\n' "This fixture must produce a shellfmt diff."
fi
}


main "$@"