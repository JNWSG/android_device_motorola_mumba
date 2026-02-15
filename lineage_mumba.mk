#
# Copyright (C) 2026 The LineageOS Project
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from mumba device
$(call inherit-product, device/motorola/mumba/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_mumba
PRODUCT_DEVICE := mumba
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Moto G57
PRODUCT_MANUFACTURER := motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="mumba_gp-user 16 W1WAA36.48-12-28 ec5cc-14fbc release-keys MW-274"

BUILD_FINGERPRINT := motorola/mumba_gp/mumba:16/W1WAA36.48-12-28/ec5cc-14fbc:user/release-keys
