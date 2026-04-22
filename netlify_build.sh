#!/bin/bash
# Netlify build script: inject real GH_PAT into admin.html
# Replace FAKE_TOKEN_REPLACE_ME with actual token from environment

# Only run if GH_PAT is set
if [ -n "$GH_PAT" ]; then
    sed -i "s/FAKE_TOKEN_REPLACE_ME/${GH_PAT}/g" admin.html
    echo "[build] Injected GH_PAT into admin.html"
else
    echo "[build] GH_PAT not set, skipping token injection"
fi

# Build step (if needed, currently just injects token)
