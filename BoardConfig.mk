# 64 Bit
ANDROID_64=true
TARGET_SUPPORTS_32_BIT_APPS := true
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_USES_64_BIT_BINDER := true

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

TARGET_GLOBAL_CFLAGS += -mfpu=neon-vfpv4 -mtune=cortex-a15 -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon-vfpv4 -mtune=cortex-a15 -mfloat-abi=softfp
TARGET_EXTRA_CFLAGS := -mtune=cortex-a15 -mcpu=cortex-a15

# Audio
BOARD_USES_GENERIC_AUDIO := true

# Blobs
-include vendor/hisi/hi6210sft/BoardConfigVendor.mk

# Bluetooth
#BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := "device/huawei/p8litekirin/bluetooth"
#BOARD_BLUEDROID_VENDOR_CONF := device/huawei/p8litekirin/bluetooth/vnd_hi6210sft.txt
#BOARD_HAVE_BLUETOOTH := true
#BOARD_HAVE_BLUETOOTH_BCM := true

# Board
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_VENDOR := huawei
BOARD_VENDOR_PLATFORM := p8litekirin
TARGET_BOARD_PLATFORM := p8litekirin
TARGET_BOOTLOADER_BOARD_NAME := p8litekirin
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := false

# Camera
USE_CAMERA_STUB := true

# Chromium
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes

# Dex-preoptimization to speed up first boot sequence
ifeq ($(HOST_OS),linux)
  ifeq ($(TARGET_BUILD_VARIANT),user)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := false
    endif
  endif
endif

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Graphics
ANDROID_ENABLE_RENDERSCRIPT := true
BOARD_EGL_CFG := device/huawei/p8litekirin/system/lib/egl/egl.cfg
BOARD_EGL_WORKAROUND_BUG_10194508 := true
TARGET_BOARD_GPU := mali-450mp
TARGET_HARDWARE_3D := true
USE_OPENGL_RENDERER := true

# Kernel
BOARD_KERNEL_CMDLINE := hisi_dma_print=0 vmalloc=384M maxcpus=8 coherent_pool=512K no_irq_affinity androidboot.selinux=disabled ate_enable=true loglevel=7 androidboot.hardware=hi6210sft selinux=0

BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_BASE     := 0x07478000
BOARD_KERNEL_OFFSET   := 0x00008000
BOARD_RAMDISK_OFFSET  := 0x07b88000
BOARD_TAGS_OFFSET     := 0x02988000

BOARD_MKBOOTIMG_ARGS += --kernel_offset "$(BOARD_KERNEL_OFFSET)"
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset "$(BOARD_RAMDISK_OFFSET)"
BOARD_MKBOOTIMG_ARGS += --tags_offset "$(BOARD_TAGS_OFFSET)"
TARGET_PREBUILT_KERNEL := device/huawei/p8litekirin/kernel

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11605639168
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USES_HISI_DTIMAGE := true
TARGET_USERIMAGES_USE_EXT4 := true

# Recovery
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_RECOVERY_NEEDS_FBIOPAN_DISPLAY := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
DEVICE_RESOLUTION := 720x1280
RECOVERY_FSTAB_VERSION := 2
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_FSTAB := device/huawei/p8litekirin/recovery/fstab.hi6210sft
TARGET_RECOVERY_PIXEL_FORMAT := ABGR_8888
