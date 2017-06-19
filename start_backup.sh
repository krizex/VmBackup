#!/usr/bin/bash

curl https://cronitor.link/5h4ISO/run -m 10 || true

cd "$(dirname "$0")"

python VmBackup.py xenroot CentOS7.cfg

curl https://cronitor.link/5h4ISO/complete -m 10 || true
