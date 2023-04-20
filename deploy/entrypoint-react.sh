#!/bin/bash

set -e
(
    cd /home/voicevox_hackthon
    git fetch origin main
    git reset --hard FETCH_HEAD
)
npm start