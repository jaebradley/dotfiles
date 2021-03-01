#!/bin/bash

function convert_to_signed_integer {
  if [ "$#" -ne 2 ]; then
    echo "expected bits and integer bit length as arguments"
    exit 255
  fi

  local bits="${1}"
  local bits_in_integer="${2}"

  local bits_as_decimal="$((2#${bits}))"
  if [ "$?" -ne 0 ]; then
    echo "could not convert binary to decimal"
    exit 255
  fi

  local max_integer=$((2**${bits_in_integer}))
  if [ "$?" -ne 0 ]; then
    echo "could not calculate max integer for specified bit length"
    exit 255
  fi

  if [ "${bits_as_decimal}" -le "${max_integer}" ]; then
    echo "${bits_as_decimal}"
  else
    echo "$(bits_as_decimal - max_integer)"
  fi

  exit 0
}

function convert_hex_to_integers_in_binary {
  if [ "$#" -ne 2 ]; then
    echo "expected hex value and integer bit length as arguments"
    exit 255
  fi

  local hex_value="${1}"
  local bits_in_integer="${2}"

  local uppercase_hex="$(tr <<< ${hex_value} 'a-z' 'A-Z')"
  if [ "$?" -ne 0 ]; then
    echo "could not convert hex to uppercase"
    exit 255
  fi

  local bits=$(echo "obase=2;inbase=16;${uppercase_hex}" | bc)
  if [ "$?" -ne 0 ]; then
    echo "could not convert hex to binary"
    exit 255
  fi

  convert_to_signed_integer "${bits}" "${bits_in_integer}"
  if [ "$?" -ne 0 ]; then
    echo "could not convert binary to signed integer"
    exit 255
  fi

  exit 0
}

convert_hex_to_integers_in_binary "$@"
