# asm-dom-cmake

[Demo page](http://arthursonzogni.github.io/asm-dom-cmake/)

A web interface entirely built using C++.
This is possible thanks to [asm-dom](https://github.com/mbasso/asm-dom) and 
[gccx](https://github.com/mbasso/gccx) (JSX like syntax for C++).

Contrary to [other examples](https://github.com/ArthurSonzogni/asm-dom-starter),
this is the one using only CMake. No crazy JavaScript tools (webpack, npm, ...). 

Main file: [main.cpx](./src/main.cpx)

# How to build?

* Install [emscripten](https://emscripten.org/docs/getting_started/downloads.html)
* Install gccx:
~~~bash
npm install -g gccx
~~~

* Build using emscripten
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
