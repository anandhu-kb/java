#!/bin/bash
filename="$1"
if javac "$filename"; then
  java "$(basename "$filename" .java)"
  rm "$(basename "$filename" .java)".class
fi
