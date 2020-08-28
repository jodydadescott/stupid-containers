#!/bin/bash
# shellcheck disable=SC1090

source "$(dirname "$0")/common_functions" || { echo "Failed to $(dirname "$0")/common_functions" 1>&2; exit 2; }

function main() {
  err "Running"
  sleepfor 1
}

function loop() {
  err "Do Something"
}

function exit() {
  err "Goodbye"
}

main "$@"
