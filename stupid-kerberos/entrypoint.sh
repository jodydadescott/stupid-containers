#!/bin/bash
# shellcheck disable=SC1090

source "$(dirname "$0")/common_functions" || { echo "Failed to $(dirname "$0")/common_functions" 1>&2; exit 2; }

function main() {
  err "Running"
  [ -f /krb5kdc ] && { bash /krb5kdc || return 3; }
  sleepfor 0
  return 0
}

function exit() {
  err "Goodbye"
}

main "$@"
