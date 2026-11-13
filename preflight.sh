#!/usr/bin/env bash
set -Eeuo pipefail

ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
PROJECT="$ROOT/MikroShamel-4.56.44-rebuild-project"
ENV="$ROOT/MikroShamel-4.56.44-build-env"
missing=0

need_file() {
  local p="$1"
  if [[ ! -f "$p" ]]; then printf 'MISSING FILE: %s\n' "${p#"$ROOT"/}"; missing=1; fi
}
need_dir() {
  local p="$1"
  if [[ ! -d "$p" ]]; then printf 'MISSING DIR:  %s\n' "${p#"$ROOT"/}"; missing=1; fi
}

printf 'MikroShamel 4.56.44 rebuild preflight\n'
printf 'Root: %s\n\n' "$ROOT"

need_dir "$PROJECT/kotlin"
need_dir "$PROJECT/smali/c2"
need_dir "$PROJECT/smali/c4n"
need_dir "$PROJECT/smali/c5n"
need_dir "$ENV/tools"
need_file "$ENV/tools/apktool.jar"
need_file "$ENV/tools/smali.jar"
need_file "$ENV/tools/baksmali.jar"
need_file "$PROJECT/apktool-project/AndroidManifest.xml"
need_dir "$PROJECT/base-dex"
need_file "$ROOT/build.sh"

if [[ -z "${JAVA_HOME:-}" ]]; then
  echo 'MISSING ENV: JAVA_HOME (JDK 21 required by the recorded build recipe)'
  missing=1
fi
if [[ -z "${KS:-}" || ! -f "${KS:-/nonexistent}" ]]; then
  echo 'MISSING SIGNING KEY: set KS to the release keystore path (never commit it)'
  missing=1
fi
if [[ -z "${KS_PASS_FILE:-}" || ! -f "${KS_PASS_FILE:-/nonexistent}" ]]; then
  echo 'MISSING SIGNING PASSWORD FILE: set KS_PASS_FILE (never commit it)'
  missing=1
fi

if (( missing )); then
  cat <<'EOF'

PREFLIGHT FAILED. No APK was produced.
Do not synthesize an empty manifest, DEX, resources.arsc, or signing identity.
Restore the missing reference inputs before invoking the release build.
EOF
  exit 2
fi

echo 'PREFLIGHT PASSED: required paths and signing inputs are present.'
echo 'This script only validates prerequisites; it does not build or sign the APK.'
