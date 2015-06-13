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
	emcc ${MRUBY_DIR}/build/host/lib/libmruby.a -02

clean:
	cd ${MRUBY_DIR} && ${make_tool} clean
