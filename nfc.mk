PRODUCT_PACKAGES += \
	com.android.nfc_extras \
    	libnfc-nci \
    	libnfc_nci_jni \
    	nfc_nci.bcm2079x.default \
    	NfcNci \
    	Tag     

# NFCEE access control
NFCEE_ACCESS_PATH := device/huawei/p8litekirin/nfc/nfcee_access.xml

# NFC firmware
PRODUCT_COPY_FILES += \
    	$(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml \
	device/huawei/p8litekirin/nfc/lib/libnfc-nci.so:system/lib/libnfc-nci.so \
	device/huawei/p8litekirin/nfc/lib/libnfc_nci_jni.so:system/lib/libnfc_nci_jni.so \
	device/huawei/p8litekirin/nfc/lib/libnfc_ndef.so:system/lib64/libnfc_ndef.so \
	device/huawei/p8litekirin/nfc/lib64/libnfc-nci.so:system/lib64/libnfc-nci.so \
	device/huawei/p8litekirin/nfc/lib64/libnfc_nci_jni.so:system/lib64/libnfc_nci_jni.so \
	device/huawei/p8litekirin/nfc/lib64/libnfc_ndef.so:system/lib64/libnfc_ndef.so \
	device/huawei/p8litekirin/nfc/lib64/hw/nfc_nci.pn54x.default.so:system/lib64/hw/nfc_nci.pn54x.default.so \
    	device/huawei/p8litekirin/nfc/libnfc-brcm-alice.conf:system/etc/libnfc-brcm-alice.conf \
    	device/huawei/p8litekirin/nfc/libnfc-nxp-alice.conf:system/etc/libnfc-nxp-alice.conf 

# NFC permissions
PRODUCT_COPY_FILES += \
    	frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    	frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    	frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml	
