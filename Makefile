MRUBY_DIR = modules/mruby

all: submodules libmruby.a
make_tool = make

submodules:
	git submodule init
	git submodule update
	cd mrbgems/mruby-qrcode
	git submodule init
	git submodule update

libmruby.a:
	cd ${MRUBY_DIR} && (MRUBY_CONFIG=../../build_config.rb ${make_tool})

clean:
	cd ${MRUBY_DIR} && ${make_tool} clean
