# AOSP
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Audio
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/system/etc/audio_effects.conf:system/etc/audio_effects.conf \
        $(LOCAL_PATH)/system/etc/audio_policy.conf:system/etc/audio_policy.conf

# Binaries
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/system/bin/bcm47531/glgps:system/bin/bcm47531/glgps \
        $(LOCAL_PATH)/system/bin/bcm47531/gpslogd:system/bin/bcm47531/gpslogd \
        $(LOCAL_PATH)/system/bin/agnsscontrol:system/bin/agnsscontrol \
        $(LOCAL_PATH)/system/bin/agnsslog:system/bin/agnsslog \
        $(LOCAL_PATH)/system/bin/akmd09911:system/bin/akmd09911 \
        $(LOCAL_PATH)/system/bin/atcmdserver:system/bin/atcmdserver \
        $(LOCAL_PATH)/system/bin/bastetd:system/bin/bastetd \
        $(LOCAL_PATH)/system/bin/chargelogcat:system/bin/chargelogcat \
        $(LOCAL_PATH)/system/bin/chr_logd:system/bin/chr_logd \
        $(LOCAL_PATH)/system/bin/data_cleaner:system/bin/data_cleaner \
        $(LOCAL_PATH)/system/bin/device_monitor:system/bin/device_monitor \
        $(LOCAL_PATH)/system/bin/diagserver:system/bin/diagserver \
        $(LOCAL_PATH)/system/bin/dmesgcat:system/bin/dmesgcat \
        $(LOCAL_PATH)/system/bin/do_ddrtest:system/bin/do_ddrtest \
        $(LOCAL_PATH)/system/bin/eventcat:system/bin/eventcat \
        $(LOCAL_PATH)/system/bin/gnss_engine:system/bin/gnss_engine \
        $(LOCAL_PATH)/system/bin/gpsdaemon:system/bin/gpsdaemon \
        $(LOCAL_PATH)/system/bin/hdb:system/bin/hdb \
        $(LOCAL_PATH)/system/bin/hi110x_dump:system/bin/hi110x_dump \
        $(LOCAL_PATH)/system/bin/hi110x_except_logd:system/bin/hi110x_except_logd \
        $(LOCAL_PATH)/system/bin/hi110x_logd:system/bin/hi110x_logd \
        $(LOCAL_PATH)/system/bin/hisi_connectivity.sh:system/bin/hisi_connectivity.sh \
        $(LOCAL_PATH)/system/bin/hostapd_hisi:system/bin/hostapd_hisi \
        $(LOCAL_PATH)/system/bin/hwnff:system/bin/hwnff \
        $(LOCAL_PATH)/system/bin/hwnffserver:system/bin/hwnffserver \
        $(LOCAL_PATH)/system/bin/hwpged:system/bin/hwpged \
        $(LOCAL_PATH)/system/bin/hw_ueventd:system/bin/hw_ueventd \
        $(LOCAL_PATH)/system/bin/mac_addr_normalization:system/bin/mac_addr_normalization \
        $(LOCAL_PATH)/system/bin/mediaserver:system/bin/mediaserver \
        $(LOCAL_PATH)/system/bin/modemlogcat_lte:system/bin/modemlogcat_lte \
        $(LOCAL_PATH)/system/bin/netd:system/bin/netd \
        $(LOCAL_PATH)/system/bin/oam_app:system/bin/oam_app \
        $(LOCAL_PATH)/system/bin/octty:system/bin/octty \
        $(LOCAL_PATH)/system/bin/preparesd.sh:system/bin/preparesd.sh \
        $(LOCAL_PATH)/system/bin/rild:system/bin/rild \
        $(LOCAL_PATH)/system/bin/sleeplogcat:system/bin/sleeplogcat \
        $(LOCAL_PATH)/system/bin/start_110x_service.sh:system/bin/start_110x_service.sh \
        $(LOCAL_PATH)/system/bin/thermal-daemon:system/bin/thermal-daemon \
        $(LOCAL_PATH)/system/bin/wpa_supplicant_hisi:system/bin/wpa_supplicant_hisi \
        $(LOCAL_PATH)/system/xbin/watchlssd:system/xbin/watchlssd

# Blobs
$(call inherit-product, vendor/hisi/hi6210sft/hi6210sft-vendor.mk)

# Bluetooth


# Camera
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/system/etc/camera_orientation.cfg:system/etc/camera_orientation.cfg \
        $(LOCAL_PATH)/system/etc/camera_resolutions.cfg:system/etc/camera_resolutions.cfg \
        $(LOCAL_PATH)/system/etc/camera_videosnapshot.cfg:system/etc/camera_videosnapshot.cfg

# Codecs
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/system/etc/hisi_omx.cfg:system/etc/hisi_omx.cfg \
        $(LOCAL_PATH)/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
        $(LOCAL_PATH)/system/etc/media_profiles.xml:system/etc/media_profiles.xml \

# Chrome 32 Bit
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/system/lib/libwebviewchromium.so:system/lib/libwebviewchromium.so \
        $(LOCAL_PATH)/system/lib/libwebviewchromium_loader.so:system/lib/libwebviewchromium_loader.so \
        $(LOCAL_PATH)/system/lib/libwebviewchromium_plat_support.so:system/lib/libwebviewchromium_plat_support.so \

# Chrome 64 Bit
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/system/lib64/libwebviewchromium.so:system/lib64/libwebviewchromium.so \
        $(LOCAL_PATH)/system/lib64/libwebviewchromium_loader.so:system/lib64/libwebviewchromium_loader.so \
        $(LOCAL_PATH)/system/lib64/libwebviewchromium_plat_support.so:system/lib64/libwebviewchromium_plat_support.so

# Dalvik
$(call inherit-product-if-exists, frameworks/base/build/tablet-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/tablet-dalvik-heap.mk)

# Display
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Device Monitor
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/system/etc/device_state_monitor.conf:system/etc/device_state_monitor.conf

# GPS
$(call inherit-product, device/common/gps/gps_us_supl.mk)

PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/system/etc/goldeneye_config.xml:system/etc/goldeneye_config.xml \
        $(LOCAL_PATH)/system/etc/gps.conf:system/etc/gps.conf \
        $(LOCAL_PATH)/system/etc/gpsconfig.xml:system/etc/gpsconfig.xml \
        $(LOCAL_PATH)/system/etc/hisi_cfg.ini:system/etc/hisi_cfg.ini \
        $(LOCAL_PATH)/system/etc/hisi_cfg_alice.ini:system/etc/hisi_cfg_alice.ini \
        $(LOCAL_PATH)/system/etc/hisi_cfg_cherry.ini:system/etc/hisi_cfg_cherry.ini

# File System
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs \
    com.android.future.usb.accessory

# Graphics
PRODUCT_PACKAGES += \
	libGLES_mali

PRODUCT_PROPERTY_OVERRIDES += \
	debug.hwui.render_dirty_regions=false \
    	ro.opengles.version=131072 \
	persist.sys.strictmode.disable=1 \
    	persist.sys.use_dithering=2

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/huawei/p8litekirin/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    	$(LOCAL_KERNEL):kernel

# Kernel Dump
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/system/etc/kerneldump.sh:system/etc/kerneldump.sh

# Lights
PRODUCT_PACKAGES += \
    	lights.default

# Misc
PRODUCT_PACKAGES += \
	bt_vendor.conf \
	dhcpcd \
	hostapd_hisi.conf \
	oam_app \
	octty \
	wpa_cli_hisi \
	wpa_supplicant.conf \
	wpa_supplicant_hisi \
 	wpa_supplicant_hisi.conf

PRODUCT_PROPERTY_OVERRIDES += \
	android.webview.force_aosp=false \
	fw.appops.sys_app=true \
	hw.lcd.lcd_density=320 \
	ro.com.google.locationfeatures=1 \
    	ro.config.sync=yes \
	ro.config.ntp.clock_sync=1800000 \
    	ro.config.ntp.server_poll=86400000 \
    	ro.config.ntp.sync_mode=3 \
    	ro.sf.lcd_density=320 \
    	ro.setupwizard.mode=OPTIONAL \
    	ro.setupwizard.enable_bypass=1

# Modules
PRODUCT_PACKAGES += \
	hwcomposer.hi6210sft \
	gralloc.hi6210sft

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
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
        $(LOCAL_PATH)/ramdisk/init.hi6210sft.rc::root/init.hi6210sft.rc \
        $(LOCAL_PATH)/ramdisk/init.recovery.hi110x.rc::root/init.recovery.hi110x.rc \
        $(LOCAL_PATH)/ramdisk/init.recovery.hi6210sft.rc::root/init.recovery.hi6210sft.rc \
        $(LOCAL_PATH)/ramdisk/ueventd.hi6210sft.rc::root/ueventd.hi6210sft.rc

# Thermald
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/system/etc/thermald.xml:system/etc/thermald.xml \
        $(LOCAL_PATH)/system/etc/thermald_performance.xml:system/etc/thermald_performance.xml

# USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    	persist.sys.usb.config=mtp

# USB OTG
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.isUsbOtgEnabled=true

# Zygote
PRODUCT_COPY_FILES += \
	system/core/rootdir/init.zygote64_32.rc:root/init.zygote64_32.rc

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.zygote=zygote64_32

PRODUCT_PACKAGES += libGLES_android

PRODUCT_PROPERTY_OVERRIDES += \
	 debug.sf.no_hw_vsync=1 \
	 ro.adb.secure=0 \
	 ro.secure=0                
