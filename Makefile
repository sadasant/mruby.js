MRUBY_DIR = modules/mruby

all: submodules libmruby.a
make_tool = make

submodules:
	git submodule init
	git submodule update
	cd modules/mruby-qrcode
	git submodule init
	git submodule update

libmruby.a:
	cd ${MRUBY_DIR} && (MRUBY_CONFIG=../../build_config.rb ${make_tool})

emscripten:
	emcc -I${MRUBY_DIR}/include -Wall mruby.js.c -o mruby.js.o
	emcc mruby.js.o ${MRUBY_DIR}/build/host/lib/libmruby.a -o mruby.js

clean:
	cd ${MRUBY_DIR} && ${make_tool} clean
