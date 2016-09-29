LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_PACKAGE_NAME := AlipayQrScan
LOCAL_JNI_SHARED_LIBRARIES += libzbar
LOCAL_CERTIFICATE := platform
LOCAL_PROGUARD_ENABLED := disabled
LOCAL_MULTILIB := 32

include $(BUILD_PACKAGE)

include $(CLEAR_VARS)
MY_PATH := $(LOCAL_PATH)
include $(MY_PATH)/libs/armeabi/Android.mk
