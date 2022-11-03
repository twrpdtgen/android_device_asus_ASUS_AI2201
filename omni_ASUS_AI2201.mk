#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from ASUS_AI2201 device
$(call inherit-product, device/asus/ASUS_AI2201/device.mk)

PRODUCT_DEVICE := ASUS_AI2201
PRODUCT_NAME := omni_ASUS_AI2201
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_AI2201
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="WW_AI2201-user 12 SKQ1.220406.001 32.2810.2210.216-0 release-keys"

BUILD_FINGERPRINT := asus/WW_AI2201/ASUS_AI2201:12/SKQ1.220406.001/32.2810.2210.216-0:user/release-keys
