#!/bin/bash

EXECUTABLE=${1} &&
    INPUT=${2} &&
    EXPECTED=${3} &&
    OBSERVED=$(echo "${INPUT}" | "${EXECUTABLE}") &&
    if [[ "${EXPECTED}" != "${OBSERVED}" ]]
    then
	(cat <<EOF
There was a failure.
We inputed "${INPUT}".
We expected to see "${EXPECTED}".
But we saw "${OBSERVED}".
EOF
	) &&
