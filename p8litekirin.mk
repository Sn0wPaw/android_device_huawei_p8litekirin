#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
#ifneq ($(ALE-L21_32_BIT),true)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
#endif

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# ART
#PRODUCT_RUNTIMES := runtime_libart_default

# Audio HAL
PRODUCT_PACKAGES += audio.a2dp.default

# Charger
PRODUCT_PACKAGES += \
    charger_res_images
	
# Chromium
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/chromium/libwebviewchromium.so:system/lib/libwebviewchromium.so \
	$(LOCAL_PATH)/chromium/64/libwebviewchromium.so:system/lib64/libwebviewchromium.so
	
# Dalvik
$(call inherit-product-if-exists, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)

# Gralloc
PRODUCT_PACKAGES += gralloc.hi6210sft	

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/huawei/p8litekirin/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
	
# LibION
PRODUCT_PACKAGES += libion	
	
# Overlays
DEVICE_PACKAGE_OVERLAYS += device/huawei/p8litekirin/overlay

# OpenSSH
PRODUCT_PACKAGES += scp sftp ssh sshd ssh-keygen sshd_config start-ssh uim

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.external.xml:system/etc/permissions/android.hardware.camera.external.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
    frameworks/native/data/etc/android.software.backup.xml:system/etc/permissions/android.software.backup.xml \
    frameworks/native/data/etc/android.software.webview.xml:system/etc/permissions/android.software.webview.xml \
	frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml
	
# Ramdisk
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/ramdisk/fstab.hi6210sft:root/fstab.hi6210sft \
	$(LOCAL_PATH)/ramdisk/init:root/init \
	$(LOCAL_PATH)/ramdisk/init.chip.usb.rc:root/init.chip.usb.rc \
	$(LOCAL_PATH)/ramdisk/init.connectivity.rc:root/init.connectivity.rc \
	$(LOCAL_PATH)/ramdisk/init.hi6210sft.rc:root/init.hi6210sft.rc \
	$(LOCAL_PATH)/ramdisk/init.rc:root/init.rc \
	$(LOCAL_PATH)/ramdisk/init.recovery.hi6210sft.rc:root/init.recovery.hi6210sft.rc \
	$(LOCAL_PATH)/ramdisk/ueventd.hi6210sft.rc:root/ueventd.hi6210sft.rc
	
# USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

PRODUCT_PACKAGES += \
    com.android.future.usb.accessory	

# Wifi
PRODUCT_PACKAGES += libwpa_client wpa_supplicant
PRODUCT_PROPERTY_OVERRIDES += wifi.interface=wlan0 \
                              wifi.supplicant_scan_interval=15
							  
# Zygote
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.zygote=zygote64_32
PRODUCT_PROPERTY_OVERRIDES += \
         debug.sf.no_hw_vsync=1 \
         ro.secure=0 \
         ro.adb.secure=0

PRODUCT_COPY_FILES += system/core/rootdir/init.zygote64_32.rc:root/init.zygote64_32.rc

PRODUCT_PACKAGES += libGLES_android							  

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_p8litekirin
PRODUCT_DEVICE := p8litekirin