#!/bin/bash

echo "Create projects"
npm init vue@latest vue-skeleton-no-pinia -- --default
npm init vue@latest vue-skeleton-with-pinia -- --default --pinia

echo "Install deps"
pushd vue-skeleton-no-pinia && npm install && popd
pushd vue-skeleton-with-pinia && npm install && popd

echo "Build without pinia"
pushd vue-skeleton-no-pinia && npm run build && popd

echo "Build with pinia"
pushd vue-skeleton-with-pinia && npm run build && popd

echo "--"
echo "--"
echo "--- file size comparison ---"
ls -lh vue-skeleton-*/dist/assets/index.*.js
