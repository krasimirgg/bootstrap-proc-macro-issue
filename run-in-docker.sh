#!/bin/bash
set -eux

docker build -t "bootstrap-proc-macro-issue:latest" .
docker run -it bootstrap-proc-macro-issue:latest ./run.sh
