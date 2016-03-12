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

# Blobs
$(call inherit-product-if-exists, vendor/huawei/hi6210sft/hi6210sft-vendor.mk)

# BT
$(call inherit-product-if-exists, hardware/ti/wpan/ti-wpan-products.mk)

# Boot Animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Charger
PRODUCT_PACKAGES += \
		charger \
		charger_res_images

PRODUCT_COPY_FILES += \
		device/huawei/hi6210sft/charger/battery_fail.png:root/res/images/charger/battery_fail.png \
		device/huawei/hi6210sft/charger/battery_scale.png:root/res/images/charger/battery_scale.png
	
# Keys
$(call inherit-product-if-exists, device/huawei/hi6210sft/keylayout.mk)

# Media
PRODUCT_COPY_FILES += \
		device/huawei/hi6210sft/media/media_codecs.xml:system/etc/media_codecs.xml \
		device/huawei/hi6210sft/media/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
		frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
		frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
		frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml	

# NFC packages
PRODUCT_PACKAGES += \
		com.android.nfc_extras \
    	libnfc-nci \
    	libnfc_nci_jni \
    	nfc_nci.bcm2079x.default \
    	NfcNci \
    	Tag     

# NFCEE access control
NFCEE_ACCESS_PATH := device/huawei/hi6210sft/nfc/nfcee_access.xml

# NFC firmware
PRODUCT_COPY_FILES += \
    	$(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml \
		device/huawei/hi6210sft/nfc/lib/libnfc-nci.so:system/lib/libnfc-nci.so \
		device/huawei/hi6210sft/nfc/lib/libnfc_nci_jni.so:system/lib/libnfc_nci_jni.so \
		device/huawei/hi6210sft/nfc/lib/libnfc_ndef.so:system/lib64/libnfc_ndef.so \
		device/huawei/hi6210sft/nfc/lib64/libnfc-nci.so:system/lib64/libnfc-nci.so \
		device/huawei/hi6210sft/nfc/lib64/libnfc_nci_jni.so:system/lib64/libnfc_nci_jni.so \
		device/huawei/hi6210sft/nfc/lib64/libnfc_ndef.so:system/lib64/libnfc_ndef.so \
		device/huawei/hi6210sft/nfc/lib64/hw/nfc_nci.pn54x.default.so:system/lib64/hw/nfc_nci.pn54x.default.so \
    	device/huawei/hi6210sft/nfc/libnfc-brcm-alice.conf:system/etc/libnfc-brcm-alice.conf \
    	device/huawei/hi6210sft/nfc/libnfc-nxp-alice.conf:system/etc/libnfc-nxp-alice.conf 

# NFC permissions
PRODUCT_COPY_FILES += \
    	frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    	frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    	frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml	
	
# Overlays
DEVICE_PACKAGE_OVERLAYS += device/huawei/hi6210sft/overlay	

# Ramdisk
$(call inherit-product-if-exists, device/huawei/hi6210sft/ramdisk.mk)

# Thermal
PRODUCT_COPY_FILES += \
		device/huawei/hi6210sft/configs/thermald.xml:system/etc/thermald.xml \
		device/huawei/hi6210sft/configs/thermald_performance.xml:system/etc/thermald_performance.xml

# Wifi
PRODUCT_COPY_FILES += \
		device/huawei/hi6210sft/wpa/hostapd_hisi.conf:system/etc/wifi/hostapd_hisi.conf \
		device/huawei/hi6210sft/wpa/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
		device/huawei/hi6210sft/wpa/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
		device/huawei/hi6210sft/wpa/wpa_supplicant_hisi.conf:system/etc/wifi/wpa_supplicant_hisi.conf 