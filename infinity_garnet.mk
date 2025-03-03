#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

TARGET_SUPPORTS_OMX_SERVICE := false

# Inherit some common pixelage stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Inherit from garnet device
$(call inherit-product, device/xiaomi/garnet/device.mk)

PRODUCT_NAME := infinity_garnet
PRODUCT_DEVICE := garnet
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 2312DRA50G

PRODUCT_SYSTEM_NAME := garnet_global
PRODUCT_SYSTEM_DEVICE := garnet

TARGET_BOOT_ANIMATION_RES := 1080

# UDFPS Flags
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true

# Extra Flags
TARGET_DISABLE_EPPE := true
TARGET_SUPPORTS_QUICK_TAP := true

# InfinityX Flags
INFINITY_BUILD_TYPE := OFFICIAL
INFINITY_MAINTAINER := bezke
TARGET_SUPPORTS_BLUR := true

# Gapps
WITH_GAPPS := true
TARGET_SHIPS_FULL_GAPPS := true
TARGET_BUILD_GOOGLE_TELEPHONY := true

USE_MOTO_CALCULATOR := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="garnet_global-user 15 AQ3A.240912.001 OS2.0.4.0.VNRCNXM release-keys" \
    BuildFingerprint=Redmi/garnet_global/garnet:15/AQ3A.240912.001/OS2.0.4.0.VNRCNXM:user/release-keys \
    DeviceName=garnet \
    DeviceProduct=garnet_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
