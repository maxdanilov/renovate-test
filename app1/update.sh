#!/bin/bash
set -ex

# asdf-tools-used=

# renovate: datasource=github-tags depName=cert-manager/cert-manager
VERSION=v1.10.1

SCRIPT_PATH="$(dirname "$(realpath "$0")")"
UPSTREAM_SOURCE="https://github.com/jetstack/cert-manager/releases/download/${VERSION}/cert-manager.yaml"
UPSTREAM_TARGET="upstream/cert-manager.yml"

cd "$SCRIPT_PATH"
echo "Downloading ${UPSTREAM_SOURCE} to ${UPSTREAM_TARGET}"
curl -L --fail "${UPSTREAM_SOURCE}" > "${UPSTREAM_TARGET}"
