#!/usr/bin/env bash


COLORS="black brown red orange yellow green blue violet grey white"


index_of() {
  local element=$1
  local collection="${@:2}"
  let local count=0
  for el in $collection;  do
    [[ $el = $element ]] && echo $count && break
    count=$(( $count + 1 ))
  done
}

main() {
  local result=""
  for el in $@; do
    local index=`index_of $el $COLORS`
    if [[ -z $index ]]; then
      echo "invalid color"
      return 1
    fi
    result="$result$index"
  done
  echo "$result"
  return 0
}


main "$@"
