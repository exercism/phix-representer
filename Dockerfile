FROM alpine:3.24.2@sha256:294b683cb724975bec92580e1e685676bd4b50bda910ddb8c51d4cabeaec77e6

# TODO: install packages required to run the representer
RUN apk add --no-cache bash jq

WORKDIR /opt/representer
COPY . .
ENTRYPOINT ["/opt/representer/bin/run.sh"]
