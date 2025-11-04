#!/usr/bin/bash
set -euo pipefail

cd ./python

uv run utils/torch_converter.py
