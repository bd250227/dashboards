#!/bin/bash

bq \
    --project_id=com-centralreports-cug01-qa \
    query \
    -n 1000 \
    --format=${2:-prettyjson} < $1