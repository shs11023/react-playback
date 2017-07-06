LOCAL_PATH := $(call my-dir)

LOCAL_C_INCLUDES := $(LOCAL_PATH)//foo
include $(CLEAR_VARS)
LOCAL_MODULE    := libavcodec
LOCAL_SRC_FILES := ffmpeg/android-libs/$(TARGET_ARCH_ABI)/$(LOCAL_MODULE).so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := libavutil
LOCAL_SRC_FILES := ffmpeg/android-libs/$(TARGET_ARCH_ABI)/$(LOCAL_MODULE).so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := libavresample
LOCAL_SRC_FILES := ffmpeg/android-libs/$(TARGET_ARCH_ABI)/$(LOCAL_MODULE).so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := libswresample
LOCAL_SRC_FILES := ffmpeg/android-libs/$(TARGET_ARCH_ABI)/$(LOCAL_MODULE).so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := ffmpeg
LOCAL_SRC_FILES := jni_ffmpeg.cc
LOCAL_C_INCLUDES := ffmpeg
LOCAL_SHARED_LIBRARIES := libavcodec libavresample libavutil libswresample
LOCAL_LDLIBS := -Lffmpeg/android-libs/$(TARGET_ARCH_ABI) -llog
LOCAL_C_INCLUDES := $(LOCAL_PATH)//ffmpeg
include $(BUILD_SHARED_LIBRARY)
