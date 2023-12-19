#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/rising/config/rising.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_raven.mk)
$(call inherit-product, device/google/gs101/rising_common.mk)

include device/google/raviole/raven/device-rising.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_NAME := rising_raven
PRODUCT_DEVICE := raven
PRODUCT_MANUFACTURER := Google
RISING_MAINTAINER := H311Hound
RISING_CHIPSET := GS101

# Gms apps
WITH_GMS := true
TARGET_PREBUILT_PIXEL_LAUNCHER := true
# Ship pixel features (adaptivecharging, dreamliner etc)
TARGET_ENABLE_PIXEL_FEATURES := true
# Use google telephony framework
TARGET_USE_GOOGLE_TELEPHONY := true
# Use gs101 hotword blobs
TARGET_PREBUILT_GOOGLE_CAMERA := true
TARGET_PREBUILT_HOTWORD := true
TARGET_PREBUILT_HOTWORD_TYPE := tensor_gs101

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=raven \
    PRIVATE_BUILD_DESC="raven-user 14 UQ1A.231205.015 11084887 release-keys"

BUILD_FINGERPRINT := google/raven/raven:14/UQ1A.231205.015/11084887:user/release-keys

$(call inherit-product, vendor/google/raven/raven-vendor.mk)
