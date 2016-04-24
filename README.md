# make omnirom for hi6210sft

This readme is to help you make a bootable Omnirom image for hi6210sft P8 Lite

Why name it Alice, because i think it's the real name of our device (look at the vendor\firmware dir :) ) and it's nicer than hi6210sft

WARNING: There is nothing working for the moment, only screen 

First you need to Get the Omni code.

I won't explain it but i will give you a good url to begin: http://docs.omnirom.org/Setting_Up_A_Compile_Environment
 
## Clone device files

Go into the main directory of your Omnirom source and type:
> git clone -b android-5.1 https://github.com/olrak2/android_device_huawei_alice device/huawei/alice

## Clone vendor files

Go into the main directory of your Omnirom source and type:
> git clone -b android-5.1 https://github.com/olrak2/android_vendor_huawei_alice vendor/huawei/alice

## Disable the camera for now because of crash

For now there the camera does not work.  
You need to disable the startup of the camere in the init.rc file of the build.
The init.rc file is located in the system/core/rootdir dir.
Search for camera and remove that word.

## Start the make command

Typ in the main direcotry of your Omnirom:
> . build/envsetup.sh

> lunch omni_alice-eng

> mka

To make a flasable zip file type:
> mka otapackage

## Flash to your device

Once everything is build, the boot and system image are located in the out/target/product/alice directory.

Flash the boot.img and the system.img to your device with the fastboot commands or flash the zip file with TWRP.

Good luck with the build and the debugging.

ps: it could be there are some files you need to remove in the build tree (some scr test dirs), don't know witch one anymore

Source i used to make this happening (thx everybody):
https://github.com/XePeleato/android_device_huawei_p8lite_alel21/ (Thx XePeleato)

https://github.com/hak86/android_device_huawei_hi6210sft/ (Thx Haky86)

https://github.com/honor6-dev/ (Thx codeworkx)

https://github.com/omnirom/android_device_huawei_angler
