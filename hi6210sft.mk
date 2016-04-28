# Android Open Source Project Common System
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# ADB
PRODUCT_PROPERTY_OVERRIDES += \
         debug.sf.no_hw_vsync=1 \
         ro.secure=0 \
         ro.adb.secure=0

# AAPT high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Audio
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/audio/algorithm/algorithm_ALICE_normal.xml:system/etc/audio/algorithm/algorithm_ALICE_normal.xml \
        $(LOCAL_PATH)/audio/algorithm/algorithm_ALICEPA_normal.xml:system/etc/audio/algorithm/algorithm_ALICEPA_normal.xml \
        $(LOCAL_PATH)/audio/algorithm/algorithm_SHINE_normal.xml:system/etc/audio/algorithm/algorithm_SHINE_normal.xml \
        $(LOCAL_PATH)/audio/algorithm/ascend_algorithm_default.xml:system/etc/audio/algorithm/ascend_algorithm_default.xml \
	$(LOCAL_PATH)/audio/dts/dts_ALICE_normal.xml:system/etc/audio/dts/dts_ALICE_normal.xml \
	$(LOCAL_PATH)/audio/dts/dts_ALICEPA_normal.xml:system/etc/audio/dts/dts_ALICEPA_normal.xml \
	$(LOCAL_PATH)/audio/dts/dts_default.xml:system/etc/audio/dts/dts_default.xml \
	$(LOCAL_PATH)/audio/dts/dts_SHINE_normal.xml:system/etc/audio/dts/dts_SHINE_normal.xml \
	$(LOCAL_PATH)/audio/mbdrc/mbdrc_ALICE_normal.xml:system/etc/audio/mbdrc/mbdrc_ALICE_normal.xml \
	$(LOCAL_PATH)/audio/mbdrc/mbdrc_ALICEPA_normal.xml:system/etc/audio/mbdrc/mbdrc_ALICEPA_normal.xml \
	$(LOCAL_PATH)/audio/mbdrc/mbdrc_default.xml:system/etc/audio/mbdrc/mbdrc_default.xml: \
	$(LOCAL_PATH)/audio/mbdrc/mbdrc_SHINE_normal.xml:system/etc/audio/mbdrc/mbdrc_SHINE_normal.xml

# Balong
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/modem/hids_ue_msg.cfg:system/etc/modemConfig/hids_ue_msg.cgf \
        $(LOCAL_PATH)/modem/hua.cfg:system/etc/modemConfig/hua.cfg

# Bluetooth
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/bluetooth/auto_pair_devlist.conf:system/etc/bluetooth/auto_pair_devlist.conf \
        $(LOCAL_PATH)/bluetooth/bt_did.conf:system/etc/bluetooth/bt_did.conf \
        $(LOCAL_PATH)/bluetooth/bt_stack.conf:system/etc/bluetooth/bt_stack.conf \

# Blobs, Get non-open-source parts
$(call inherit-product, vendor/huawei/hi6210sft/hi6210sft-vendor.mk)

# Device Path
LOCAL_PATH := device/huawei/hi6210sft

# ETC
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/etc/apns-conf.xml:system/etc/apns-conf.xml \
        $(LOCAL_PATH)/etc/audio_effects.conf:system/etc/audio_effects.conf \
        $(LOCAL_PATH)/etc/audio_policy.conf:system/etc/audio_policy.conf \
        $(LOCAL_PATH)/etc/clatd.conf:system/etc/clatd.conf

# File System
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Graphics
PRODUCT_PACKAGES += \
	libGLES_android \
	gralloc.hi6210sft

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/huawei/hi6210sft/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Media
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/media_codecs.xml:system/etc/media_codecs.xml \
        $(LOCAL_PATH)/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \
        $(LOCAL_PATH)/media_profiles.xml:system/etc/media_profiles.xml

# Overlays
DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/srs/models.txt:system/etc/srs/models.txt \
        $(LOCAL_PATH)/srs/srsmodels.lic:system/etc/srs/srsmodels.lic \
        $(LOCAL_PATH)/srs/srs_processing.cfg:system/etc/srs/srs_processing.cfg

# Wifi
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/wifi/wpa_supplicant.conf:system/etc/wpa_supplicant.conf

# Zygote
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.zygote=zygote64_32
PRODUCT_COPY_FILES += system/core/rootdir/init.zygote64_32.rc:root/init.zygote64_32.rc
