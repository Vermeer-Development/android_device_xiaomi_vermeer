#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from vermeer device
$(call inherit-product, device/xiaomi/vermeer/device.mk)

# Inherit from common infinity configuration
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# InfinityX flags
INFINITY_BUILD_TYPE := OFFICIAL
INFINITY_MAINTAINER := Lunark
TARGET_SUPPORTS_BLUR := true
WITH_GAPPS := true
TARGET_HAS_UDFPS := true
PRODUCT_NO_CAMERA := true

PRODUCT_DEVICE := vermeer
PRODUCT_NAME := infinity_vermeer
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 23113RKC6G
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=POCO/vermeer_global/vermeer:16/BP2A.250605.031.A3/OS3.0.304.0.WNKMIXM:user/release-keys
