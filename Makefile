THEOS_DEVICE_IP = 192.168.1.48

TARGET := iphone:clang:latest:7.0
ARCHS = armv7 arm64
ADDITIONAL_OBJCFLAGS = -fobjc-arc

include $(THEOS)/makefiles/common.mk

TOOL_NAME = killspring

cmd_FILES = main.m
cmd_CFLAGS = -fobjc-arc
cmd_CODESIGN_FLAGS = -Sentitlements.plist
cmd_INSTALL_PATH = /usr/local/bin

include $(THEOS_MAKE_PATH)/tool.mk
