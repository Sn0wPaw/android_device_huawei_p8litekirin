LOCAL_PATH := device/huawei/hi6210sft

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/etc/log/android_panic.sh:system/etc/log/android_panic.sh \
        $(LOCAL_PATH)/rootdir/etc/log/audio_dump.sh:system/etc/log/audio_dump.sh \
        $(LOCAL_PATH)/rootdir/etc/log/clean_log.sh:system/etc/log/clean_log.sh \
        $(LOCAL_PATH)/rootdir/etc/log/crash_notice.sh:system/etc/log/crash_notice.sh \
        $(LOCAL_PATH)/rootdir/etc/log/dontpanic.sh:system/etc/log/dontpanic.sh \
        $(LOCAL_PATH)/rootdir/etc/log/hifi_freeze.sh:system/etc/log/hifi_freeze.sh \
        $(LOCAL_PATH)/rootdir/etc/log/mcu_exception.sh:system/etc/log/mcu_exception.sh \
        $(LOCAL_PATH)/rootdir/etc/log/modem_exception.sh:system/etc/log/modem_exception.sh \
        $(LOCAL_PATH)/rootdir/etc/log/pmu_reboot.sh:system/etc/log/pmu_reboot.sh \
        $(LOCAL_PATH)/rootdir/etc/log/prepare_dir.sh:system/etc/log/prepare_dir.sh \
        $(LOCAL_PATH)/rootdir/etc/log/reboot_history_write.sh:system/etc/log/reboot_history_write.sh \
        $(LOCAL_PATH)/rootdir/etc/log/thermal_reboot.sh:system/etc/log/thermal_reboot.sh \
        $(LOCAL_PATH)/rootdir/etc/log/wdg_rstlog_save.sh:system/etc/log/wdg_rstlog_save.sh
