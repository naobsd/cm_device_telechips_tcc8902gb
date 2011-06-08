USE_CAMERA_STUB := true
BOARD_USES_GENERIC_AUDIO := true

# inherit from the proprietary version
-include vendor/coby/kyros7015/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := tcc92xx
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_ARCH_VARIANT_CPU := arm1176jzf-s
TARGET_ARCH_VARIANT_FPU := vfp
TARGET_BOOTLOADER_BOARD_NAME := tcc8902

TARGET_PROVIDES_INIT_RC := true

TARGET_PREBUILT_KERNEL := device/coby/kyros7015/kernel
BOARD_KERNEL_CMDLINE := console=ttyTCC,115200n8
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 4096

# fix this up by examining /proc/mtd on a running device
# dev:    size   erasesize  name
# mtd0: 00a00000 00100000 "boot"
# mtd1: 00500000 00100000 "kpanic"
# mtd2: 0b400000 00100000 "system"
# mtd3: 00400000 00100000 "splash"
# mtd4: 02800000 00100000 "cache"
# mtd5: 10500000 00100000 "userdata"
# mtd6: 00a00000 00100000 "recovery"
# mtd7: 00100000 00100000 "misc"
# mtd8: 00100000 00100000 "tcc"
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00a00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00a00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0b400000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x10500000
BOARD_FLASH_BLOCK_SIZE := 1048576

BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/coby/kyros7015/recovery_ui.c

BOARD_WPA_SUPPLICANT_DRIVER := AWEXT
WIFI_DRIVER_MODULE_PATH     := "/system/wifi/ar6000.ko"
WIFI_DRIVER_MODULE_ARG      := "ifname=wlan0"
WIFI_DRIVER_MODULE_NAME     := "ar6000"

BOARD_HAVE_BLUETOOTH := true

BOARD_EGL_CFG := device/coby/kyros7015/egl.cfg
BOARD_NO_RGBX_8888 := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true
