LOCAL_PATH:=$(call my-dir)

HCX_CFLAGS:=-std=gnu99 -O3 -Wall -Wextra

include $(CLEAR_VARS)
LOCAL_MODULE			:= libcrypto
LOCAL_SRC_FILES			:= $(LOCAL_PATH)/../libcrypto/local/$(TARGET_ARCH_ABI)/libcrypto.a
LOCAL_EXPORT_C_INCLUDES	:= $(LOCAL_PATH)/../boringssl/src/include
include $(PREBUILT_STATIC_LIBRARY)

#include $(CLEAR_VARS)
#LOCAL_MODULE			:= libssl
#LOCAL_SRC_FILES			:= $(LOCAL_PATH)/../libssl/local/$(TARGET_ARCH_ABI)/libssl.a
#LOCAL_EXPORT_C_INCLUDES	:= $(LOCAL_PATH)/../boringssl/src/include
#include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE			:= libpcap
LOCAL_SRC_FILES			:= $(LOCAL_PATH)/../libpcap/local/$(TARGET_ARCH_ABI)/libpcap.a
LOCAL_EXPORT_C_INCLUDES	:= $(LOCAL_PATH)/../libpcap
include $(PREBUILT_STATIC_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE			:= wlandump-ng
LOCAL_CFLAGS			+= $(HCX_CFLAGS)
LOCAL_SRC_FILES			:= wlandump-ng.c
LOCAL_STATIC_LIBRARIES  += libpcap
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE			:= hcxdumptool
LOCAL_CFLAGS			+= $(HCX_CFLAGS)
LOCAL_SRC_FILES			:= hcxdumptool.c
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE			:= wlanrcascan
LOCAL_CFLAGS			+= $(HCX_CFLAGS)
LOCAL_SRC_FILES			:= wlanrcascan.c
LOCAL_STATIC_LIBRARIES  += libpcap
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE			:= hcxpcaptool
LOCAL_CFLAGS			+= $(HCX_CFLAGS)
LOCAL_SRC_FILES			:= hcxpcaptool.c
LOCAL_LDLIBS			:= -lz
LOCAL_STATIC_LIBRARIES  += libpcap
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE			:= hcxhashcattool
LOCAL_CFLAGS			+= $(HCX_CFLAGS)
LOCAL_SRC_FILES			:= hcxhashcattool.c
LOCAL_STATIC_LIBRARIES  += libcrypto
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE			:= wlancap2hcx
LOCAL_CFLAGS			+= $(HCX_CFLAGS)
LOCAL_SRC_FILES			:= wlancap2hcx.c
LOCAL_STATIC_LIBRARIES  += libpcap libcrypto
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE			:= wlanhc2hcx
LOCAL_CFLAGS			+= $(HCX_CFLAGS)
LOCAL_SRC_FILES			:= wlanhc2hcx.c
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE			:= wlanwkp2hcx
LOCAL_CFLAGS			+= $(HCX_CFLAGS)
LOCAL_SRC_FILES			:= wlanwkp2hcx.c
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE			:= wlanhcxinfo
LOCAL_CFLAGS			+= $(HCX_CFLAGS)
LOCAL_SRC_FILES			:= wlanhcxinfo.c
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE			:= wlanhcx2cap
LOCAL_CFLAGS			+= $(HCX_CFLAGS)
LOCAL_SRC_FILES			:= wlanhcx2cap.c
LOCAL_STATIC_LIBRARIES  += libpcap
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE			:= wlanhcx2essid
LOCAL_CFLAGS			+= $(HCX_CFLAGS)
LOCAL_SRC_FILES			:= wlanhcx2essid.c
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE			:= wlanhcx2ssid
LOCAL_CFLAGS			+= $(HCX_CFLAGS)
LOCAL_SRC_FILES			:= wlanhcx2ssid.c
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE			:= wlanhcxmnc
LOCAL_CFLAGS			+= $(HCX_CFLAGS)
LOCAL_SRC_FILES			:= wlanhcxmnc.c
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE			:= wlanhashhcx
LOCAL_CFLAGS			+= $(HCX_CFLAGS)
LOCAL_SRC_FILES			:= wlanhashhcx.c
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE			:= wlanhcxcat
LOCAL_CFLAGS			+= $(HCX_CFLAGS)
LOCAL_SRC_FILES			:= wlanhcxcat.c
LOCAL_STATIC_LIBRARIES  += libcrypto
include $(BUILD_EXECUTABLE)

# Missing `BIO_f_base64` in BoringSSL
#include $(CLEAR_VARS)
#LOCAL_MODULE			:= wlanpmk2hcx
#LOCAL_CFLAGS			+= $(HCX_CFLAGS)
#LOCAL_SRC_FILES			:= wlanpmk2hcx.c
#LOCAL_STATIC_LIBRARIES  += libcrypto libssl
#include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE			:= wlanjohn2hcx
LOCAL_CFLAGS			+= $(HCX_CFLAGS)
LOCAL_SRC_FILES			:= wlanjohn2hcx.c
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE			:= wlancow2hcxpmk
LOCAL_CFLAGS			+= $(HCX_CFLAGS)
LOCAL_SRC_FILES			:= wlancow2hcxpmk.c
include $(BUILD_EXECUTABLE)

# I need curl to make it compile
#include $(CLEAR_VARS)
#LOCAL_MODULE			:= whoismac
#LOCAL_CFLAGS			+= $(HCX_CFLAGS)
#LOCAL_SRC_FILES			:= whoismac.c
#LOCAL_STATIC_LIBRARIES  += libcurl
#include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE			:= wlanhcx2john
LOCAL_CFLAGS			+= $(HCX_CFLAGS)
LOCAL_SRC_FILES			:= wlanhcx2john.c
include $(BUILD_EXECUTABLE)

LOCAL_MODULE			:= wlanhcx2psk
LOCAL_CFLAGS			+= $(HCX_CFLAGS)
LOCAL_SRC_FILES			:= wlanhcx2psk.c
LOCAL_STATIC_LIBRARIES  += libcrypto
include $(BUILD_EXECUTABLE)

# I need curl to make it compile
#include $(CLEAR_VARS)
#LOCAL_MODULE			:= wlancap2wpasec
#LOCAL_CFLAGS			+= $(HCX_CFLAGS)
#LOCAL_SRC_FILES			:= wlancap2wpasec.c
#LOCAL_STATIC_LIBRARIES  += libcurl
#include $(BUILD_EXECUTABLE)
