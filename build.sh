#!/bin/sh
cabal configure --enable-tests && cabal build && ./dist/build/TowerOfBrahma/TowerOfBrahma.exe $*
