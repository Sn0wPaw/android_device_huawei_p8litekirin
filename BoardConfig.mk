# 64 Bit Support
ANDROID_64=true
ANDROID_ENABLE_RENDERSCRIPT := true
TARGET_SUPPORTS_32_BIT_APPS := true
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_USES_64_BIT_BINDER := true
TARGET_USES_HISI_DTIMAGE := true
USE_OPENGL_RENDERER := true

# Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_GENERIC_AUDIO := false

# Camera
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/huawei/hi6210sft/BoardConfigVendor.mk

# 1st Arch
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := generic
TARGET_CPU_ABI := arm64-v8a
TARGET_BOARD_GPU := mali-450mp
#TARGET_CPU_ABI2 :=

# 2nd Arch
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_VARIANT := cortex-a15
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi

# RIL
BOARD_RIL_CLASS := ../../../device/huawei/hi6210sft/ril/

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := "device/huawei/hi6210sft/bluetooth"
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Board
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_BOARD_PLATFORM := hi6210sft
TARGET_BOOTLOADER_BOARD_NAME := hi6210sft
TARGET_NO_BOOTLOADER := true

TARGET_CPU_SMP := true

# Kernel
BOARD_KERNEL_CMDLINE := hisi_dma_print=0 vmalloc=384M maxcpus=8 no_irq_affinity androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x07478000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x07b88000 --tags_offset 0x02988000
TARGET_KERNEL_PREBUILT := device/huawei/hi6210sft/kernel
ifeq ($(strip $(USE_LINARO_TOOLCHAIN)),true)
# 64bit toolchain
KERNEL_TOOLS_PREFIX ?= $(realpath $(TOP))/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9-linaro/bin/aarch64-linux-android-
TARGET_TOOLS_PREFIX ?= $(realpath $(TOP))/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9-linaro/bin/aarch64-linux-android-
# 32bit toolchain
# Linaro 32bit toolchain is disabled because of this bug https://bugs.linaro.org/show_bug.cgi?id=383
2ND_TARGET_TOOLCHAIN_ROOT ?= $(realpath $(TOP))/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9-linaro
2ND_TARGET_TOOLS_PREFIX ?= $(realpath $(TOP))/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9-linaro/bin/arm-linux-androideabi-
endif

# Media symbols > thank you codeworkx
BOARD_PROVIDES_ADDITIONAL_BIONIC_STATIC_LIBS += libc_huawei_symbols

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11605639168
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_USERIMAGES_USE_EXT4 := true

DEVICE_RESOLUTION := 720x1280
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd_backlight0/brightness"
TW_CUSTOM_BATTERY_PATH := "/sys/devices/platform/bq_bci_battery.1/power_supply/Battery"
TW_MAX_BRIGHTNESS := 255
TW_NO_USB_STORAGE := true
TW_THEME := portrait_hdpi

# Wifi 
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WLAN_DEVICE_REV            := bcm4343
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WIFI_BAND                        := 802_11_ABG
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/firmware/fw_bcm4343s_hw.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/firmware/fw_bcm4343s_apsta_hw.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/system/vendor/firmware/fw_bcm4343s_p2p_hw.bin"
WPA_SUPPLICANT_VERSION           := VER_0_8_X
