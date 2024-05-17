#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from K30 device
$(call inherit-product, device/kissabc/K30/device.mk)

PRODUCT_DEVICE := K30
PRODUCT_NAME := omni_K30
PRODUCT_BRAND := KissABC
PRODUCT_MODEL := K30
PRODUCT_MANUFACTURER := kissabc

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="s9863a2h10__s9801ah_2g-user 9 PPR1.180610.011 36320 release-keys"

BUILD_FINGERPRINT := rockchip/rk312x/rk312x:6.0.1/MXC89K/user.fyl.20170927.202757:userdebug/test-keys
