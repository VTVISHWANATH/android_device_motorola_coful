#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from coful device
$(call inherit-product, device/motorola/coful/device.mk)

PRODUCT_NAME := lineage_coful
PRODUCT_DEVICE := coful
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g82 5G
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="coful_g-user 11 S1SU32.73-112-2 d0fb6 release-keys"

BUILD_FINGERPRINT := motorola/coful_g/coful:11/S1SU32.73-112-2/d0fb6:user/release-keys
