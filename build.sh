#!/usr/bin/env bash
# One-shot rebuild for the Trebuchet nodrawer mod.
# Requires on PATH: apktool, zipalign, apksigner, keytool (JDK 17+).
set -euo pipefail

echo "[1/4] apktool b ..."
apktool b --use-aapt2 -f -o launcher-unsigned.apk .

echo "[2/4] zipalign ..."
zipalign -f -p 4 launcher-unsigned.apk launcher-aligned.apk

KS=debug.keystore
if [ ! -f "$KS" ]; then
  echo "[3/4] generating a local debug keystore ..."
  keytool -genkeypair -keystore "$KS" \
    -storepass android -keypass android \
    -alias androiddebugkey \
    -dname "CN=Android Debug,O=Android,C=US" \
    -keyalg RSA -keysize 2048 -validity 10000
else
  echo "[3/4] reusing existing $KS ..."
fi

apksigner sign --ks "$KS" --ks-pass pass:android \
  --ks-key-alias androiddebugkey \
  --out Launcher-nodrawer.apk launcher-aligned.apk

echo "[4/4] verifying ..."
apksigner verify Launcher-nodrawer.apk

rm -f launcher-unsigned.apk launcher-aligned.apk
echo "OK -> Launcher-nodrawer.apk"
