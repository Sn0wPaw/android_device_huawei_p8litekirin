$(call inherit-product-if-exists, vendor/huawei/p8litekirin/p8litekirin-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/p8litekirin/overlay

# Keys
$(call inherit-product-if-exists, device/huawei/p8litekirin/keylayout.mk)

# NFC
$(call inherit-product-if-exists, device/huawei/p8litekirin/nfc.mk)

# Ramdisk
$(call inherit-product-if-exists, device/huawei/p8litekirin/ramdisk.mk)

# Selinux
$(call inherit-product-if-exists, device/huawei/p8litekirin/selinux.mk)

# Wifi
$(call inherit-product-if-exists, device/huawei/p8litekirin/wifi.mk)
