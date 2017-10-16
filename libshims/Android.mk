# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# libshims_ims
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := media/libstagefright/foundation/MediaBuffer.cpp

LOCAL_SHARED_LIBRARIES := libstagefright_foundation libui libgui

LOCAL_CFLAGS := -Wno-unused-private-field

LOCAL_MODULE := libshims_ims
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)


# libshims_camera
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    bionic/bionic_time_conversions.cpp \
    bionic/pthread_cond.cpp

LOCAL_SHARED_LIBRARIES := libc

LOCAL_MODULE := libshims_camera
LOCAL_MODULE_TAGS := optional

LOCAL_32_BIT_ONLY := true

include $(BUILD_SHARED_LIBRARY)


# libshims_cameraservice
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    libcameraservice/CameraFlashlight.cpp

LOCAL_C_INCLUDES += \
    frameworks/native/include/media/openmax

LOCAL_SHARED_LIBRARIES:= \
    libui \
    liblog \
    libutils \
    libbinder \
    libcutils \
    libmedia \
    libmediautils \
    libcamera_client \
    libgui \
    libhardware \
    libsync \
    libcamera_metadata \
    libjpeg \
    libmemunreachable \
    libcameraservice

LOCAL_MODULE := libshims_cameraservice
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)


# rild_socket
include $(CLEAR_VARS)

LOCAL_SRC_FILES := rild_socket.c

LOCAL_MODULE := rild_socket
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
