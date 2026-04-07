SCRIPT:=sigrok-util/cross-compile/macosx/sigrok-native-macosx

.PHONY:build
build:
	brew install libzip libftdi libusb libtool glibmm doxygen autoconf-archive sdcc python3 boost qt pkg-config cmake glib autoconf automake swig check
	git clone git://sigrok.org/sigrok-util

# This is the head commit at time of writing, and it's over 3 years old.
	cd sigrok-util && git checkout 249b79d0a94e9ac4ec96533bf3108e2a50e6b38d

# Check that the thing still has a reference to qt@5.5 specifically.
	grep "qt@5.5" "$(SCRIPT)"

# Replace that reference with plain old qt.
	sed -I '' "s/qt@5.5/qt/g" "$(SCRIPT)"

# Run the script.
	cd ./sigrok/util/cross-compile/macosx && ./sigrok-native-access

