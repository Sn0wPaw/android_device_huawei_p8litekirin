# AOSP
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Init
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/init/init:root/init \
        $(LOCAL_PATH)/init/init.rc:root/init.rc

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/huawei/p8litekirin/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Ramdisk
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/ramdisk/init.5801.rc:root/init.5801.rc \
        $(LOCAL_PATH)/ramdisk/init.6165.rc:root/init.6165.rc \
        $(LOCAL_PATH)/ramdisk/init.10106.rc:root/init.10106.rc \
        $(LOCAL_PATH)/ramdisk/init.51054.rc:root/init.51054.rc \
        $(LOCAL_PATH)/ramdisk/init.102173.rc:root/init.102173.rc \
        $(LOCAL_PATH)/ramdisk/init.142782.rc:root/init.142782.rc \
        $(LOCAL_PATH)/ramdisk/init.audio.rc:root/init.audio.rc \
        $(LOCAL_PATH)/ramdisk/init.chip.usb.rc:root/init.chip.usb.rc \
        $(LOCAL_PATH)/ramdisk/init.connectivity.bcm43xx.rc:root/init.connectivity.bcm43xx.rc \
        $(LOCAL_PATH)/ramdisk/init.connectivity.hi110x.rc:root/init.connectivity.hi110x.rc \
        $(LOCAL_PATH)/ramdisk/init.connectivity.rc:root/init.connectivity.rc \
        $(LOCAL_PATH)/ramdisk/init.device.rc:root/init.device.rc \
        $(LOCAL_PATH)/ramdisk/init.extmodem.rc:root/init.extmodem.rc \
        $(LOCAL_PATH)/ramdisk/init.hi6210sft.rc:root/init.hi6210sft.rc \
        $(LOCAL_PATH)/ramdisk/init.hisi.rc:root/init.hisi.rc \
        $(LOCAL_PATH)/ramdisk/init.manufacture.rc:root/init.manufacture.rc \
        $(LOCAL_PATH)/ramdisk/init.performance.rc:root/init.performance.rc \
        $(LOCAL_PATH)/ramdisk/init.platform.rc:root/init.platform.rc \
        $(LOCAL_PATH)/ramdisk/init.protocol.rc:root/init.protocol.rc \
        $(LOCAL_PATH)/ramdisk/init.tee.rc:root/init.tee.rc

# Recovery
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/recovery/fstab.hi6210sft:root/fstab.hi6210sft \
        $(LOCAL_PATH)/recovery/init.recovery.hi110x.rc:root/init.recovery.hi110x.rc \
        $(LOCAL_PATH)/recovery/init.recovery.hi6210sft.rc:root/init.recovery.hi6210sft.rc \
        $(LOCAL_PATH)/recovery/ueventd.5801.rc:root/ueventd.5801.rc \
        $(LOCAL_PATH)/recovery/ueventd.6165.rc:root/ueventd.6165.rc \
        $(LOCAL_PATH)/recovery/ueventd.10106.rc:root/ueventd.10106.rc \
        $(LOCAL_PATH)/recovery/ueventd.51054.rc:root/ueventd.51054.rc \
        $(LOCAL_PATH)/recovery/ueventd.102173.rc:root/ueventd.102173.rc \
        $(LOCAL_PATH)/recovery/ueventd.142782.rc:root/ueventd.142782.rc \
        $(LOCAL_PATH)/recovery/ueventd.hi6210sft.rc:root/ueventd.hi6210sft.rc
