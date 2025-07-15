#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/oneplus/sm8650-common/BoardConfigCommon.mk

DEVICE_PATH := device/realme/enzo

# Assert
TARGET_OTA_ASSERT_DEVICE := RMX3888,enzo,RE5C37

# Display
TARGET_SCREEN_DENSITY := 500

# Kernel
TARGET_KERNEL_CONFIG += vendor/oplus/enzo.config

# Partitions
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 16638803968 # (BOARD_SUPER_PARTITION_SIZE - 4 MiB)
BOARD_SUPER_PARTITION_SIZE := 16642998272

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# Include the proprietary files BoardConfig.
include vendor/realme/enzo/BoardConfigVendor.mk
