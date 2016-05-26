# 64 Bit
ANDROID_64=true
TARGET_SUPPORTS_32_BIT_APPS := true
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_USES_64_BIT_BINDER := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a15

# Audio
BOARD_USES_GENERIC_AUDIO := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/huawei/hi6210sft/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Board
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_VENDOR_PLATFORM := hi6210sft
TARGET_BOARD_PLATFORM := hi6210sft
TARGET_BOARD_INFO_FILE := device/huawei/hi6210sft/board-info.txt

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := hi6210sft
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Chrome
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes

# CPU
TARGET_CPU_SMP := true

# Display
BOARD_RECOVERY_NEEDS_FBIOPAN_DISPLAY := true
TARGET_USE_PAN_DISPLAY := true

# Font Extension
EXTENDED_FONT_FOOTPRINT := true

# Graphics Rendering
ANDROID_ENABLE_RENDERSCRIPT := true
BOARD_EGL_CFG := device/hisi/hi6210sft/rootdir/lib/egl/egl.cfg
BOARD_EGL_WORKAROUND_BUG_10194508 := true
TARGET_BOARD_GPU := mali-450mp
TARGET_HARDWARE_3D := true
USE_OPENGL_RENDERER := true

# Kernel
BOARD_KERNEL_BASE     := 0x07478000
BOARD_KERNEL_CMDLINE  := console=ttyAMA0,115200 androidboot.console=ttyAMA0 androidboot.hardware=hi6210sft hisi_dma_print=0 vmalloc=384M maxcpus=8 coherent_pool=512K no_irq_affinity ate_enable=true loglevel=7 selinux=0
BOARD_KERNEL_OFFSET   := 0x00008000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET  := 0x07b88000
BOARD_TAGS_OFFSET     := 0x02988000

TARGET_KERNEL_SOURCE := kernel/huawei/hi6210sft

# Kernel Architecture
KERNEL_CONFIG = arch/arm64/configs/defconfig android/configs/android-base.cfg  android/configs/android-recommended.cfg
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_USES_UNCOMPRESSED_KERNEL := true

# Kernel Configs
ifneq ($(FORCE_32_BIT),true)
TARGET_KERNEL_CONFIG := cyanogenmod_hi6210sft_defconfig
else
TARGET_KERNEL_CONFIG := hisi_hi6210sft_defconfig
endif

# Kernel Modules
BUILD_KERNEL_MODULES ?= true
GATOR_DAEMON_PATH := $(TARGET_KERNEL_SOURCE)

# Linaro
ifeq ($(strip $(USE_LINARO_TOOLCHAIN)),true)
KERNEL_TOOLS_PREFIX ?= $(realpath $(TOP))/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9-linaro/bin/aarch64-linux-android-
TARGET_TOOLS_PREFIX ?= $(realpath $(TOP))/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9-linaro/bin/aarch64-linux-android-
endif

# Minikin
USE_MINIKIN := true

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
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
DEVICE_RESOLUTION := 720x1280
RECOVERY_FSTAB_VERSION := 2
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_FSTAB := device/huawei/hi6210sft/ramdisk/fstab.hi6210sft
TARGET_RECOVERY_PIXEL_FORMAT := ABGR_8888

# Sepolicy
BOARD_SEPOLICY_DIRS += device/huawei/hi6210sft/sepolicy
BOARD_SEPOLICY_UNION += \
        file.te \
        genfs_contexts \
        init.te \
        kernel.te

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
CONFIG_DRIVER_NL80211 := y
CONFIG_DRIVER_WEXT :=y
WPA_SUPPLICANT_VERSION := VER_0_8_X
