TARGET_NO_BOOTLOADER := true

DEVICE_PATH := device/amazon/mantis

TARGET_BOARD_PLATFORM := mt8695

#TARGET_ARCH := arm64
#TARGET_ARCH_VARIANT := armv8-a
#TARGET_CPU_ABI := arm64-v8a
#TARGET_CPU_ABI2 :=
#TARGET_CPU_VARIANT := generic

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7

TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-androideabi-

BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,32N2 androidboot.selinux=permissive

BOARD_KERNEL_BASE := 0x40008000
BOARD_KERNEL_OFFSET := 0
BOARD_KERNEL_PAGESIZE := 2048
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_KERNEL_IMAGE_NAME := zImage-dtb


BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE := 536870912
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1153433600
BOARD_VENDORIMAGE_PARTITION_SIZE := 157286400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5920046592
BOARD_HAS_NO_SELECT_BUTTON := true

TW_THEME := landscape_hdpi

TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/recovery.fstab

TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/zImage
#TARGET_KERNEL_SOURCE := kernel/amazon/mantis
#TARGET_KERNEL_CONFIG := mantis_defconfig
#TARGET_KERNEL_VARIANT_CONFIG := mantis_defconfig

BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00000000 --ramdisk_offset 0x03400000 --second_offset 0x00ef8000 --tags_offset 0x0dff8000
# original - not enough space for us!
#BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00000000 --ramdisk_offset 0x03ff8000 --second_offset 0x00ef8000 --tags_offset 0x0dff8000

TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp

TW_DEFAULT_EXTERNAL_STORAGE := true
#TW_INCLUDE_CRYPTO := true
#TW_CRYPTO_USE_SYSTEM_VOLD := true

BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true

TW_NO_BATT_PERCENT := true
TW_NO_SCREEN_TIMEOUT := true
TW_AMONET := true
TW_HACKED_BL_BUTTON := true
TW_BOOT_MENU := true
TW_DEFAULT_BACKUP_LIST := "/system_image;/vendor_image;/data;/boot;"
