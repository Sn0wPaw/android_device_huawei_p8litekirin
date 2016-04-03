# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/p8litekirin/full_p8litekirin.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p8litekirin
PRODUCT_NAME := cm_p8litekirin
PRODUCT_BRAND := huawei
PRODUCT_MODEL := ALE-L21
PRODUCT_MANUFACTURER := HUAWEI