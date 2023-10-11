#!/bin/bash
set -euo pipefail

PROJECT_PATH=$(git rev-parse --show-toplevel)

cd "$PROJECT_PATH/composition_demo/dcba"

python setup.py install

cd -

cd "$PROJECT_PATH/composition_demo/xdcba"

python setup.py install

cd -

python_cmd=$(cat <<EOF
from xdcba import xmodule
from dcba import module

module.dcba_greet()
EOF
)

python -c "$python_cmd"