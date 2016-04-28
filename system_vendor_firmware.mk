LOCAL_PATH := device/huawei/hi6210sft

# Firmware for Connectivity
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/vendor/firmware/4343A0_001.001.034.0056.0193_ORC.hcd:system/vendor/firmware/4343A0_001.001.034.0056.0193_ORC.hcd \
        $(LOCAL_PATH)/rootdir/vendor/firmware/BCM4334B0_002.001.013.1554.1613_RC.hcd:system/vendor/firmware/BCM4334B0_002.001.013.1554.1613_RC.hcd \
        $(LOCAL_PATH)/rootdir/vendor/firmware/fw_bcm4343s_apsta_hw.bin:system/vendor/firmware/fw_bcm4343s_apsta_hw.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/fw_bcm4343s_hw.bin:system/vendor/firmware/fw_bcm4343s_hw.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/fw_bcm4343s_p2p_hw.bin:system/vendor/firmware/fw_bcm4343s_p2p_hw.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/fw_bcm4343s_test_hw_apsta.bin:system/vendor/firmware/fw_bcm4343s_test_hw_apsta.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/GNSS.bin:system/vendor/firmware/GNSS.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/libpn547_fw.so:system/vendor/firmware/libpn547_fw.so \
        $(LOCAL_PATH)/rootdir/vendor/firmware/nvram4343s_hw.txt:system/vendor/firmware/nvram4343s_hw.txt \
        $(LOCAL_PATH)/rootdir/vendor/firmware/nvram_CHERRY_PLUS_TL00.txt:system/vendor/firmware/nvram_CHERRY_PLUS_TL00.txt \
        $(LOCAL_PATH)/rootdir/vendor/firmware/nvram_CHERRY_PLUS_TL20M.txt:system/vendor/firmware/nvram_CHERRY_PLUS_TL20M.txt \
        $(LOCAL_PATH)/rootdir/vendor/firmware/nvram_CHERRY_PLUS_UL00.txt:system/vendor/firmware/nvram_CHERRY_PLUS_UL00.txt \
        $(LOCAL_PATH)/rootdir/vendor/firmware/RECOVER_DATA.bin:system/vendor/firmware/RECOVER_DATA.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/sdio_cfg:system/vendor/firmware/sdio_cfg \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_CMP.bin:system/vendor/firmware/SDIO_CMP.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_COD.bin:system/vendor/firmware/SDIO_COD.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/sdio_recover_cfg:system/vendor/firmware/sdio_recover_cfg \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_RW.bin:system/vendor/firmware/SDIO_RW.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_RW_ALICE_TL00_FEM.bin:system/vendor/firmware/SDIO_RW_ALICE_TL00_FEM.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_RW_ALICE_TL02_FEM.bin:system/vendor/firmware/SDIO_RW_ALICE_TL02_FEM.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_RW_ALICE_TL21_FEM.bin:system/vendor/firmware/SDIO_RW_ALICE_TL21_FEM.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_RW_ALICE_TL23_FEM.bin:system/vendor/firmware/SDIO_RW_ALICE_TL23_FEM.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_RW_ALICE_UL00_FEM.bin:system/vendor/firmware/SDIO_RW_ALICE_UL00_FEM.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_RW_Certification_Alice_FEM.bin:system/vendor/firmware/SDIO_RW_Certification_Alice_FEM.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_RW_Certification_CHM_FEM.bin:system/vendor/firmware/SDIO_RW_Certification_CHM_FEM.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_RW_CHC_U03_FEM.bin:system/vendor/firmware/SDIO_RW_CHC_U03_FEM.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_RW_CHM_TL00_FEM.bin:system/vendor/firmware/SDIO_RW_CHM_TL00_FEM.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_RW_CHM_TL00H_FEM.bin:system/vendor/firmware/SDIO_RW_CHM_TL00H_FEM.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_RW_CHM_U01_FEM.bin:system/vendor/firmware/SDIO_RW_CHM_U01_FEM.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_RW_CHM_U23_FEM.bin:system/vendor/firmware/SDIO_RW_CHM_U23_FEM.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_RW_CHM_UL00_FEM.bin:system/vendor/firmware/SDIO_RW_CHM_UL00_FEM.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/SDIO_TBL.bin:system/vendor/firmware/SDIO_TBL.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/uart_cfg:system/vendor/firmware/uart_cfg \
        $(LOCAL_PATH)/rootdir/vendor/firmware/UART_CMP.bin:system/vendor/firmware/UART_CMP.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/UART_COD.bin:system/vendor/firmware/UART_COD.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/UART_RW.bin:system/vendor/firmware/UART_RW.bin \
        $(LOCAL_PATH)/rootdir/vendor/firmware/UART_TBL.bin:system/vendor/firmware/UART_TBL.bin

