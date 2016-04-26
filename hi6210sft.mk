# Android Open Source Project Common System
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Binaries for Boot
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/isp.bin:system/sp.bin \
	$(LOCAL_PATH)/rootdir/ons.bin:system/ons.bin \
	$(LOCAL_PATH)/rootdir/phone.prop:system/phone.prop

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

# Graphics
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
	$(LOCAL_PATH)/rootdir/lib64/egl/libGLES_android.so:system/lib64/egl/libGLES_android.so

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

# Zygote
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.zygote=zygote64_32
PRODUCT_COPY_FILES += system/core/rootdir/init.zygote64_32.rc:root/init.zygote64_32.rc
PRODUCT_PACKAGES += libGLES_android
