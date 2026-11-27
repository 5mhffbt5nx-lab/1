#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
root=$PWD
out="$root/.lake/certified"
mkdir -p "$out/A060957"
lake env bash -s -- "$out" "$@" <<'CHECK'
set -euo pipefail
out=$1
shift
export LEAN_PATH="$out:$LEAN_PATH"
lean --version
for module in Core Intervals GapStructure; do
  lean -DwarningAsError=true -o "$out/A060957/$module.olean" "A060957/$module.lean"
done
lean -DwarningAsError=true Smoke.lean
if [[ $# = 0 ]]; then set -- 130203 954316; fi
for n in "$@"; do
  case "$n" in 130203|954316) ;; *) exit 2 ;; esac
  build() {
    lean -DwarningAsError=true -o "$out/A060957/$1.olean" "A060957/$1.lean"
  }
  build "Data$n"
  if [[ $n == 954316 ]]; then
    build Scan954316
    for ((part=0; part<16; part+=2)); do
      build "Scan954316Part$part" &
      first_pid=$!
      build "Scan954316Part$((part+1))" &
      second_pid=$!
      status=0
      wait "$first_pid" || status=1
      wait "$second_pid" || status=1
      if [[ $status != 0 ]]; then exit "$status"; fi
      printf 'Scan954316 parts %s and %s passed.
' "$part" "$((part+1))"
    done
  fi
  build "Certificate$n"
  build "Proof$n"
  lean -DwarningAsError=true "Audit$n.lean" | tee "$out/Audit$n.log"
  python3 python/check_axioms.py "$out/Audit$n.log" "$n"
done
CHECK
