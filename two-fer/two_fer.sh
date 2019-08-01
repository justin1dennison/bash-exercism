#!/usr/bin/env bash


main() {
  if [[ $# -eq 0 ]]; then
	  main "you"
  else 
	  echo "One for $1, one for me."
  fi 
  return 0 
}

main "$@"
