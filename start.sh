#!/bin/sh

MACOS_VERSION=$1

if [ -z "$MACOS_VERSION" ]; then
    echo "Usage:"
    echo "    $0 MACOS_VERSION"
    echo "Example:"
    echo "    $0 sonoma"
    exit 1
fi

VALID_VERSIONS="sonoma ventura monterey big-sur catalina"

if ! echo "$VALID_VERSIONS" | grep -w -q "$MACOS_VERSION"; then
    echo "Error:"
    echo "    Invalid macOS version: '$MACOS_VERSION'"
    echo
    echo "Valid versions are:"
    echo "    $VALID_VERSIONS"
    exit 1
fi

chmod o+w $XDG_RUNTIME_DIR/wayland-*
MACOS_VERSION=${MACOS_VERSION} podman-compose -f podman-compose.yaml up