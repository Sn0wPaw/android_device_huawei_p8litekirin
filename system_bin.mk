LOCAL_PATH := device/huawei/hi6210sft

# Binaries that we cannot extract with extract-files.sh
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/bin/agnsscontrol:system/bin/agnsscontrol \
        $(LOCAL_PATH)/rootdir/bin/agnsslog:system/bin/agnsslog \
        $(LOCAL_PATH)/rootdir/bin/akmd09911:system/bin/akmd09911 \
        $(LOCAL_PATH)/rootdir/bin/atcmdserver:system/bin/atcmdserver \
        $(LOCAL_PATH)/rootdir/bin/bastetd:system/bin/bastetd \
        $(LOCAL_PATH)/rootdir/bin/chargelogcat:system/bin/chargelogcat \
        $(LOCAL_PATH)/rootdir/bin/chr_logd:system/bin/chr_logd \
        $(LOCAL_PATH)/rootdir/bin/data_cleaner:system/bin/data_cleaner \
        $(LOCAL_PATH)/rootdir/bin/device_monitor:system/bin/device_monitor \
        $(LOCAL_PATH)/rootdir/bin/dhcpcd:system/bin/dhcpcd \
        $(LOCAL_PATH)/rootdir/bin/diagserver:system/bin/diagserver \
        $(LOCAL_PATH)/rootdir/bin/dmesgcat:system/bin/dmesgcat \
        $(LOCAL_PATH)/rootdir/bin/eventcat:system/bin/eventcat \
        $(LOCAL_PATH)/rootdir/bin/get_board_ver:system/bin/get_board_ver \
        $(LOCAL_PATH)/rootdir/bin/get_param_ver:system/bin/get_param_ver \
        $(LOCAL_PATH)/rootdir/bin/glgps:system/bin/glgps \
        $(LOCAL_PATH)/rootdir/bin/gnss_engine:system/bin/gnss_engine \
        $(LOCAL_PATH)/rootdir/bin/gpsdaemon:system/bin/gpsdaemon \
        $(LOCAL_PATH)/rootdir/bin/gpslogd:system/bin/gpslogd \
        $(LOCAL_PATH)/rootdir/bin/hi110x_dump:system/bin/hi110x_dump \
        $(LOCAL_PATH)/rootdir/bin/hi110x_except_logd:system/bin/hi110x_except_logd \
        $(LOCAL_PATH)/rootdir/bin/hi110x_logd:system/bin/hi110x_logd \
        $(LOCAL_PATH)/rootdir/bin/hisi_connectivity.sh:system/bin/hisi_connectivity.sh \
        $(LOCAL_PATH)/rootdir/bin/hostapd:system/bin/hostapd \
        $(LOCAL_PATH)/rootdir/bin/hostapd_cli_hisi:system/bin/hostapd_cli_hisi \
        $(LOCAL_PATH)/rootdir/bin/hostapd_hisi:system/bin/hostapd_hisi \
        $(LOCAL_PATH)/rootdir/bin/huawei_tp_test:system/bin/huawei_tp_test \
        $(LOCAL_PATH)/rootdir/bin/hwnff:system/bin/hwnff \
        $(LOCAL_PATH)/rootdir/bin/hwnffserver:system/bin/hwnffserver \
        $(LOCAL_PATH)/rootdir/bin/hwpged:system/bin/hwpged \
        $(LOCAL_PATH)/rootdir/bin/hw_ueventd:system/bin/hw_ueventd \
        $(LOCAL_PATH)/rootdir/bin/install-recovery.sh:system/bin/install-recovery.sh \
        $(LOCAL_PATH)/rootdir/bin/ioinfoservice:system/bin/ioinfoservice \
        $(LOCAL_PATH)/rootdir/bin/logcat:system/bin/logcat \
        $(LOCAL_PATH)/rootdir/bin/mac_addr_normalization:system/bin/mac_addr_normalization \
        $(LOCAL_PATH)/rootdir/bin/modemlogcat_lte:system/bin/modemlogcat_lte \
        $(LOCAL_PATH)/rootdir/bin/netd:system/bin/netd \
        $(LOCAL_PATH)/rootdir/bin/oam_app:system/bin/oam_app \
        $(LOCAL_PATH)/rootdir/bin/octty:system/bin/octty \
        $(LOCAL_PATH)/rootdir/bin/preparesd.sh:system/bin/preparesd.sh \
        $(LOCAL_PATH)/rootdir/bin/rild:system/bin/rild \
        $(LOCAL_PATH)/rootdir/bin/sleeplogcat:system/bin/sleeplogcat \
        $(LOCAL_PATH)/rootdir/bin/start_110x_service.sh:system/bin/start_110x_service.sh \
        $(LOCAL_PATH)/rootdir/bin/supl20clientd:system/bin/supl20clientd \
        $(LOCAL_PATH)/rootdir/bin/thermal-daemon:system/bin/thermal-daemon \
        $(LOCAL_PATH)/rootdir/bin/wpa_supplicant:system/bin/wpa_supplicant \
        $(LOCAL_PATH)/rootdir/bin/wpa_supplicant_hisi:system/bin/wpa_supplicant_hisi

