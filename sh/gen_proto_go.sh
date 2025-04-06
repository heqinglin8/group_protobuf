#!/bin/bash

PROTO_DIR=".\protobuf"
GO_OUTPUT_DIR=".\pb"
protoc --version
mkdir -p $GO_OUTPUT_DIR

protoc --proto_path=$PROTO_DIR \
       --go_out=$GO_OUTPUT_DIR \
       --go_opt=paths=source_relative \
       $PROTO_DIR\\*.proto \


echo "Proto files generated in $GO_OUTPUT_DIR"
sleep 30 &
wait

