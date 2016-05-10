# Android Open Source Project
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)


# AAPT
PRODUCT_AAPT_CONFIG := xhdpi hdpi normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_AAPT_CONFIG := xhdpi hdpi normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

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
       $(LOCAL_PATH)/rootdir/bin/atcmdserver:system/bin/atcmdserver \
       $(LOCAL_PATH)/rootdir/bin/device_monitor:system/bin/device_monitor \
       $(LOCAL_PATH)/rootdir/bin/glgps4752:system/bin/glgps4752 \
       $(LOCAL_PATH)/rootdir/bin/glgps4752cl:system/bin/glgps4752cl \
       $(LOCAL_PATH)/rootdir/bin/glgps47531:system/bin/glgps47531 \
       $(LOCAL_PATH)/rootdir/bin/glgps47531cl:system/bin/glgps47531cl \
       $(LOCAL_PATH)/rootdir/bin/gps4752logd:system/bin/gps4752logd \
       $(LOCAL_PATH)/rootdir/bin/gpsdaemon:system/bin/gpsdaemon \
       $(LOCAL_PATH)/rootdir/bin/gpslogd:system/bin/gpslogd \
       $(LOCAL_PATH)/rootdir/bin/hdbd:system/bin/hdbd \
       $(LOCAL_PATH)/rootdir/bin/hdmi_daemon:system/bin/hdmi_daemon \
       $(LOCAL_PATH)/rootdir/bin/hw_cdmamodem_service:system/bin/hw_cdmamodem_service \
       $(LOCAL_PATH)/rootdir/bin/hwnff:system/bin/hwnff \
       $(LOCAL_PATH)/rootdir/bin/hwnffserver:system/bin/hwnffserver \
       $(LOCAL_PATH)/rootdir/bin/hwpged:system/bin/hwpged \
       $(LOCAL_PATH)/rootdir/bin/hw_ueventd:system/bin/hw_ueventd \
       $(LOCAL_PATH)/rootdir/bin/mac_addr_normalization:system/bin/mac_addr_normalization \
       $(LOCAL_PATH)/rootdir/bin/mediaserver:system/bin/mediaserver \
       $(LOCAL_PATH)/rootdir/bin/nvm_server:system/bin/nvm_server \
       $(LOCAL_PATH)/rootdir/bin/rild:system/bin/rild \
       $(LOCAL_PATH)/rootdir/bin/storedefaultkey:system/bin/storedefaultkey \
       $(LOCAL_PATH)/rootdir/bin/thermal-daemon:system/bin/thermal-daemon

# Blobs
$(call inherit-product-if-exists, vendor/huawei/p8litekirin/p8litekirin-vendor.mk)
PRODUCT_RESTRICT_VENDOR_FILES := false

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


# Dalvik
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-2048-hwui-memory.mk)
PRODUCT_TAGS += dalvik.gc.type-precise

# File System
PRODUCT_PACKAGES += \
    	make_ext4fs \
    	setup_fs

# GPS
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Graphics
PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/rootdir/lib64/egl/libGLES_mali.so:system/lib/egl/libGLES_mali.so \
       $(LOCAL_PATH)/rootdir/lib64/egl/libGLES_mali.so:system/lib64/egl/libGLES_mali.so

PRODUCT_PACKAGES += \
   	libGLES_android \
   	libGLES_mali \
    	libion \
    	gralloc.hi6210sft \
    	gatord

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

# ION
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/lib/libion.huawei.so:system/lib/libion.so \

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/hisi/hi6210sft/kernel
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

PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/rootdir/lib/libconfig_interface.so:system/lib/libconfig_interface.so \
       $(LOCAL_PATH)/rootdir/lib/libhuaweiaudioalgoservice.so:system/lib/libhuaweiaudioalgoservice.so \
       $(LOCAL_PATH)/rootdir/lib/libhuaweiaudioeffectutil.so:system/lib/libhuaweiaudioeffectutil.so \
       $(LOCAL_PATH)/rootdir/lib/libhuaweiprocessing.so:system/lib/libhuaweiprocessing.so \
       $(LOCAL_PATH)/rootdir/lib/libjpegenchw.so:system/lib/ibjpegenchw.so

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/hisi/hi6210sft/overlay

# Ramdisk
PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/ramdisk/fstab.hi6210sft:root/fstab.hi6210sft \
       $(LOCAL_PATH)/ramdisk/init.hi6210sft.rc:root/init.hi6210sft.rc \
       $(LOCAL_PATH)/ramdisk/init.chip.hi6210sft.rc:root/init.chip.hi6210sft.rc \
       $(LOCAL_PATH)/ramdisk/init.recovery.hi6210sft.rc:root/init.recovery.hi6210sft.rc \
       $(LOCAL_PATH)/ramdisk/ueventd.hi6210sft.rc:root/ueventd.hi6210sft.rc

PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/ramdisk/sbin/e2fsck_s:root/sbin/e2fsck_s  \
       $(LOCAL_PATH)/ramdisk/sbin/kmsgcat:root/sbin/kmsgcat \
       $(LOCAL_PATH)/ramdisk/sbin/logctl_service:root/sbin/logctl_service


# Set Default USB Interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    	persist.sys.usb.config=mtp

# USB OTG Support
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.isUsbOtgEnabled=true

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15

# Zygote
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.zygote=zygote64_32
PRODUCT_PROPERTY_OVERRIDES += \
         debug.sf.no_hw_vsync=1 \
         ro.secure=0 \
         ro.adb.secure=0

PRODUCT_COPY_FILES += system/core/rootdir/init.zygote64_32.rc:root/init.zygote64_32.rc

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_hi6210sft
PRODUCT_DEVICE := hi6210sft
