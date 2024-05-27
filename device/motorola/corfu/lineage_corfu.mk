#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from corfu device
$(call inherit-product, device/motorola/corfu/device.mk)

PRODUCT_DEVICE := corfu
PRODUCT_NAME := lineage_corfu
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g41
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="corfu_g-user 12 S3RWS32.138-29-5-8-2-2 8e959 release-keys"

BUILD_FINGERPRINT := motorola/corfu_g/corfu:12/S3RWS32.138-29-5-8-2-2/8e959:user/release-keys
