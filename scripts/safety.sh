#!/usr/bin/bash

set -euo pipefail

# doing checks with uv
uvx bandit -ll -r src
uvx safey scan --full-report
