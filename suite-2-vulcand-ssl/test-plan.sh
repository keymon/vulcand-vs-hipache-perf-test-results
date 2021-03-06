#!/bin/sh
for CONCURRENT_REQUESTS in 10 20 40 60 80 100 150 200 250 300 350 400 450 500; do

    echo ===================================================================
    echo ===================================================================
    echo ===================================================================
    echo ===================================================================

    echo $CONCURRENT_REQUESTS
    echo ===================================================================
    echo ===================================================================
    echo ===================================================================
    echo ===================================================================

    export CONCURRENT_REQUESTS
    export NUM_REQUESTS=$(($CONCURRENT_REQUESTS * 30))

    DEPLOY_ENV=smashmouth \
    TARGET_HOST=10.129.0.26 \
    SOURCE_HOST=10.129.0.165 \
    ENABLE_KEEP_ALIVE= \
    ./generate_perf_test.sh
done

