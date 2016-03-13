# File System
PRODUCT_PACKAGES += \
    	setup_fs \
    	librs_jni \
    	libsrec_jni \
    	com.android.future.usb.accessory \
    	make_ext4fs \
    	minivold

PRODUCT_PACKAGES += \
	fstab.hi6210sft \
	init.audio.rc \
	init.chip.usb.rc \
	init.connectivity.bcm43xx.rc \
	init.connectivity.hi110x.rc \
	init.connectivity.rc \
	init.device.rc \
	init.environ.rc \
	init.extmodem.rc \
	init.hi6210sft.rc \
	init.hisi.rc \
	init.manufacture.rc \
	init.performance.rc \
	init.platform.rc \
	init.rc \
	init.recovery.hi110x.rc \
	init.recovery.hi6210sft.rc \
	init.tee.rc \
	init.usb.rc \
	ueventd.hi6210sft.rc \
	ueventd.rc \
	

# Ramdisk
PRODUCT_COPY_FILES += \
	device/huawei/p8litekirin/ramdisk/fstab.hi6210sft:root/fstab.hi6210sft \
	device/huawei/p8litekirin/ramdisk/init:root/init \
	device/huawei/p8litekirin/ramdisk/init.5801.rc:root/init.5801.rc \
	device/huawei/p8litekirin/ramdisk/init.6165.rc:root/init.6165.rc \
	device/huawei/p8litekirin/ramdisk/init.10106.rc:root/init.10106.rc \
	device/huawei/p8litekirin/ramdisk/init.51054.rc:root/init.51054.rc \
	device/huawei/p8litekirin/ramdisk/init.102173.rc:root/init.102173.rc \
	device/huawei/p8litekirin/ramdisk/init.142782.rc:root/init.142782.rc \
	device/huawei/p8litekirin/ramdisk/init.audio.rc:root/init.audio.rc \
	device/huawei/p8litekirin/ramdisk/init.chip.usb.rc:root/init.chip.usb.rc \
	device/huawei/p8litekirin/ramdisk/init.connectivity.bcm43xx.rc:root/init.connectivity.bcm43xx.rc \
	device/huawei/p8litekirin/ramdisk/init.connectivity.hi110x.rc:root/init.connectivity.hi110x.rc \
	device/huawei/p8litekirin/ramdisk/init.connectivity.rc:root/init.connectivity.rc \
	device/huawei/p8litekirin/ramdisk/init.device.rc:root/init.device.rc \
	device/huawei/p8litekirin/ramdisk/init.environ.rc:root/init.environ.rc \
	device/huawei/p8litekirin/ramdisk/init.extmodem.rc:root/init.extmodem.rc \
	device/huawei/p8litekirin/ramdisk/init.hi6210sft.rc:root/init.hi6210sft.rc \
	device/huawei/p8litekirin/ramdisk/init.hisi.rc:root/init.hisi.rc \
	device/huawei/p8litekirin/ramdisk/init.manufacture.rc:root/init.manufacture.rc \
	device/huawei/p8litekirin/ramdisk/init.performance.rc:root/init.performance.rc \
	device/huawei/p8litekirin/ramdisk/init.platform.rc:root/init.platform.rc \
	device/huawei/p8litekirin/ramdisk/init.protocol.rc:root/init.protocol.rc \
	device/huawei/p8litekirin/ramdisk/init.rc:root/init.rc \
	device/huawei/p8litekirin/ramdisk/init.recovery.hi110x.rc:root/init.recovery.hi110x.rc \
	device/huawei/p8litekirin/ramdisk/init.recovery.hi6210sft.rc:root/init.recovery.hi6210sft.rc \
	device/huawei/p8litekirin/ramdisk/init.tee.rc:root/init.tee.rc \
	device/huawei/p8litekirin/ramdisk/init.trace.rc:root/init.trace.rc \
	device/huawei/p8litekirin/ramdisk/init.usb.rc:root/init.usb.rc \
	device/huawei/p8litekirin/ramdisk/init.zygote64_32.rc:root/init.zygote64_32.rc \
	device/huawei/p8litekirin/ramdisk/init.zygote32.rc:root/init.zygote32.rc \
	device/huawei/p8litekirin/ramdisk/ueventd.5801.rc:root/ueventd.5801.rc \
	device/huawei/p8litekirin/ramdisk/ueventd.6165.rc:root/ueventd.6165.rc \
	device/huawei/p8litekirin/ramdisk/ueventd.10106.rc:root/ueventd.10106.rc \
	device/huawei/p8litekirin/ramdisk/ueventd.51054.rc:root/ueventd.51054.rc \
	device/huawei/p8litekirin/ramdisk/ueventd.102173.rc:root/ueventd.102173.rc \
	device/huawei/p8litekirin/ramdisk/ueventd.142782.rc:root/ueventd.142782.rc \
	device/huawei/p8litekirin/ramdisk/ueventd.hi6210sft.rc:root/ueventd.hi6210sft.rc \
	device/huawei/p8litekirin/ramdisk/ueventd.rc:root/ueventd.rc \
	device/huawei/p8litekirin/ramdisk/sbin/adbd:root/sbin/adbd\
	device/huawei/p8litekirin/ramdisk/sbin/check_root:root/sbin/check_root\
	device/huawei/p8litekirin/ramdisk/sbin/e2fsck_s:root/sbin/e2fsck_s\
	device/huawei/p8litekirin/ramdisk/sbin/emmc_partation:root/sbin/emmc_partation\
	device/huawei/p8litekirin/ramdisk/sbin/hdbd:root/sbin/hdbd\
	device/huawei/p8litekirin/ramdisk/sbin/adbd:healthd/sbin/healthd\
	device/huawei/p8litekirin/ramdisk/sbin/adbd:teecd/sbin/teecd
