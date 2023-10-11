#!/bin/bash
set -euo pipefail

PROJECT_PATH=$(git rev-parse --show-toplevel)

cd "$PROJECT_PATH/mokey_patching_demo/abcd"

python setup.py install

cd -

cd "$PROJECT_PATH/mokey_patching_demo/xabcd"

python setup.py install

cd -

python_cmd=$(cat <<EOF
from xabcd import xmodule
from abcd import module

module.abcd_greet()
EOF
)

python -c "$python_cmd"