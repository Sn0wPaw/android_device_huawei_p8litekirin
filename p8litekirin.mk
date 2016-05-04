# Android Open Source Project
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# APN
PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/rootdir/etc/apns-conf.xml:system/etc/apns-conf.xml

# Audio
PRODUCT_COPY_FILES += \
    	$(LOCAL_PATH)/rootdir/etc/audio_effects.conf:system/etc/audio_effects.conf \
    	$(LOCAL_PATH)/rootdir/etc/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_PACKAGES += \
    	audio.a2dp.default \
    	audio_policy.stub \
    	audio.primary.default \
    	audio.r_submix.default \
    	audio.usb.default \
	com.android.future.usb.accessory \
    	libaudioutils \
    	libtinyalsa \
    	sound_trigger.primary.hi6210sft \
    	tinycap \
    	tinymix \
    	tinypcminfo \
    	tinyplay

# Binaries
PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/rootdir/bin/agnsscontrol:system/bin/agnsscontrol \
       $(LOCAL_PATH)/rootdir/bin/agnsslog:system/bin/agnsslog \
       $(LOCAL_PATH)/rootdir/bin/chr_logd:system/bin/chr_logd \
       $(LOCAL_PATH)/rootdir/bin/device_monitor:system/bin/device_monitor \
       $(LOCAL_PATH)/rootdir/bin/enable_swap:system/bin/enable_swap \
       $(LOCAL_PATH)/rootdir/bin/gnss_engine:system/bin/gnss_engine \
       $(LOCAL_PATH)/rootdir/bin/hi110x_except_logd:system/bin/hi110x_except_logd \
       $(LOCAL_PATH)/rootdir/bin/hi110x_logd:system/bin/hi110x_logd \
       $(LOCAL_PATH)/rootdir/bin/hisi_connectivity.sh:system/bin/hisi_connectivity.sh \
       $(LOCAL_PATH)/rootdir/bin/hostapd_hisi:system/bin/hostapd_hisi \
       $(LOCAL_PATH)/rootdir/bin/oam_app:system/bin/oam_app \
       $(LOCAL_PATH)/rootdir/bin/octty:system/bin/octty \
       $(LOCAL_PATH)/rootdir/bin/set_log:system/bin/set_log \
       $(LOCAL_PATH)/rootdir/bin/supl20clientd:system/bin/supl20clientd \
       $(LOCAL_PATH)/rootdir/bin/wpa_supplicant_hisi:system/bin/wpa_supplicant_hisi

# Blobs
$(call inherit-product-if-exists, vendor/huawei/p8litekirin/p8litekirin-vendor.mk)
PRODUCT_RESTRICT_VENDOR_FILES := false

# Boot
PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/rootdir/isp.bin:system/isp.bin \
       $(LOCAL_PATH)/rootdir/ons.bin:system/ons.bin \
       $(LOCAL_PATH)/rootdir/phone.prop:system/phone.prop

# Chromium 32 Bit
PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/rootdir/lib/libwebviewchromium.so:system/lib/libwebviewchromium.so \
       $(LOCAL_PATH)/rootdir/lib/libwebviewchromium_loader.so:system/lib/libwebviewchromium_loader.so \
       $(LOCAL_PATH)/rootdir/lib/libwebviewchromium_plat_support.so:system/lib/libwebviewchromium_plat_support.so

# Chromium 64 Bit
PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/rootdir/lib64/libwebviewchromium.so:system/lib64/libwebviewchromium.so \
       $(LOCAL_PATH)/rootdir/lib64/libwebviewchromium_loader.so:system/lib64/libwebviewchromium_loader.so \
       $(LOCAL_PATH)/rootdir/lib64/libwebviewchromium_plat_support.so:system/lib64/libwebviewchromium_plat_support.so

# Codecs
PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/rootdir/etc/media_codecs.xml:system/etc/media_codecs.xml \
       $(LOCAL_PATH)/rootdir/etc/media_profiles.xml:system/etc/media_profiles.xml

# Dalvik
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-2048-hwui-memory.mk)
PRODUCT_TAGS += dalvik.gc.type-precise

# Device State Monitor
PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/rootdir/etc/device_state_monitor.conf:system/etc/device_state_monitor.conf

# GPS
$(call inherit-product, device/common/gps/gps_us_supl.mk)

PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/rootdir/etc/gps.conf:system/etc/gps.conf \
       $(LOCAL_PATH)/rootdir/etc/gpsconfig.xml:system/etc/gpsconfig.xml

# Hardware-specific Deatures
PRODUCT_COPY_FILES += \
    	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    	frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    	frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    	frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    	frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    	frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml


# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/huawei/p8litekirin/kernel
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
       $(LOCAL_PATH)/rootdir/usr/keylayout/Vendor_0b05_Product_4500.kl:system/usr/keylayout/ \
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

# Live Wallpapers
PRODUCT_PACKAGES += \
    	Galaxy4 \
    	HoloSpiralWallpaper \
    	LiveWallpapers \
    	LiveWallpapersPicker \
    	MagicSmokeWallpapers \
    	NoiseField \
    	PhaseBeam \
    	VisualizationWallpapers \
    	librs_jni

PRODUCT_COPY_FILES += \
    	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Misc
PRODUCT_PACKAGES += \
	hwclock \
	iontest \
	libion

PRODUCT_PROPERTY_OVERRIDES += \
	ro.balong_debug.port_num=7 \
	ro.opengles.version=131072 \
	ro.product.board=BalongV8R1SFT \

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/huawei/p8litekirin/overlay

# Ramdisk
PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/ramdisk/fstab.hi6210sft:root/fstab.hi6210sft \
       $(LOCAL_PATH)/ramdisk/init.5801.rc:root/init.5801.rc \
       $(LOCAL_PATH)/ramdisk/init.6165.rc:root/init.6165.rc \
       $(LOCAL_PATH)/ramdisk/init.10106.rc:root/init.10106.rc \
       $(LOCAL_PATH)/ramdisk/init.51054.rc:root/init.51054.rc \
       $(LOCAL_PATH)/ramdisk/init.102173.rc:root/init.102173.rc \
       $(LOCAL_PATH)/ramdisk/init.142782.rc:root/init.142782.rc \
       $(LOCAL_PATH)/ramdisk/init.audio.rc:root/init.audio.rc \
       $(LOCAL_PATH)/ramdisk/init.connectivity.bcm43xx.rc:root/init.connectivity.bcm43xx.rc \
       $(LOCAL_PATH)/ramdisk/init.connectivity.hi110x.rc:root/init.connectivity.hi110x.rc \
       $(LOCAL_PATH)/ramdisk/init.connectivity.rc:root/init.connectivity.rc \
       $(LOCAL_PATH)/ramdisk/init.device.rc:root/init.device.rc \
       $(LOCAL_PATH)/ramdisk/init.environ.rc:root/init.environ.rc \
       $(LOCAL_PATH)/ramdisk/init.extmodem.rc:root/init.extmodem.rc \
       $(LOCAL_PATH)/ramdisk/init.hi6210sft.rc:root/init.hi6210sft.rc \
       $(LOCAL_PATH)/ramdisk/init.hisi.rc:root/init.hisi.rc \
       $(LOCAL_PATH)/ramdisk/init.manufacture.rc:root/init.manufacture.rc \
       $(LOCAL_PATH)/ramdisk/init.performance.rc:root/init.performance.rc \
       $(LOCAL_PATH)/ramdisk/init.platform.rc:root/init.platform.rc \
       $(LOCAL_PATH)/ramdisk/init.protocol.rc:root/init.protocol.rc \
       $(LOCAL_PATH)/ramdisk/init.rc:root/init.rc \
       $(LOCAL_PATH)/ramdisk/init.tee.rc:root/init.tee.rc \
       $(LOCAL_PATH)/ramdisk/init.trace.rc:root/init.trace.rc \
       $(LOCAL_PATH)/ramdisk/init.usb.rc:root/init.usb.rc

# Recovery
PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/recovery/init.chip.usb.rc:root/init.chip.usb.rc \
       $(LOCAL_PATH)/recovery/init.recovery.hi110x.rc:root/ \
       $(LOCAL_PATH)/recovery/init.recovery.hi6210sft.rc:root/ \
       $(LOCAL_PATH)/recovery/ueventd.5801.rc:root/ueventd.5801.rc \
       $(LOCAL_PATH)/recovery/ueventd.6165.rc:root/ueventd.6165.rc \
       $(LOCAL_PATH)/recovery/ueventd.10106.rc:root/ueventd.10106.rc \
       $(LOCAL_PATH)/recovery/ueventd.51054.rc:root/ueventd.51054.rc \
       $(LOCAL_PATH)/recovery/ueventd.142782.rc:root/ueventd.142782.rc \
       $(LOCAL_PATH)/recovery/ueventd.hi6210sft.rc:root/ueventd.hi6210sft.rc

# Set Default USB Interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    	persist.sys.usb.config=mtp

# USB OTG Support
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.isUsbOtgEnabled=true

# Zygote
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.zygote=zygote64_32
PRODUCT_PROPERTY_OVERRIDES += \
         debug.sf.no_hw_vsync=1 \
         ro.secure=0 \
         ro.adb.secure=0

PRODUCT_COPY_FILES += system/core/rootdir/init.zygote64_32.rc:root/init.zygote64_32.rc

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_p8litekirin
PRODUCT_DEVICE := p8litekirin
