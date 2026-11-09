export THEOS=/Users/mute/theos

ARCHS = arm64 

DEBUG = 0
FINALPACKAGE = 1
FOR_RELEASE = 1
THEOS_PACKAGE_SCHEME = rootless

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Dolphins

Dolphins_FRAMEWORKS = IOKit  UIKit Foundation Security QuartzCore CoreGraphics CoreText  AVFoundation Accelerate GLKit SystemConfiguration GameController
Dolphins_LDFLAGS += JRMemory.framework/JRMemory
Dolphins_CCFLAGS = -w -std=gnu++14 -fno-rtti -fno-exceptions -DNDEBUG -Wno-module-import-in-extern-c
Dolphins_CFLAGS = -w -fobjc-arc -Wno-deprecated-declarations -Wno-unused-variable -Wno-unused-value -I./AFNetworking -I./CocoaAsyncSocket -I./Core -I./Core/Categories -I./Core/Mime -I./Core/Responses -I./EasyAES -I./MBProgressHUD -I./SAMKeychain -I./SCLAlertView -I./UDID

Dolphins_FILES =  $(wildcard AFNetworking/*.m) $(wildcard CocoaAsyncSocket/*.m) $(wildcard Core/*.m) $(wildcard Core/Categories/*.m) $(wildcard Core/Mine/*.m) $(wildcard Core/Responses/*.m) $(wildcard SAMKeychain/*.m) $(wildcard Core/Responses/*.m) $(wildcard EasyAES/*.m) $(wildcard MBProgressHUD/*.m) $(wildcard UDID/*.mm) Engine.mm  $(wildcard View/*.mm) $(wildcard CustomView/*.m) $(wildcard utils/*.cpp) $(wildcard utils/*.m) $(wildcard imgui/*.mm) $(wildcard imgui/*.cpp)  $(wildcard ESP/*.mm) $(wildcard ESP/*.cpp) $(wildcard authcheatbot/*.m) $(wildcard SDK/*.cpp) $(wildcard fang/*.m) 

#Dolphins_LIBRARIES += substrate
# GO_EASY_ON_ME = 1

include $(THEOS_MAKE_PATH)/tweak.mk
