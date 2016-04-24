# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/alice/aosp_alice.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := alice
PRODUCT_NAME := cm_alice
PRODUCT_BRAND := huawei
PRODUCT_MODEL := alice
PRODUCT_MANUFACTURER := Huawei

