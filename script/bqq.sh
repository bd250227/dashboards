#!/bin/bash

bq \
    --project_id=com-centralreports-cug01-qa \
    query \
    --format=${2:-prettyjson} < $1