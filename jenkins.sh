#!/usr/bin/env bash
set -e
status=0

verify () {
  var="$1"

  # Check to see if environ variable 'var' is set
  if [[ -z "${!var}" ]]; then
    echo "$var has not been set in the environment!"
    status=1
  fi
}

verify API_KEY
verify PRIVATE_KEY
verify DATABASE_PASSWORD

exit $status
