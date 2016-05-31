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
        $(LOCAL_PATH)/system/bin/hi110x_dump:system/bin/hi110x_dump \
        $(LOCAL_PATH)/system/bin/hi110x_except_logd:system/bin/hi110x_except_logd \
        $(LOCAL_PATH)/system/bin/hi110x_logd:system/bin/hi110x_logd \
        $(LOCAL_PATH)/system/bin/hisi_connectivity.sh:system/bin/hisi_connectivity.sh \
        $(LOCAL_PATH)/system/bin/hostapd_hisi:system/bin/hostapd_hisi \
        $(LOCAL_PATH)/system/bin/hwnffserver:system/bin/hwnffserver \
        $(LOCAL_PATH)/system/bin/mac_addr_normalization:system/bin/mac_addr_normalization \
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

# Device Monitor
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/system/etc/device_state_monitor.conf:system/etc/device_state_monitor.conf

# GPS
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/system/etc/goldeneye_config.xml:system/etc/goldeneye_config.xml \
        $(LOCAL_PATH)/system/etc/gps.conf:system/etc/gps.conf \
        $(LOCAL_PATH)/system/etc/gpsconfig.xml:system/etc/gpsconfig.xml \
        $(LOCAL_PATH)/system/etc/hisi_cfg.ini:system/etc/hisi_cfg.ini \
        $(LOCAL_PATH)/system/etc/hisi_cfg_alice.ini:system/etc/hisi_cfg_alice.ini \
        $(LOCAL_PATH)/system/etc/hisi_cfg_cherry.ini:system/etc/hisi_cfg_cherry.ini \


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

# Kernel Dump
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/system/etc/kerneldump.sh:system/etc/kerneldump.sh

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

# Sbin
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/sbin/check_root:root/sbin/check_root \
        $(LOCAL_PATH)/sbin/logctl_service:root/sbin/logctl_service \
        $(LOCAL_PATH)/sbin/oeminfo_nvm_server:root/sbin/oeminfo_nvm_server

# Thermald
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/system/etc/thermald.xml
        $(LOCAL_PATH)/system/etc/thermald_performance.xml

# USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    	persist.sys.usb.config=mtp

# USB OTG
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.isUsbOtgEnabled=true
