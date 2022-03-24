#!/usr/bin/env bash

#
# PROFESSIONAL (SERIAL) LICENSE MODE
#
# This will return the license that is currently in use.
#
# See: https://docs.unity3d.com/Manual/ManagingYourUnityLicense.html
#

UNITY_ARGS=""
if [[ -n "$UNITY_EMAIL" ]]; then
    UNITY_ARGS+=" -username \"$UNITY_EMAIL\""
fi

if [[ -n "$UNITY_PASSWORD" ]]; then
    UNITY_ARGS+=" -password \"$UNITY_PASSWORD\""
fi

echo "unity-return-license: Returning Unity license"
unity-editor \
  -logFile /dev/stdout \
  -quit \
  -batchmode \
  -nographics \
  -returnlicense $UNITY_ARGS
