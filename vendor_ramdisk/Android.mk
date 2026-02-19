LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := mumba_vendor_ramdisk_init
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_RAMDISK)/etc
LOCAL_SRC_FILES := etc/init.qcom.rc etc/init.mmi.rc etc/init.target.rc etc/fstab.qcom etc/ueventd.rc
include $(BUILD_PREBUILT)
