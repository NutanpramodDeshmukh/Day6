#!/bin/bash

n='^[0-9]+$'
i=0
a=2
c=$((&a**&n))

for i in "$@"; do
  if [[ $i =~ $n ]]; then
      if [[ $((i & (i-1))) == 0 ]]; then
      echo " $i is a power of 2 "
    fi
  fi
done
