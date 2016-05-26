# Android Open Source Project Common Settings
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# AAPt
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# APN
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/etc/apns-conf.xml:system/etc/apns-conf.xml

# ART
PRODUCT_RUNTIMES := runtime_libart_default

# Audio
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/etc/audio_policy.conf:system/etc/audio_policy.conf

# Boot
PRE_BOOT_FILES := isp.bin ons.bin
PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/rootdir/isp.bin:system/isp.bin \
       $(LOCAL_PATH)/rootdir/ons.bin:system/ons.bin

# Characteristic
PRODUCT_CHARACTERISTICS := default

# Codecs
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/etc/media_codecs.xml:system/etc/media_codecs.xml \
        $(LOCAL_PATH)/rootdir/etc/media_profiles.xml:system/etc/media_profiles.xml

# Dalvik
$(call inherit-product-if-exists, frameworks/base/build/tablet-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/tablet-dalvik-heap.mk)

# Display
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Graphics
PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/rootdir/lib/egl/libGLES_mali.so:system/lib/egl/libGLES_mali.so \
       $(LOCAL_PATH)/rootdir/lib/hw/gralloc.hi6210sft.so:system/lib/hw/gralloc.hi6210sft.so \
       $(LOCAL_PATH)/rootdir/lib64/egl/libGLES_mali.so:system/lib64/egl/libGLES_mali.so \
       $(LOCAL_PATH)/rootdir/lib64/hw/gralloc.hi6210sft.so:system/lib64/hw/gralloc.hi6210sft.so

PRODUCT_PACKAGES := \

# Hardware TI
$(call inherit-product-if-exists, hardware/ti/wpan/ti-wpan-products.mk)

PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/bt-wifi-firmware-util/TIInit_11.8.32.bts:system/etc/firmware/ti-connectivity/TIInit_11.8.32.bts \
        $(LOCAL_PATH)/bt-wifi-firmware-util/TIInit_11.8.32.bts:system/etc/firmware/TIInit_11.8.32.bts \
        $(LOCAL_PATH)/bt-wifi-firmware-util/wl18xx-fw-4.bin:system/etc/firmware/ti-connectivity/wl18xx-fw-4.bin

# Hi6210sft Drivers
PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/rootdir/lib/hw/audio.primary.hi6210sft.so:system/lib/hw/audio.primary.hi6210sft.so \
       $(LOCAL_PATH)/rootdir/lib/hw/hwcomposer.hi6210sft.so:system/lib/hw/hwcomposer.hi6210sft.so \
       $(LOCAL_PATH)/rootdir/lib/hw/keystore.hi6210sft.so:system/lib/hw/keystore.hi6210sft.so\
       $(LOCAL_PATH)/rootdir/lib/hw/memtrack.hi6210sft.so:system/lib/hw/memtrack.hi6210sft.so \
       $(LOCAL_PATH)/rootdir/lib/hw/sensors.hi6210sft.so:system/lib/hw/sensors.hi6210sft.so \
       $(LOCAL_PATH)/rootdir/lib64/hw/audio.primary.hi6210sft.so:system/lib64/hw/udio.primary.hi6210sft.so \
       $(LOCAL_PATH)/rootdir/lib64/hw/hwcomposer.hi6210sft.so:system/lib64/hw/hwcomposer.hi6210sft.so \
       $(LOCAL_PATH)/rootdir/lib64/hw/keystore.hi6210sft.so:system/lib64/hw/keystore.hi6210sft.so \
       $(LOCAL_PATH)/rootdir/lib64/hw/memtrack.hi6210sft.so:system/lib64/hw/memtrack.hi6210sft.so \
       $(LOCAL_PATH)/rootdir/lib64/hw/sensors.hi6210sft.so:system/lib64/hw/sensors.hi6210sft.so

PRODUCT_PACKAGES := \
	audio.a2dp.default \
	gatord \
	hwcomposer.hi6210sft \
	hwclock \
	keystore.hi6210sft \
	libGLES_android \
	sensors.hi6210sft

# ION
PRODUCT_PACKAGES += \
	iontest \
	ion-unit-tests              
	
# Linaro
INCLUDE_TESTS ?= 1

# OpenSSH
PRODUCT_PACKAGES += \
	scp \
	sftp \
	ssh \
	sshd \
	ssh-keygen \
	sshd_config \
	start-ssh \
	uim \
	wpa_supplicant

# Permissions
PRODUCT_COPY_FILES += $(call add-to-product-copy-files-if-exists,\
        $(LOCAL_PATH)/rootdir/etc/permissions/android.hardware.screen.xml:system/etc/permissions/android.hardware.screen.xml \
        frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
        frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
        frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
        frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
        frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
        frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
	frameworks/native/data/etc/android.software.backup.xml:system/etc/permissions/android.software.backup.xml)

# Ramdisk
PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/ramdisk/fstab.hi6210sft:root/fstab.hi6210sft \
       $(LOCAL_PATH)/ramdisk/init.chip.hi6210sft.rc:root/init.chip.hi6210sft.rc \
       $(LOCAL_PATH)/ramdisk/init.hi6210sft.rc:root/init.hi6210sft.rc \
       $(LOCAL_PATH)/ramdisk/init.recovery.hi6210sft.rc:root/init.recovery.hi6210sft.rc \
       $(LOCAL_PATH)/ramdisk/ueventd.hi6210sft.rc:root/ueventd.hi6210sft.rc \

# Wifi
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
        $(LOCAL_PATH)/rootdir/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

PRODUCT_PACKAGES := \
        dhcpcd.conf \
    	hostapd \
    	libwpa_client \
    	wpa_supplicant \
    	wpa_supplicant.conf

# Zygote
PRODUCT_COPY_FILES += \
	system/core/rootdir/init.zygote64_32.rc:root/init.zygote64_32.rc

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.zygote=zygote64_32

PRODUCT_PROPERTY_OVERRIDES += \
	 ro.adb.secure=0 \
         ro.secure=0 \
         debug.sf.no_hw_vsync=1
