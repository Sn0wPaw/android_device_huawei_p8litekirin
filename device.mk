$(call inherit-product-if-exists, vendor/huawei/p8litekirin/p8litekirin-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/p8litekirin/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/huawei/p8litekirin/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Inherit Ramdisk
$(call inherit-product-if-exists, device/huawei/p8litekirin/ramdisk.mk)