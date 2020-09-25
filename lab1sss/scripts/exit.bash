#!/bin/bash

# $? для просмотра последнего кода возврата.
[[ -n "$2" ]] && { [[ $2 =~ ^[0-9]+$ ]] && { exit "$2"; } || echo "The second argument mast be a number"; } || exit 0
