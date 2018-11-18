#!/usr/bin/env bash

../tools-public/generate-dynamic-macros-cli.js \
  --platform android \
  --buildConstantsPath expoview/src/main/java/host/exp/exponent/generated/ExponentBuildConstants.java

./gradlew ${1:-installDevKernelDebug} --stacktrace && adb shell am start -n host.exp.exponent/host.exp.exponent.LauncherActivity
