USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/huawei/hi6210sft/BoardConfigVendor.mk

# 64 Bit
ANDROID_64=true
TARGET_SUPPORTS_32_BIT_APPS := true
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_USES_64_BIT_BINDER := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

#Audio
BOARD_USES_ALSA_AUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/huawei/p8litekirin/bluetooth

# Board
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_GPU := mali-450mp
TARGET_BOARD_PLATFORM := hi6210sft
TARGET_BOOTLOADER_BOARD_NAME := hi6210sft
TARGET_USES_HISI_DTIMAGE := true

PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes

# Hardware
ANDROID_ENABLE_RENDERSCRIPT := true
BOARD_EGL_CFG := device/huawei/p8litekirin/cfg/egl.cfg
TARGET_HARDWARE_3D := true
USE_OPENGL_RENDERER := true

# Kernel
BOARD_KERNEL_CMDLINE := hisi_dma_print=0 vmalloc=384M maxcpus=8 no_irq_affinity androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x07478000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x07b88000 --tags_offset 0x02988000
TARGET_PREBUILT_KERNEL := device/huawei/p8litekirin/kernel

# Media symbols > thank you codeworkx
BOARD_PROVIDES_ADDITIONAL_BIONIC_STATIC_LIBS += libc_huawei_symbols

# Partitionsizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11605639168
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
DEVICE_RESOLUTION := 720x1280
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_USERIMAGES_USE_EXT4 := true

# TWRP specific flags
#TW_NO_USB_STORAGE := true
# if you dont want DEVICE_RESOLUTION use this
# TW_THEME := portrait_mdpi
#TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd_backlight0/brightness"
#TW_CUSTOM_BATTERY_PATH := "/sys/devices/platform/bq_bci_battery.1/power_supply/Battery"
#TW_MAX_BRIGHTNESS := 255
#TW_BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/p8/graphics.c

# Wifi
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WLAN_DEVICE_REV            := bcm4343
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WIFI_BAND                        := 802_11_ABG
WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/firmware/fw_bcm4343s_apsta_hw.bin"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_P2P          := "/system/vendor/firmware/fw_bcm4343s_p2p_hw.bin"
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/firmware/fw_bcm4343s_hw.bin"
WPA_SUPPLICANT_VERSION           := VER_0_8_X
