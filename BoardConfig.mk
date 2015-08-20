#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from Exynos 5420 Common
-include device/samsung/exynos5420-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/chagallwifi

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun0/file

# Kernel
TARGET_KERNEL_CONFIG := deathly_chagallwifi_defconfig

#TARGET_PREBUILT_RECOVERY := device/lge/d851/recovery.img

# Kernel & ToolChains
#TARGET_KERNEL_CONFIG := cyanogenmod_d851_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-6.0
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := prebuilts/gcc/linux-x86/arm/arm-linux-gnueabi-4.9/bin/arm-eabi-
# Rom ToolChains
TARGET_ROM_CUSTOM_TOOLCHAIN := arm-linux-androideabi-4.9
#TARGET_GCC_VERSION := 4.8
#TARGET_TOOLS_PREFIX := prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.8/bin/arm-linux-androideabi-
# RR Config Flags
#TARGET_TC_ROM := SM-4.8
#TARGET_TC_KERNEL := SM-4.9
#TARGET_GCC_VERSION_EXP := $(TARGET_TC_ROM)
#TARGET_KERNEL_CUSTOM_TOOLCHAIN := $(TARGET_TC_KERNEL)


# Charging mode
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_BATTERY_DEVICE_NAME := battery

# Bootloader
TARGET_OTA_ASSERT_DEVICE := chagallwifi

# Hardware
#BOARD_HARDWARE_CLASS += device/samsung/chagallwifi/cmhw

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2527068160
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12637437952
BOARD_FLASH_BLOCK_SIZE := 4096

BOARD_SEPOLICY_UNION += \
	file_contexts \
	debuggerd.te \
	device.te \
	domain.te \
	drmserver.te \
	file.te \
	gpsd.te \
	init.te \
	kernel.te \
	mediaserver.te \
	service_contexts \
	servicemanager.te \
	shell.te \
	sysinit.te \
	system_app.te \
	system_server.te \
	vold.te \
	wpa.te


# PowerHAL
TARGET_POWERHAL_VARIANT := chagallwifi

# SELinux
include device/samsung/exynos5420-common/sepolicy/sepolicy.mk

# inherit from the proprietary version
-include vendor/samsung/chagallwifi/BoardConfigVendor.mk
