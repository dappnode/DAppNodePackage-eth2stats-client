#!/bin/sh

if [ "$BEACON_TYPE" = "prysm" ];then
    BEACON_ADDR="prysm-medalla-beacon-chain.dappnode:4000"
    BEACON_METRICS="http://prysm-medalla-beacon-chain.dappnode:8080/metrics"
else   
    BEACON_ADDR="http://lighthouse-medalla-beacon-chain.dappnode:5052" 
    BEACON_METRICS="http://lighthouse-medalla-beacon-chain.dappnode:5052/metrics"
fi;

exec /eth2stats-client run \
    --v \
    --eth2stats.node-name="${NODE_NAME}" \
    --data.folder="/data" \
    --eth2stats.tls=true \
    --eth2stats.addr="${ADDR}" \
    --beacon.type="${BEACON_TYPE}" \
    --beacon.addr="${BEACON_ADDR}" \
    --beacon.metrics-addr="${BEACON_METRICS}"