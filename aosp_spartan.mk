#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from spartan device
$(call inherit-product, device/realme/spartan/device.mk)

# Inherit some common VoidUI stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)



PRODUCT_NAME := aosp_spartan
PRODUCT_DEVICE := spartan
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme GT Neo 3T

PRODUCT_SYSTEM_NAME := RMX3371
PRODUCT_SYSTEM_DEVICE := RE54E4L1

#Rom Stuff
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP  := true

# VoidUI Maintainer Flags
VOID_MAINTAINER := Amrutesh
CUSTOM_BUILD_TYPE := UNOFFICIAL

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX3371-user 13 TP1A.220905.001 S.cd290a_d5d0-4 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX3371/RE54E4L1:13/TP1A.220905.001/S.cd290a_d5d0-4:user/release-keys
