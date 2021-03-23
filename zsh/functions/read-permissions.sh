#!/bin/bash

function getFilePermissions() {
  local path="${1}"
  local permissions=$(stat -f %A "${path}")

  if [[ -z "$?" ]]; then
    echo "unable to identify permissions" && exit 256
  fi
  echo "${permissions}"
}

function printReadabilityFromOctalPermission() {
  local permission="${1}"
  if [[ $(( permission & 4 )) -eq 4 ]]; then
    if [[ -z "$?" ]]; then
      echo "unable to calculate readability" && exit 256
    fi
    echo "Readable"
  else
    echo "Unreadable"
  fi
}

function printEditabilityFromOctalPermission() {
  local permission="${1}"
  if [[ $(( permission & 2 )) -eq 2 ]]; then
    if [[ -z "$?" ]]; then
      echo "unable to calculate editability" && exit 256
    fi
    echo "Editable"
  else
    echo "Uneditable"
  fi
}

function printExecutabilityFromOctalPermission() {
  local permission="${1}"
  if [[ $(( permission & 1 )) -eq 1 ]]; then
    if [[ -z "$?" ]]; then
      echo "unable to calculate executability" && exit 256
    fi
    echo "Executable"
  else
    echo "Unexecutable"
  fi
}

path="${1}"
permissions=$(getFilePermissions "${path}")

for i in $(seq 1 ${#permissions})
do
  printReadabilityFromOctalPermission "${permissions:i-1:1}"
  if [[ -z "$?" ]]; then
    echo "an error occurred when deciphering the read permissions" && exit 256
  fi
  printEditabilityFromOctalPermission "${permissions:i-1:1}"
  if [[ -z "$?" ]]; then
    echo "an error occurred when deciphering the write permissions" && exit 256
  fi
  printExecutabilityFromOctalPermission "${permissions:i-1:1}"
  if [[ -z "$?" ]]; then
    echo "an error occurred when deciphering the execute permissions" && exit 256
  fi
done
exit 0
