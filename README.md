# asm-dom-cmake

A web interface entirely built using C++.
This is possible thanks to [asm-dom](https://github.com/mbasso/asm-dom) and 
[gccx](https://github.com/mbasso/gccx) (JSX like syntax for C++).

* [Demo page](http://arthursonzogni.github.io/asm-dom-cmake/)
* Use only CMake (no crazy Javascript tool, only C++)
* Self contained (cmake will download things for you)

# How to build?

[![asciicast](https://asciinema.org/a/xLGp7D6nkqgCEZoSTM7LdO5QT.svg)](https://asciinema.org/a/xLGp7D6nkqgCEZoSTM7LdO5QT)

* Make sure cmake, emscripten and npm are installed.
~~~bash
mkdir build
cd build
emcmake cmake ..
make
~~~

* Create a local server and navigate [http://localhost:8000](http://localhost:8000)
~~~
python -m SimpleHTTPServer 8000
~~~
