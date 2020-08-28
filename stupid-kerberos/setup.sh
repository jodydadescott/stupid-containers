#!/bin/bash
# shellcheck disable=SC1090

# PORT="88"
PORT="4088"

source "$(dirname "$0")/common_functions" || { echo "Failed to $(dirname "$0")/common_functions" 1>&2; exit 2; }

function main() {
  run || { err "Failed"; return 3; }
}

function run() {
  err "Setting up config"
  cp /usr/share/krb5.example.conf /etc/krb5.conf || return 3
  /usr/sbin/kdb5_util create -s -P "stupidpass" || return 3
  err "Starting krb5kdc"
  /usr/sbin/krb5kdc -p "$PORT" || return 3
  echo "/usr/sbin/krb5kdc -p $PORT" > /krb5kdc
  createdefaultusers || return 3
  return 0
}

function createdefaultusers() {
  err "Creating default users"
  createuser bob || return 3
  createuser alice || return 3
  err "File /users.list created"
}

function createuser() {
  local pass
  pass=$(openssl rand -base64 9) || return 3
  echo "${1} $pass" >> /users.list
  err "Creating user $1 with password $pass"
  kadmin.local -q "addprinc -pw $pass $1"
}

function exit() { true; }

main "$@"
