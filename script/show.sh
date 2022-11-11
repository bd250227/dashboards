#!/bin/bash

TABLE=''
if [ -n "$1" ]; then
    TABLE=.$1
fi

bq \
    --project_id=com-centralreports-cug01-qa \
    show \
    engineering$TABLE
