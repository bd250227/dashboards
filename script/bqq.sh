#!/bin/bash

bq \
    --project_id=com-centralreports-cug01-qa \
    query \
    -n 2000 \
    --format=${2:-prettyjson} < $1