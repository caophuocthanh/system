THEOS_DEVICE_IP = 192.168.1.10

TARGET := iphone:clang:latest:7.0
ARCHS = armv7 arm64
ADDITIONAL_OBJCFLAGS = -fobjc-arc

include $(THEOS)/makefiles/common.mk

TOOL_NAME = system

system_FILES = main.m
system_CFLAGS = -fobjc-arc
system_CODESIGN_FLAGS = -Sentitlements.plist
system_INSTALL_PATH = /usr/local/bin

include $(THEOS_MAKE_PATH)/tool.mk
