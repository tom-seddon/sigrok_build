.PHONY:build
build:
	brew install libzip libftdi libusb libtool glibmm doxygen autoconf-archive sdcc python3 boost qt pkg-config cmake glib autoconf automake swig check
	git clone git://sigrok.org/sigrok-util
	cd sigrok-util/cross-compile/macosx && ./sigrok-native-macosx
