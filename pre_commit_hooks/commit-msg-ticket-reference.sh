#!/bin/sh

TICKET=$(git symbolic-ref HEAD | rev | cut -d/ -f1 | rev | grep -o -E "[A-Z]+-[0-9]+")
if [[ -n "${TICKET}" ]]; then
    sed -i.bak -e "1s/^/[${TICKET}] /" $1
fi
