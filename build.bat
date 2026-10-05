@echo off
rem One-shot rebuild for the Trebuchet nodrawer mod.
rem Requires on PATH: apktool, zipalign, apksigner, keytool (JDK 17+).
setlocal

echo [1/4] apktool b ...
call apktool b --use-aapt2 -f -o launcher-unsigned.apk . || goto :fail

echo [2/4] zipalign ...
call zipalign -f -p 4 launcher-unsigned.apk launcher-aligned.apk || goto :fail

if exist debug.keystore (
    echo [3/4] reusing existing debug.keystore ...
) else (
    echo [3/4] generating a local debug keystore ...
    call keytool -genkeypair -keystore debug.keystore -storepass android -keypass android -alias androiddebugkey -dname "CN=Android Debug,O=Android,C=US" -keyalg RSA -keysize 2048 -validity 10000 || goto :fail
)

call apksigner sign --ks debug.keystore --ks-pass pass:android --ks-key-alias androiddebugkey --out Launcher-nodrawer.apk launcher-aligned.apk || goto :fail

echo [4/4] verifying ...
call apksigner verify Launcher-nodrawer.apk || goto :fail

del launcher-unsigned.apk launcher-aligned.apk
echo OK -^> Launcher-nodrawer.apk
exit /b 0

:fail
echo BUILD FAILED
exit /b 1
