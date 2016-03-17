# 64 Bit
ANDROID_64=true
ANDROID_ENABLE_RENDERSCRIPT := true
TARGET_SUPPORTS_32_BIT_APPS := true
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_USES_64_BIT_BINDER := true
TARGET_USES_HISI_DTIMAGE := true

# ADB
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.allow.mock.location=1
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mass_storage

# Architecture
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_ARCH_VARIANT_FPU := neon
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_ABI_LIST_32_BIT := armeabi-v7a,armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Assert
TARGET_OTA_ASSERT_DEVICE := p8lite,alice,P8-LITE,ALE-L21

# Board
BOARD_HAS_NO_SELECT_BUTTON 	:= true
BOARD_HAS_LARGE_FILESYSTEM 	:= true
BOARD_HAS_LOCKED_BOOTLOADER := true
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_USE_CUSTOM_RECOVERY_FONT 	:= \"roboto_15x24.h\"
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RPC := true
TARGET_BOARD_PLATFORM := hi6210sft
TARGET_BOARD_PLATFORM_GPU := mali-450mp
TARGET_BOOTLOADER_BOARD_NAME := hi6210sft
TARGET_USERIMAGES_USE_EXT4 := true

# Common Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Device Path
LOCAL_PATH := device/huawei/hi6210sft

# Enable suspend during charger mode
BOARD_CHARGER_ENABLE_SUSPEND := true

# Graphics
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg
USE_OPENGL_RENDERER := true

# Hardware
BOARD_HAL_STATIC_LIBRARIES += libhealthd.hi6210sft

# Init
TARGET_UNIFIED_DEVICE := true

# Kernel
BOARD_KERNEL_BASE     := 0x00000000
BOARD_KERNEL_CMDLINE := hisi_dma_print=0 vmalloc=384M maxcpus=8 no_irq_affinity androidboot.selinux=enforcing
BOARD_KERNEL_OFFSET     := 0x00000000
BOARD_KERNEL_PAGESIZE    := 2048
BOARD_TAGS_OFFSET     := 0x02980000
BOARD_MKBOOTIMG_ARGS += --kernel_offset "$(BOARD_KERNEL_OFFSET)"
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset 0x07b80000
BOARD_MKBOOTIMG_ARGS += --tags_offset "$(BOARD_TAGS_OFFSET)"
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel

# Libc extensions
BOARD_PROVIDES_ADDITIONAL_BIONIC_STATIC_LIBS += libc_huawei_symbols

# Liblight
TARGET_PROVIDES_LIBLIGHT := true

# Recovery
BOARD_RECOVERY_NEEDS_FBIOPAN_DISPLAY := true
BOARD_RECOVERY_SWIPE := true
RECOVERY_FSTAB_VERSION := 2
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/twrp.fstab
TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/recovery/init.rc
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

BOARD_SEPOLICY_DIRS += \
       device/huawei/hi6210sft/sepolicy
	   
BOARD_SEPOLICY_UNION += \
       installd.te \
       file_contexts
	   
# Screen
DEVICE_SCREEN_HEIGHT := 1280
DEVICE_SCREEN_WIDTH := 720

# Suffix
HISI_TARGET_PRODUCT := hi6210sft
TARGET_BOARD_SUFFIX := _32

# TWRP
BRIGHTNESS_SYS_FILE := "/sys/devices/platform/balong_fb.1/leds/lcd_backlight0/brightness"
DEVICE_RESOLUTION := 720x1280
HAVE_SELINUX := true
TW_BRIGHTNESS_PATH := "/sys/devices/platform/balong_fb.1/leds/lcd_backlight0/brightness"
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/platform/hi_mci.0/by-name/userdata"
TW_CRYPTO_MNT_POINT := "/data"
TW_CUSTOM_BATTERY_PATH := "/sys/devices/battery.45/power_supply/Battery"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_FLASH_FROM_STORAGE := true
TW_INCLUDE_JB_CRYPTO := true
TW_MAX_BRIGHTNESS := 255
TW_USE_TOOLBOX := true
TWHAVE_SELINUX := true

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file"

# Wifi & Bluetooth
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WLAN_DEVICE_REV            := bcm4343
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/firmware/fw_bcm4343s_hw.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/firmware/fw_bcm4343s_apsta_hw.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/system/vendor/firmware/fw_bcm4343s_p2p_hw.bin"
WIFI_BAND                        := 802_11_ABG