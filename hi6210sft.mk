#
# Copyright (C) 2014 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Android Open Source Project System Base
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Get non-open-source parts
$(call inherit-product, vendor/huawei/hi6210sft/hi6210sft-vendor.mk)

# Dalvik
PRODUCT_TAGS += dalvik.gc.type-precise

# Device Path
LOCAL_PATH := device/huawei/hi6210sft

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Fstab.hi6210sft
PRODUCT_PACKAGES += \
		fstab.hi6210sft
		
PRODUCT_PACKAGES += \
	  com.android.future.usb.accessory \
      setup_fs \
      librs_jni \
      libsrec_jni \
      make_ext4fs
	  
# General
PRODUCT_PROPERTY_OVERRIDES += \
		ro.build.selinux=0

PRODUCT_PROPERTY_OVERRIDES += \
		media.stagefright.enable-player=true \
		media.stagefright.enable-meta=true \
		media.stagefright.enable-scan=true \
		media.stagefright.enable-http=true \
		media.stagefright.enable-rtsp=true \
		media.stagefright.enable-record=true \
		net.rmnet0.dns1=8.8.8.8 \
		net.rmnet0.dns2=8.8.4.4 \
		net.dns1=8.8.8.8 \
		net.dns2=8.8.4.4

# Kernel, My Own Cannabis :D
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel		
	  
# Live Wallpapers
PRODUCT_PACKAGES += \
		LiveWallpapers \
		LiveWallpapersPicker \
		VisualizationWallpapers

PRODUCT_PACKAGES += \
		libc2dcolorconvert \
		libdashplayer
		
# OpenGL ES
PRODUCT_PROPERTY_OVERRIDES += \
		wifi.interface=wlan0 \
		ap.interface=wlan1 \
		persist.sys.usb.config=mtp,adb
		
# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Power HAL
PRODUCT_PACKAGES += \
		power.hi6210sft

# Ramdisk		
PRODUCT_COPY_FILES += $(call add-to-product-copy-files-if-exists,\
			$(LOCAL_PATH)/ramdisk/fstab.hi6210sft:root/fstab.hi6210sft \
			$(LOCAL_PATH)/ramdisk/init.hi6210sft.rc:root/init.hi6210sft.rc \
			$(LOCAL_PATH)/ramdisk/ueventd.hi6210sft.rc:root/ueventd.hi6210sft.rc \
			$(LOCAL_PATH)/ramdisk/init:root/init\
			$(LOCAL_PATH)/ramdisk/init.5801.rc:root/init.5801.rc\
			$(LOCAL_PATH)/ramdisk/init.6165.rc:root/init.6165.rc\
			$(LOCAL_PATH)/ramdisk/init.10106.rc:root/init.10106.rc\
			$(LOCAL_PATH)/ramdisk/init.51054.rc:root/init.51054.rc\
			$(LOCAL_PATH)/ramdisk/init.102173.rc:root/init.102173.rc\
			$(LOCAL_PATH)/ramdisk/init.142782.rc:root/init.142782.rc\
			$(LOCAL_PATH)/ramdisk/init.audio.rc:root/init.audio.rc\
			$(LOCAL_PATH)/ramdisk/init.chip.usb.rc:root/init.chip.usb.rc\
			$(LOCAL_PATH)/ramdisk/init.connectivity.bcm43xx.rc:root/init.connectivity.bcm43xx.rc\
			$(LOCAL_PATH)/ramdisk/init.connectivity.hi110x.rc:root/init.connectivity.hi110x.rc\
			$(LOCAL_PATH)/ramdisk/init.connectivity.rc:root/init.connectivity.rc\
			$(LOCAL_PATH)/ramdisk/init.device.rc:root/init.device.rc\
			$(LOCAL_PATH)/ramdisk/init.extmodem.rc:root/init.extmodem.rc\
			$(LOCAL_PATH)/ramdisk/init.hisi.rc:root/init.hisi.rc\
			$(LOCAL_PATH)/ramdisk/init.manufacture.rc:root/init.manufacture.rc\
			$(LOCAL_PATH)/ramdisk/init.performance.rc:root/init.performance.rc\
			$(LOCAL_PATH)/ramdisk/init.platform.rc:root/init.platform.rc\
			$(LOCAL_PATH)/ramdisk/init.protocol.rc:root/init.protocol.rc\
			$(LOCAL_PATH)/ramdisk/init.rc:root/init.rc\
			$(LOCAL_PATH)/ramdisk/init.recovery.hi110x.rc:root/init.recovery.hi110x.rc\
			$(LOCAL_PATH)/ramdisk/init.recovery.hi6210sft.rc:root/init.recovery.hi6210sft.rc\
			$(LOCAL_PATH)/ramdisk/init.tee.rc:root/init.tee.rc\
			$(LOCAL_PATH)/ramdisk/init.usb.rc:root/init.usb.rc\
			$(LOCAL_PATH)/ramdisk/init.zygote64_32.rc:root/init.zygote64_32.rc\
			$(LOCAL_PATH)/ramdisk/property_contexts:root/property_contexts\
			$(LOCAL_PATH)/ramdisk/seapp_contexts:root/seapp_contexts\
			$(LOCAL_PATH)/ramdisk/service_contexts:root/service_contexts\
			$(LOCAL_PATH)/ramdisk/ueventd.5801.rc:root/ueventd.5801.rc\
			$(LOCAL_PATH)/ramdisk/ueventd.6165.rc:root/ueventd.6165.rc\
			$(LOCAL_PATH)/ramdisk/ueventd.10106.rc:root/ueventd.10106.rc\
			$(LOCAL_PATH)/ramdisk/ueventd.51054.rc:root/ueventd.51054.rc\
			$(LOCAL_PATH)/ramdisk/ueventd.102173.rc:root/ueventd.102173.rc\
			$(LOCAL_PATH)/ramdisk/ueventd.142782.rc:root/ueventd.142782.rc\
			$(LOCAL_PATH)/ramdisk/ueventd.rc:root/ueventd.rc\
			$(LOCAL_PATH)/ramdisk/sbin/adbd:root/sbin/adbd\
			$(LOCAL_PATH)/ramdisk/sbin/check_root:root/sbin/check_root\
			$(LOCAL_PATH)/ramdisk/sbin/e2fsck_s:root/sbin/e2fsck_s\
			$(LOCAL_PATH)/ramdisk/sbin/emmc_partation:root/sbin/emmc_partation\
			$(LOCAL_PATH)/ramdisk/sbin/hdbd:root/sbin/hdbd\
			$(LOCAL_PATH)/ramdisk/sbin/adbd:healthd/sbin/healthd\
			$(LOCAL_PATH)/ramdisk/sbin/adbd:teecd/sbin/teecd)		
		
# Recovery
PRODUCT_COPY_FILES += \
		$(LOCAL_PATH)/recovery/twrp.fstab:recovery/root/etc/twrp.fstab \
    
# Recovery
PRODUCT_PACKAGES += \
		minivold
	
# Recovery allowed devices
TARGET_OTA_ASSERT_DEVICE := ALE-L21	

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
		audioril.lib=libhuawei-audio-ril.so \
		ro.telephony.ril_class=HuaweiRIL \
		telephony.lteOnCdmaDevice=0 \
		telephony.lteOnGsmDevice=1 \
		ro.telephony.default_network=9

# Vold
PRODUCT_PACKAGES += \
		libbt-vendor \
		uim-sysfs 
		
# Hi6210sft Packages
# Set custom settings
#DEVICE_PACKAGE_OVERLAYS := device/huawei/hi6210sft/overlay

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

PRODUCT_PACKAGES += libGLES_android

# Include BT modules
$(call inherit-product-if-exists, hardware/ti/wpan/ti-wpan-products.mk)