#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from enzo device
$(call inherit-product, device/realme/enzo/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_enzo
PRODUCT_DEVICE := enzo
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3888

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi_64-user 15 AP3A.240617.008 1755257682114 release-keys" \
    BuildFingerprint=realme/RMX3888/RE5C37:15/AP3A.240617.008/U.1ee9110_556b6-196ad:user/release-keys \
    DeviceName=RE5C37 \
    DeviceProduct=RMX3888 \
    SystemDevice=RE5C37 \
    SystemName=RMX3888
