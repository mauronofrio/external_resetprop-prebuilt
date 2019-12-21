LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

ifeq ($(TW_INCLUDE_RESETPROP), true)
    RESETPROP_TARGET := resetprop
    #magiskboot prebuilt
    include $(CLEAR_VARS)
    LOCAL_MODULE := $(RESETPROP_TARGET)
    LOCAL_MODULE_STEM := resetprop
    LOCAL_MODULE_TAGS := eng
    LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
    LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
    LOCAL_SRC_FILES := $(LOCAL_MODULE)
    include $(BUILD_PREBUILT)
endif
