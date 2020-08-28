#!/bin/bash
# shellcheck disable=SC1090

source "$(dirname "$0")/common_functions" || { echo "Failed to $(dirname "$0")/common_functions" 1>&2; exit 2; }

function main() {
  err "Running"
  exec /usr/sbin/stupid-http
}

function exit() {
  err "Goodbye"
}

main "$@"
