# OSX_SCRIPT_FOLDER:=sigrok-util/cross-compile/macosx
# OSX_SCRIPT_BASENAME:=sigrok-native-macosx
# OSX_SCRIPT_PATH:=$(OSX_SCRIPT_FOLDER)/$(OSX_SCRIPT_BASENAME)

.PHONY:build
build:
	brew install --HEAD olegtarasov/sigrok/pulseview
	brew install --HEAD olegtarasov/sigrok/sigrok-cli

#	brew install --HEAD takesako/sigrok/sigrok-firmware-fx2lafw
#	brew install --HEAD takesako/sigrok/libsigrokdecode
#	brew install --HEAD takesako/sigrok/libsigrok
#	brew install --build-from-source --HEAD takesako/sigrok/pulseview
#	brew install --HEAD takesako/sigrok/sigrok-cli

# 	brew install libzip libftdi libusb libtool glibmm doxygen autoconf-archive sdcc python3 boost qt pkg-config cmake glib autoconf automake swig check
# 	git clone git://sigrok.org/sigrok-util

# # This is the head commit at time of writing, and it's over 3 years old.
# 	cd sigrok-util && git checkout 249b79d0a94e9ac4ec96533bf3108e2a50e6b38d

# # Check that the thing still has a reference to qt@5.5 specifically.
# 	grep "qt@5.5" "$(OSX_SCRIPT_PATH)"

# # Replace that reference with plain old qt.
# 	sed -I '' "s/qt@5.5/qt/g" "$(OSX_SCRIPT_PATH)"

# # Check that the thing still refers to python@2 specifically, and
# # remove it.
# 	grep "python@2" "$(OSX_SCRIPT_PATH)"
# 	sed -I '' "s/python@2//g" "$(OSX_SCRIPT_PATH)"

# # Run the script.
# 	cd "$(OSX_SCRIPT_FOLDER)" && "./$(OSX_SCRIPT_BASENAME)"
