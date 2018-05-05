# Copyright (C) 2018 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    audio_shim.c

LOCAL_MODULE := libshim_audio
LOCAL_MODULE_TAGS := optional
LOCAL_MULTILIB := 32

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= audioloader.cpp

LOCAL_SHARED_LIBRARIES := \
    libutils \
    libaudioclient

LOCAL_MODULE:= audioloader
LOCAL_MODULE_TAGS:= optional

LOCAL_INIT_RC := audioloader.rc

include $(BUILD_EXECUTABLE)
