# premake5-yasm [![Build Status](https://travis-ci.org/fzwoch/premake5-yasm.svg?branch=master)](https://travis-ci.org/fzwoch/premake5-yasm)

Custom build rules for the [Yasm](http://yasm.tortall.net/) assembler. Simply `include "yasm.lua"` to your specific [Premake5](https://premake.github.io) project. Files with the `.asm` extension added to the project will then be compiled with the Yasm compiler. If in luck it takes care of the specific peculiarities for each architecture/target/platform automatically.
