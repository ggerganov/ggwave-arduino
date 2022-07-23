#!/bin/bash

# Sync source files from the main ggwave repo:
#
# https://github.com/ggerganov/ggwave
#

cd "$(dirname "$0")"
cd ..

mkdir -p src/ggwave

cp -v   ../ggwave/include/ggwave/ggwave.h  ./src/ggwave/
cp -v   ../ggwave/src/fft.h                ./src/ggwave/
cp -v   ../ggwave/src/ggwave.cpp           ./src/ggwave/
cp -vrp ../ggwave/src/reed-solomon         ./src/ggwave/reed-solomon

mkdir -p examples/arduino-rx

cp -v   ../ggwave/examples/arduino-rx/arduino-rx.ino ./examples/arduino-rx/
cp -v   ../ggwave/examples/arduino-rx/README.md      ./examples/arduino-rx/
cp -v   ../ggwave/examples/arduino-rx/fritzing*      ./examples/arduino-rx/

mkdir -p examples/esp32-rx

cp -v   ../ggwave/examples/esp32-rx/esp32-rx.ino ./examples/esp32-rx/
cp -v   ../ggwave/examples/esp32-rx/README.md    ./examples/esp32-rx/
cp -v   ../ggwave/examples/esp32-rx/fritzing*    ./examples/esp32-rx/

mkdir -p examples/arduino-tx

cp -v   ../ggwave/examples/arduino-tx/arduino-tx.ino ./examples/arduino-tx/
cp -v   ../ggwave/examples/arduino-tx/README.md      ./examples/arduino-tx/
cp -v   ../ggwave/examples/arduino-tx/fritzing*      ./examples/arduino-tx/

mkdir -p examples/rp2040-rx

cp -v   ../ggwave/examples/rp2040-rx/rp2040-rx.ino ./examples/rp2040-rx/
cp -v   ../ggwave/examples/rp2040-rx/*.h           ./examples/rp2040-rx/
cp -v   ../ggwave/examples/rp2040-rx/*.cpp         ./examples/rp2040-rx/
cp -v   ../ggwave/examples/rp2040-rx/README.md     ./examples/rp2040-rx/
cp -v   ../ggwave/examples/rp2040-rx/fritzing*     ./examples/rp2040-rx/

