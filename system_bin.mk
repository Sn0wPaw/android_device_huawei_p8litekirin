LOCAL_PATH := device/huawei/hi6210sft

# Binaries that we cannot extract with extract-files.sh
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/bin/atcmdserver:system/bin/atcmdserver \
        $(LOCAL_PATH)/rootdir/bin/device_monitor:system/bin/device_monitor \
        $(LOCAL_PATH)/rootdir/bin/glgps4752:system/bin/glgps4752\
        $(LOCAL_PATH)/rootdir/bin/glgps4752cl:system/bin/glgps4752cl \
        $(LOCAL_PATH)/rootdir/bin/glgps47531:system/bin/glgps47531 \
        $(LOCAL_PATH)/rootdir/bin/glgps47531cl:system/bin/glgps47531cl \
        $(LOCAL_PATH)/rootdir/bin/gps4752logd:system/bin/gps4752logd \
        $(LOCAL_PATH)/rootdir/bin/gpsdaemon:system/bin/gpsdaemon \
        $(LOCAL_PATH)/rootdir/bin/gpslogd:system/bin/gpslogd \
        $(LOCAL_PATH)/rootdir/bin/hdbd:system/bin/hdbd \
        $(LOCAL_PATH)/rootdir/bin/hdmi_daemon:system/bin/hdmi_daemon \
        $(LOCAL_PATH)/rootdir/bin/hw_cdmamodem_service:system/bin/hw_cdmamodem_service \
        $(LOCAL_PATH)/rootdir/bin/hwnff:system/bin/hwnff \
        $(LOCAL_PATH)/rootdir/bin/hwnffserver:system/bin/hwnffserver \
        $(LOCAL_PATH)/rootdir/bin/hwpged:system/bin/hwpged \
        $(LOCAL_PATH)/rootdir/bin/hw_ueventd:system/bin/hw_ueventd \
        $(LOCAL_PATH)/rootdir/bin/mac_addr_normalization:system/bin/mac_addr_normalization \
        $(LOCAL_PATH)/rootdir/bin/mediaserver:system/bin/mediaserver \
        $(LOCAL_PATH)/rootdir/bin/nvm_server:system/bin/nvm_server \
        $(LOCAL_PATH)/rootdir/bin/oeminfo_nvm_server:system/bin/oeminfo_nvm_server \
        $(LOCAL_PATH)/rootdir/bin/rild:system/bin/rild \
        $(LOCAL_PATH)/rootdir/bin/storedefaultkey:system/bin/storedefaultkey \
        $(LOCAL_PATH)/rootdir/bin/teecd:system/bin/teecd \
        $(LOCAL_PATH)/rootdir/bin/thermal-daemon:system/bin/thermal-daemon

