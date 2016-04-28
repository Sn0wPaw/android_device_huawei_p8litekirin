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

# Firmware for Connectivity
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/vendor/firmware/4343A0_001.001.034.0056.0193_ORC.hcd:system/vendor/firmware/4343A0_001.001.034.0056.0193_ORC.hcd \
        $(LOCAL_PATH)/rootdir/vendor/firmware/BCM4334B0_002.001.013.1554.1613_RC.hcd:system/vendor/firmware/BCM4334B0_002.001.013.1554.1613_RC.hcd \
        $(LOCAL_PATH)/rootdir/vendor/firmware/fw_bcm4343s_apsta_hw.bin:system/vendor/firmware/fw_bcm4343s_apsta_hw.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/fw_bcm4343s_hw.bin:system/vendor/firmware/fw_bcm4343s_hw.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/fw_bcm4343s_p2p_hw.bin:system/vendor/firmware/fw_bcm4343s_p2p_hw.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/fw_bcm4343s_test_hw_apsta.bin:system/vendor/firmware/fw_bcm4343s_test_hw_apsta.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/GNSS.bin:system/vendor/firmware/GNSS.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/libpn547_fw.so:system/vendor/firmware/libpn547_fw.so \
        $(LOCAL_PATH)/rootdir/vendor/firmware/nvram4343s_hw.txt:system/vendor/firmware/nvram4343s_hw.txt \
        $(LOCAL_PATH)/rootdir/vendor/firmware/nvram_CHERRY_PLUS_TL00.txt:system/vendor/firmware/nvram_CHERRY_PLUS_TL00.txt \
        $(LOCAL_PATH)/rootdir/vendor/firmware/nvram_CHERRY_PLUS_TL20M.txt:system/vendor/firmware/nvram_CHERRY_PLUS_TL20M.txt \
        $(LOCAL_PATH)/rootdir/vendor/firmware/nvram_CHERRY_PLUS_UL00.txt:system/vendor/firmware/nvram_CHERRY_PLUS_UL00.txt \
        $(LOCAL_PATH)/rootdir/vendor/firmware/RECOVER_DATA.bin:system/vendor/firmware/RECOVER_DATA.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/sdio_cfg:system/vendor/firmware/sdio_cfg \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_CMP.bin:system/vendor/firmware/SDIO_CMP.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_COD.bin:system/vendor/firmware/SDIO_COD.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/sdio_recover_cfg:system/vendor/firmware/sdio_recover_cfg \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_RW.bin:system/vendor/firmware/SDIO_RW.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_RW_ALICE_TL00_FEM.bin:system/vendor/firmware/SDIO_RW_ALICE_TL00_FEM.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_RW_ALICE_TL02_FEM.bin:system/vendor/firmware/SDIO_RW_ALICE_TL02_FEM.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_RW_ALICE_TL21_FEM.bin:system/vendor/firmware/SDIO_RW_ALICE_TL21_FEM.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_RW_ALICE_TL23_FEM.bin:system/vendor/firmware/SDIO_RW_ALICE_TL23_FEM.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_RW_ALICE_UL00_FEM.bin:system/vendor/firmware/SDIO_RW_ALICE_UL00_FEM.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_RW_Certification_Alice_FEM.bin:system/vendor/firmware/SDIO_RW_Certification_Alice_FEM.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_RW_Certification_CHM_FEM.bin:system/vendor/firmware/SDIO_RW_Certification_CHM_FEM.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_RW_CHC_U03_FEM.bin:system/vendor/firmware/SDIO_RW_CHC_U03_FEM.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_RW_CHM_TL00_FEM.bin:system/vendor/firmware/SDIO_RW_CHM_TL00_FEM.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_RW_CHM_TL00H_FEM.bin:system/vendor/firmware/SDIO_RW_CHM_TL00H_FEM.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_RW_CHM_U01_FEM.bin:system/vendor/firmware/SDIO_RW_CHM_U01_FEM.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_RW_CHM_U23_FEM.bin:system/vendor/firmware/SDIO_RW_CHM_U23_FEM.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_RW_CHM_UL00_FEM.bin:system/vendor/firmware/SDIO_RW_CHM_UL00_FEM.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_TBL.bin:system/vendor/firmware/SDIO_TBL.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/uart_cfg:system/vendor/firmware/uart_cfg \
        $(LOCAL_PATH)/rootdir/vendor/firmware/UART_CMP.bin:system/vendor/firmware/UART_CMP.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/UART_COD.bin:system/vendor/firmware/UART_COD.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/UART_RW.bin:system/vendor/firmware/UART_RW.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/UART_TBL.bin:system/vendor/firmware/UART_TBL.bin

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

# Keylayout
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_0b05_Product_4500.kl:system/usr/keylayout/Vendor_0b05_Product_4500.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_1bad_Product_f016.kl:system/usr/keylayout/Vendor_1bad_Product_f016.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_1bad_Product_f023.kl:system/usr/keylayout/Vendor_1bad_Product_f023.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_1bad_Product_f027.kl:system/usr/keylayout/Vendor_1bad_Product_f027.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_1bad_Product_f036.kl:system/usr/keylayout/Vendor_1bad_Product_f036.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_1d79_Product_0009.kl:system/usr/keylayout/Vendor_1d79_Product_0009.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_05ac_Product_0239.kl:system/usr/keylayout/Vendor_05ac_Product_0239.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_12bd_Product_d015.kl:system/usr/keylayout/Vendor_12bd_Product_d015.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_18d1_Product_2c40.kl:system/usr/keylayout/Vendor_18d1_Product_2c40.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_22b8_Product_093d.kl:system/usr/keylayout/Vendor_22b8_Product_093d.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_028e.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_046d_Product_c21d.kl:system/usr/keylayout/Vendor_046d_Product_c21d.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_046d_Product_c21f.kl:system/usr/keylayout/Vendor_046d_Product_c21f.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_046d_Product_c216.kl:system/usr/keylayout/Vendor_046d_Product_c216.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_046d_Product_c219.kl:system/usr/keylayout/Vendor_046d_Product_c219.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_046d_Product_c294.kl:system/usr/keylayout/Vendor_046d_Product_c294.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_046d_Product_c299.kl:system/usr/keylayout/Vendor_046d_Product_c299.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_046d_Product_c532.kl:system/usr/keylayout/Vendor_046d_Product_c532.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_0079_Product_0011.kl:system/usr/keylayout/Vendor_0079_Product_0011.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_0583_Product_2060.kl:system/usr/keylayout/Vendor_0583_Product_2060.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_1038_Product_1412.kl:system/usr/keylayout/Vendor_1038_Product_1412.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_1689_Product_fd00.kl:system/usr/keylayout/Vendor_1689_Product_fd00.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_1689_Product_fd01.kl:system/usr/keylayout/Vendor_1689_Product_fd01.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_1689_Product_fe00.kl:system/usr/keylayout/Vendor_1689_Product_fe00.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_1949_Product_0401.kl:system/usr/keylayout/Vendor_1949_Product_0401.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_2378_Product_100a.kl:system/usr/keylayout/Vendor_2378_Product_100a.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_2378_Product_1008.kl:system/usr/keylayout/Vendor_2378_Product_1008.kl

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
