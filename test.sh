#!/bin/bash

EXPECTED="The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius."

[[ "$(./element.sh)" == "Please provide an element as an argument." ]] || exit 1
[[ "$(./element.sh 1)" == "$EXPECTED" ]] || exit 1
[[ "$(./element.sh H)" == "$EXPECTED" ]] || exit 1
[[ "$(./element.sh Hydrogen)" == "$EXPECTED" ]] || exit 1
[[ "$(./element.sh 999)" == "I could not find that element in the database." ]] || exit 1

echo "All tests passed."
