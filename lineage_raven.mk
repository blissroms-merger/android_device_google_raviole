#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_raven.mk)
$(call inherit-product, device/google/gs101/lineage_common.mk)

include device/google/raviole/raven/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_NAME := lineage_raven

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1440

# Matrixx
MATRIXX_BUILD_TYPE := Official
MATRIXX_MAINTAINER := H311Hound
MATRIXX_CHIPSET := Tensor_G1
MATRIXX_BATTERY := 5003mAh
MATRIXX_DISPLAY := 1080x2400
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := true

# Gms apps
WITH_GAPPS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_IS_PIXEL := true
TARGET_IS_PIXEL_6 := true
TARGET_PIXEL_STAND_SUPPORTED := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=raven \
    PRIVATE_BUILD_DESC="raven-user 14 UQ1A.231205.015 11084887 release-keys"

BUILD_FINGERPRINT := google/raven/raven:14/UQ1A.231205.015/11084887:user/release-keys

$(call inherit-product, vendor/google/raven/raven-vendor.mk)
