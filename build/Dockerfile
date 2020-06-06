ARG VERSION
FROM alethio/eth2stats-client:${VERSION}

ENTRYPOINT [ "sh", "-c", "exec /eth2stats-client run \
    --v \
    --eth2stats.node-name=\"${NODE_NAME}\" \
    --data.folder=\"/data\" \
    --eth2stats.tls=true \
    --eth2stats.addr=\"${ADDR}\" \
    --beacon.type=\"${BEACON_TYPE}\" \
    --beacon.addr=\"${BEACON_ADDR}\" \
    --beacon.metrics-addr=\"${BEACON_METRICS}\""]