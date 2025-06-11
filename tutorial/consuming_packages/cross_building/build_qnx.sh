#!/bin/bash

set -e

# If no "QNX_TARGET" is set, exit with an error
if [ -z "$QNX_TARGET" ]; then
    echo "Error: QNX_TARGET is not set. Please set it to your QNX target path."
    exit 1
fi

rm -rf build/qnx
conan install . --output-folder=build/qnx --build=missing -pr:b=default -pr:h=./profiles/qnx

cd build/qnx
source conanbuild.sh
cmake ../.. -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release

make VERBOSE=1
