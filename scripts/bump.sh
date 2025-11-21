#!/bin/sh

SCRIPT_DIR=$(dirname "$0")
SCRIPT_DIR=$(realpath "$SCRIPT_DIR")

VERSION=$1

if [ -z "$VERSION" ]; then
    echo "Usage: bump.sh <VERSION>"
    exit 1
fi

aws s3 cp s3://vesper-sdk-apple/vesper/$VERSION/spm/Sources $SCRIPT_DIR/../Sources --recursive
aws s3 cp s3://vesper-sdk-apple/vesper/$VERSION/spm/Package.swift $SCRIPT_DIR/../.
