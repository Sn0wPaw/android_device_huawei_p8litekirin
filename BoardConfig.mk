# Android Open Source Project Base System
ANDROID_64=true
ANDROID_ENABLE_RENDERSCRIPT := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a15

# Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_GENERIC_AUDIO := false

# Blobs
-include vendor/huawei/hi6210sft/BoardConfigVendor.mk

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := "device/huawei/hi6210sft/bluetooth"
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Board
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_BOARD_GPU := mali-450mp
TARGET_BOARD_PLATFORM := hi6210sft
TARGET_BOOTLOADER_BOARD_NAME := hi6210sft
TARGET_CPU_SMP := true
TARGET_USES_HISI_DTIMAGE := true
TARGET_USERIMAGES_USE_EXT4 := true

# Camera STUB
USE_CAMERA_STUB := true

# Hardware
TARGET_HARDWARE_3D := true
USE_OPENGL_RENDERER := true

# Kernel
BOARD_KERNEL_CMDLINE := hisi_dma_print=0 vmalloc=384M maxcpus=8 no_irq_affinity androidboot.selinux=enforcing
BOARD_KERNEL_BASE := 0x07478000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x07b88000 --tags_offset 0x02988000
TARGET_KERNEL_PREBUILT := device/huawei/hi6210sft/kernel

# Media symbols > thank you codeworkx
BOARD_PROVIDES_ADDITIONAL_BIONIC_STATIC_LIBS += libc_huawei_symbols

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11605639168
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true

# RIL
BOARD_RIL_CLASS := ../../../device/huawei/hi6210sft/ril/

# Wifi
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WLAN_DEVICE_REV            := bcm4343
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WIFI_BAND                        := 802_11_ABG
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/firmware/fw_bcm4343s_hw.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/firmware/fw_bcm4343s_apsta_hw.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/system/vendor/firmware/fw_bcm4343s_p2p_hw.bin"
WPA_SUPPLICANT_VERSION           := VER_0_8_X
