#!/usr/bin/env bash
# Usage: version-gte.sh <version> <minimum>
#
# Exits 0 if <version> is greater than or equal to <minimum>, following semver precedence.
# A leading `v` and any `+build` metadata are ignored.
#
# A plain `sort -V` is not enough as it orders `1.0.0` before `1.0.0-rc.1`,
# whereas a release must rank above all of its own pre-releases.
set -eu

if [ "$#" -ne 2 ]; then
  echo "usage: $0 <version> <minimum>" >&2
  exit 2
fi

normalize() {
  local version=${1#v}
  echo "${version%%+*}"
}

# Succeeds if $1 sorts at or after $2.
sorts_gte() {
  [ "$(printf '%s\n' "$1" "$2" | sort -V | head -n1)" = "$2" ]
}

VERSION=$(normalize "$1")
MINIMUM=$(normalize "$2")

# Compare the `major.minor.patch` cores first.
VERSION_CORE=${VERSION%%-*}
MINIMUM_CORE=${MINIMUM%%-*}
if [ "$VERSION_CORE" != "$MINIMUM_CORE" ]; then
  sorts_gte "$VERSION_CORE" "$MINIMUM_CORE"
  exit
fi

# The cores are equal, so a version without a pre-release tag ranks highest.
if [ "$VERSION" = "$VERSION_CORE" ]; then
  exit 0
fi
if [ "$MINIMUM" = "$MINIMUM_CORE" ]; then
  exit 1
fi

# Both are pre-releases of the same version.
sorts_gte "$VERSION" "$MINIMUM"
