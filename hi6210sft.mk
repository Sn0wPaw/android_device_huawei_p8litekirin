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
	$(LOCAL_PATH)/rootdir/etc/audio_effects.conf:system/etc/audio_effects.conf \
	$(LOCAL_PATH)/rootdir/etc/audio_policy.conf:system/etc/audio_policy.conf

# Balong's Modem
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/etc/modemConfig/balong/basic_name:system/etc/modemConfig/balong/basic_name \
        $(LOCAL_PATH)/rootdir/etc/modemConfig/balong/FieldTest.cfg:system/etc/modemConfig/balong/FieldTest.cfg \
        $(LOCAL_PATH)/rootdir/etc/modemConfig/hids_ue_msg.cfg:system/etc/modemConfig/hids_ue_msg.cfg \
        $(LOCAL_PATH)/rootdir/etc/factory_modem.cfg:system/etc/factory_modem.cfg \
	$(LOCAL_PATH)/rootdir/etc/kerneldump.sh:system/etc/kerneldump.sh

# Binaries for Boot
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/isp.bin:system/sp.bin \
	$(LOCAL_PATH)/rootdir/ons.bin:system/ons.bin \
	$(LOCAL_PATH)/rootdir/phone.prop:system/phone.prop

# Blobs, Get non-open-source parts
$(call inherit-product, device/huawei/hi6210sft/system_bin.mk)
$(call inherit-product, device/huawei/hi6210sft/system_etc_log.mk)
$(call inherit-product, device/huawei/hi6210sft/system_usr_keylayout.mk)
$(call inherit-product, device/huawei/hi6210sft/system_vendor_firmware.mk)
$(call inherit-product, vendor/huawei/hi6210sft/hi6210sft-vendor.mk)

# Bluetooth
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/etc/bluetooth/auto_pair_devlist.conf:system/etc/bluetooth/auto_pair_devlist.conf \
	$(LOCAL_PATH)/rootdir/etc/bluetooth/bt_did.conf:system/etc/bluetooth/bt_did.conf \
	$(LOCAL_PATH)/rootdir/etc/bluetooth/bt_stack.conf:system/etc/bluetooth/bt_stack.conf \
	$(LOCAL_PATH)/rootdir/etc/bluetooth/bt_stack_log.conf:system/etc/bluetooth/bt_stack_log.conf \
	$(LOCAL_PATH)/rootdir/etc/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# Camera
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/etc/camera_orientation.cfg:system/etc/camera_orientation.cfg \
	$(LOCAL_PATH)/rootdir/etc/camera_resolutions.cfg:system/etc/camera_resolutions.cfg \
	$(LOCAL_PATH)/rootdir/etc/camera_videosnapshot.cfg:system/etc/camera_videosnapshot.cfg \
	$(LOCAL_PATH)/rootdir/etc/mobilevideocfg.xml:system/etc/mobilevideocfg.xml

# Chromium, call your own blobs.
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/chromium/32/libwebviewchromium.so:system/lib/libwebviewchromium.so \
	$(LOCAL_PATH)/chromium/64/libwebviewchromium.so:system/lib64/libwebviewchromium.so

# Codecs
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/etc/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/rootdir/etc/media_profiles.xml:system/etc/media_profiles.xml

# Device Path
LOCAL_PATH := device/huawei/hi6210sft

# File System
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs


# Graphics
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
	$(LOCAL_PATH)/rootdir/lib64/egl/libGLES_android.so:system/lib64/egl/libGLES_android.so

PRODUCT_PACKAGES += \
	libGLES_android \
	gralloc.hi6210sft

# HiSilicon 
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/etc/clatd.conf:system/etc/clatd.conf \
	$(LOCAL_PATH)/rootdir/etc/device_state_monitor.conf:system/etc/device_state_monitor.cfg \
	$(LOCAL_PATH)/rootdir/etc/gps.conf:system/etc/gps.conf \
	$(LOCAL_PATH)/rootdir/etc/gpsconfig.xml:system/etc/gpsconfig.xml \
	$(LOCAL_PATH)/rootdir/etc/hisi_cfg.ini:system/etc/hisi_cfg.ini \
	$(LOCAL_PATH)/rootdir/etc/hisi_cfg_alice.ini:system/etc/hisi_cfg_alice.ini \
	$(LOCAL_PATH)/rootdir/etc/hisi_cfg_cherry.ini:system/etc/hisi_cfg_cherry.ini \
	$(LOCAL_PATH)/rootdir/etc/hisi_omx.cfg:system/etc/hisi_omxcfg

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/huawei/hi6210sft/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

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


# Ramdisk
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/ramdisk/fstab.hi6210sft:root/fstab.hi6210sft \
	$(LOCAL_PATH)/ramdisk/init.recovery.hi6210sft.rc:root/init.recovery.hi6210sft.rc \
	$(LOCAL_PATH)/ramdisk/init.hi6210sft.rc:root/init.hi6210sft.rc \
	$(LOCAL_PATH)/ramdisk/ueventd.hi6210sft.rc:root/ueventd.hi6210sft.rc

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/ramdisk/sbin/emmc_partation:root/sbin/emmc_partation \
	$(LOCAL_PATH)/ramdisk/sbin/hdbd:root/sbin/hdbd \
	$(LOCAL_PATH)/ramdisk/sbin/logctl_service:root/sbin/logctl_service \
	$(LOCAL_PATH)/ramdisk/sbin/oeminfo_nvm_server:root/sbin/oeminfo_nvm_server \
	$(LOCAL_PATH)/ramdisk/sbin/teecd:root/sbin/teecd

# SRS Processing
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/etc/srs/models.txt:system/etc/srs/models.txt \
	$(LOCAL_PATH)/rootdir/etc/srs/srsmodels.lic:system/etc/srs/srsmodels.lic \
	$(LOCAL_PATH)/rootdir/etc/srs/srs_processing.cfg:system/etc/srs/srs_processing.cfg

# Thermald
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/etc/thermald.xml:system/etc/thermald.xml \
	$(LOCAL_PATH)/rootdir/etc/thermald_performance.xml:system/etc/thermald_performance.xml

# TP Parameters
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/etc/tp_test_parameters/alice_junda_input_format.csv:system/etc/tp_test_parameters/alice_junda_input_format.csv \
	$(LOCAL_PATH)/rootdir/etc/tp_test_parameters/alice_ofilm_input_format.csv:system/etc/tp_test_parameters/alice_ofilm_input_format.csv \
	$(LOCAL_PATH)/rootdir/etc/tp_test_parameters/alice_parameters.csv:system/etc/tp_test_parameters/alice_parameters.csv \
	$(LOCAL_PATH)/rootdir/etc/tp_test_parameters/alice_truly_input_format.csv:system/etc/tp_test_parameters/alice_truly_input_format.csv

# Wifi
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/lib/oamdrv.ko:system/lib/oamdrv.ko \
	$(LOCAL_PATH)/rootdir/lib/wifi.ko:system/lib/wifi.ko \
	$(LOCAL_PATH)/rootdir/etc/wifi/hostapd_hisi.conf:system/etc/wifi/hostapd_hisi.conf \
	$(LOCAL_PATH)/rootdir/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
	$(LOCAL_PATH)/rootdir/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	$(LOCAL_PATH)/rootdir/etc/wifi/wpa_supplicant_hisi.conf:system/etc/wifi/wpa_supplicant_hisi.conf \
	$(LOCAL_PATH)/rootdir/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# Zygote
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.zygote=zygote64_32
PRODUCT_COPY_FILES += system/core/rootdir/init.zygote64_32.rc:root/init.zygote64_32.rc
