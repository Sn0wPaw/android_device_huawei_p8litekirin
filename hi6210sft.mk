# Android Opeu Source System Base
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, build/target/product/full_base.mk)


# AAPT Settings
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Blobs
$(call inherit-product-if-exists, vendor/huawei/hi6210sft/hi6210sft-vendor.mk)

# BT
$(call inherit-product-if-exists, hardware/ti/wpan/ti-wpan-products.mk)

# Boot Animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Charger
PRODUCT_PACKAGES += \
	charger \
	charger_res_images

PRODUCT_COPY_FILES += \
	device/huawei/hi6210sft/charger/battery_fail.png:root/res/images/charger/battery_fail.png \
	device/huawei/hi6210sft/charger/battery_scale.png:root/res/images/charger/battery_scale.png

# Chromium 
PRODUCT_COPY_FILES := \
	device/huawei/hi6210sft/chromium/libwebviewchromium64.so:system/lib64/libwebviewchromium.so \
	device/huawei/hi6210sft/chromium/libwebviewchromium.so:system/lib/libwebviewchromium.so


# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

# call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# File System
PRODUCT_PACKAGES += \
	e2fsck \
	make_ext4fs \
	minivold \
	setup_fs 

# HiSilicon 6210 Packages
PRODUCT_PACKAGES += \
	camera.hi6210sft \
	gralloc.hi6210sft \
	hwcomposer.hi6210sft \
	libGLES_android \
	libGLES_mali \
	keystore.hi6210sft \
	memtrack.hi6210sft \
	power.hi6210sft \
	sensors.hi6210sft

# Add openssh support for remote debugging and job submission
PRODUCT_PACKAGES += ssh sftp scp sshd ssh-keygen sshd_config start-ssh uim wpa_supplicant

# Build and run only ART
PRODUCT_RUNTIMES := runtime_libart_default

# Build BT a2dp audio HAL
PRODUCT_PACKAGES += audio.a2dp.default

# Needed to sync the system clock with the RTC clock
PRODUCT_PACKAGES += hwclock

# Include USB speed switch App
PRODUCT_PACKAGES += UsbSpeedSwitch

# Build libion for new double-buffering HDLCD driver
PRODUCT_PACKAGES += libion

# Build gatord daemon for DS-5/Streamline
PRODUCT_PACKAGES += gatord

# Build gralloc for Juno
PRODUCT_PACKAGES += gralloc.hi6210sft

# Include ION tests
PRODUCT_PACKAGES += iontest \
                    ion-unit-tests

# Set zygote config
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.zygote=zygote64_32
PRODUCT_PROPERTY_OVERRIDES += \
         debug.sf.no_hw_vsync=1 \
         ro.secure=0 \
         ro.adb.secure=0

PRODUCT_COPY_FILES += system/core/rootdir/init.zygote64_32.rc:root/init.zygote64_32.rc

# Kernel, My Own Cannabis :D 
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/huawei/hi6210sft/kernel
else
 	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Keys
$(call inherit-product-if-exists, device/huawei/hi6210sft/keylayout.mk)

# Media
PRODUCT_COPY_FILES += \
	device/huawei/hi6210sft/media/media_codecs.xml:system/etc/media_codecs.xml \
	device/huawei/hi6210sft/media/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml	

# NFC packages
PRODUCT_PACKAGES += \
	com.android.nfc_extras \
    	libnfc-nci \
    	libnfc_nci_jni \
    	nfc_nci.bcm2079x.default \
    	NfcNci \
    	Tag     

# NFCEE access control
NFCEE_ACCESS_PATH := device/huawei/hi6210sft/nfc/nfcee_access.xml

# NFC firmware
PRODUCT_COPY_FILES += \
    	$(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml \
	device/huawei/hi6210sft/nfc/lib/libnfc-nci.so:system/lib/libnfc-nci.so \
	device/huawei/hi6210sft/nfc/lib/libnfc_nci_jni.so:system/lib/libnfc_nci_jni.so \
	device/huawei/hi6210sft/nfc/lib/libnfc_ndef.so:system/lib64/libnfc_ndef.so \
	device/huawei/hi6210sft/nfc/lib64/libnfc-nci.so:system/lib64/libnfc-nci.so \
	device/huawei/hi6210sft/nfc/lib64/libnfc_nci_jni.so:system/lib64/libnfc_nci_jni.so \
	device/huawei/hi6210sft/nfc/lib64/libnfc_ndef.so:system/lib64/libnfc_ndef.so \
	device/huawei/hi6210sft/nfc/lib64/hw/nfc_nci.pn54x.default.so:system/lib64/hw/nfc_nci.pn54x.default.so \
    	device/huawei/hi6210sft/nfc/libnfc-brcm-alice.conf:system/etc/libnfc-brcm-alice.conf \
    	device/huawei/hi6210sft/nfc/libnfc-nxp-alice.conf:system/etc/libnfc-nxp-alice.conf 

# NFC permissions
PRODUCT_COPY_FILES += \
    	frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    	frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    	frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml

# Ramdisk
$(call inherit-product-if-exists, device/huawei/hi6210sft/ramdisk.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/huawei/hi6210sft/overlay

# Sepolicy
PRODUCT_COPY_FILES += \
	device/huawei/hi6210sft/sepolicy/file_contexts:root/file_contexts \
	device/huawei/hi6210sft/sepolicy/property_contexts:root/property_contexts \
	device/huawei/hi6210sft/sepolicy/seapp_contexts:root/seapp_contexts \
	device/huawei/hi6210sft/sepolicy/service_contexts:root/service_contexts 

# Thermal
PRODUCT_COPY_FILES += \
	device/huawei/hi6210sft/configs/thermald.xml:system/etc/thermald.xml \
	device/huawei/hi6210sft/configs/thermald_performance.xml:system/etc/thermald_performance.xml

# Wifi
PRODUCT_COPY_FILES += \
	device/huawei/hi6210sft/wpa/hostapd_hisi.conf:system/etc/wifi/hostapd_hisi.conf \
	device/huawei/hi6210sft/wpa/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
	device/huawei/hi6210sft/wpa/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	device/huawei/hi6210sft/wpa/wpa_supplicant_hisi.conf:system/etc/wifi/wpa_supplicant_hisi.conf 
	

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := cm_hi6210sft
PRODUCT_DEVICE := hi6210sft
