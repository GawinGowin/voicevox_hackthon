#!/bin/bash

set -e
(
    cd /home/voicevox_hackthon
    git fetch origin main
    git reset --hard FETCH_HEAD
)
python api.py