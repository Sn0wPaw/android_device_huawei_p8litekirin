# Android Open Source Project Common System
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Binaries that we cannot extract with extract-files.sh
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/bin/agnsscontrol:system/bin/agnsscontrol \
	$(LOCAL_PATH)/rootdir/bin/agnsslog:system/bin/agnsslog\
	$(LOCAL_PATH)/rootdir/bin/akmd09911:system/bin/akmd09911 \
	$(LOCAL_PATH)/rootdir/bin/atcmdserver:system/bin/atcmdserver \
	$(LOCAL_PATH)/rootdir/bin/chr_logd:system/bin/chr_logd \
	$(LOCAL_PATH)/rootdir/bin/device_monitor:system/bin/device_monitor \
	$(LOCAL_PATH)/rootdir/bin/dhcpcd:system/bin/dhcpcd \
	$(LOCAL_PATH)/rootdir/bin/diagserver:system/bin/diagserver \
	$(LOCAL_PATH)/rootdir/bin/dmesgcat:system/bin/dmesgcat \
	$(LOCAL_PATH)/rootdir/bin/glgps:system/bin/glgps \
	$(LOCAL_PATH)/rootdir/bin/gnss_engine:system/bin/gnss_engine \
	$(LOCAL_PATH)/rootdir/bin/gpsdaemon:system/bin/gpsdaemon \
	$(LOCAL_PATH)/rootdir/bin/hi110x_except_logd:system/bin/hi110x_except_logd \
	$(LOCAL_PATH)/rootdir/bin/hi110x_logd:system/bin/hi110x_logd \
	$(LOCAL_PATH)/rootdir/bin/hisi_connectivity.sh:system/bin/hisi_connectivity.sh \
	$(LOCAL_PATH)/rootdir/bin/hostapd_hisi:system/bin/hostapd_hisi \
	$(LOCAL_PATH)/rootdir/bin/hwnffserver:system/bin/hwnffserver \
	$(LOCAL_PATH)/rootdir/bin/mac_addr_normalization:system/bin/mac_addr_normalization \
	$(LOCAL_PATH)/rootdir/bin/netd:system/bin/netd \
	$(LOCAL_PATH)/rootdir/bin/oam_app:system/bin/oam_app \
	$(LOCAL_PATH)/rootdir/bin/octty:system/bin/octty \
	$(LOCAL_PATH)/rootdir/bin/rild:system/bin/rild \
	$(LOCAL_PATH)/rootdir/bin/supl20clientd:system/bin/supl20clientd \
	$(LOCAL_PATH)/rootdir/bin/wpa_supplicant:system/bin/wpa_supplicant \
	$(LOCAL_PATH)/rootdir/bin/wpa_supplicant_hisi:system/bin/wpa_supplicant_hisi \
	$(LOCAL_PATH)/rootdir/xbin/watchlssd:system/xbin/watchlssd

# Blobs, Get non-open-source parts
$(call inherit-product, vendor/huawei/hi6210sft/hi6210sft-vendor.mk)

# Chromium, call your own blobs.
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/chromium/32/libwebviewchromium.so:system/lib/libwebviewchromium.so \
	$(LOCAL_PATH)/chromium/64/libwebviewchromium.so:system/lib64/libwebviewchromium.so

# Device Path
LOCAL_PATH := device/huawei/hi6210sft

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/huawei/hi6210sft/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Ramdisk
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/ramdisk/fstab.hi6210sft:root/fstab.hi6210sft \
	$(LOCAL_PATH)/ramdisk/init.hi6210sft.rc:root/init.hi6210sft.rc \
	$(LOCAL_PATH)/ramdisk/init.recovery.hi6210sft.rc:root/init.recovery.hi6210sft.rc \
	$(LOCAL_PATH)/ramdisk/init.usb.hi6210sft.rc:root/init.usb.hi6210sft.rc \
	$(LOCAL_PATH)/ramdisk/ueventd.hi6210sft.rc:root/ueventd.hi6210sft.rc

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/ramdisk/sbin/check_root:root/sbin/check_root \
	$(LOCAL_PATH)/ramdisk/sbin/e2fsck_s:root/sbin/e2fsck_s \
	$(LOCAL_PATH)/ramdisk/sbin/oeminfo_nvm_server:root/sbin/oeminfo_nvm_server \
	$(LOCAL_PATH)/ramdisk/sbin/teecd:root/sbin/teecd
