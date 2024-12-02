ifneq ($(filter RMX3261,$(TARGET_DEVICE)),)

LOCAL_PATH := device/realme/RMX3261

include $(call all-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)
LOCAL_MODULE := libcrypto
LOCAL_SRC_FILES := /system/lib64/libcrypto.so  # Ganti dengan file sumber yang sesuai
LOCAL_SHARED_LIBRARIES := libssl
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libkeymaster
LOCAL_SRC_FILES := /system/lib64/libkeymaster_portable.so  # Ganti dengan file sumber yang sesuai
include $(BUILD_SHARED_LIBRARY)

endif
