# Get proprietary blobs
-include vendor/retroid/pocket2/BoardConfigVendor.mk

DEVICE_PATH := device/retroid/pocket2

# Architecture
TARGET_BOARD_PLATFORM := mt6580

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7

# Screen (For Bootanimation generation)
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 640

# Kernel
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_SOURCE := kernel/retroid/pocket2
TARGET_KERNEL_CONFIG := pocket1_defconfig
BOARD_KERNEL_IMAGE_NAME := zImage-dtb
TARGET_KERNEL_CROSS_COMPILE_PREFIX := $(shell pwd)/prebuilts/gcc/linux-x86/arm/gcc-linaro-6.3.1-2017.05-x86_64_arm-eabi/bin/arm-eabi-
BOARD_MKBOOTIMG_ARGS := --pagesize 2048 --base 0x80000000 --kernel_offset 0x00008000 --ramdisk_offset 0x04000000 --second_offset 0x00f00000 --tags_offset 0x0e000000 --cmdline "bootopt=64S3,32S1,32S1 androidboot.selinux=permissive"

# Images
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x1000000
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x1000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1400831000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1259647216
BOARD_VENDORIMAGE_PARTITION_SIZE := 196607000
BOARD_FLASH_BLOCK_SIZE := 131072

# Build Vendor Image
TARGET_COPY_OUT_VENDOR := vendor
BOARD_USES_VENDORIMAGE := true
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

# EGL
USE_OPENGL_RENDERER := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := false
TARGET_USES_HWC2 := true
TARGET_USES_HWC2ON1ADAPTER := false
MTK_HWC_VERSION := 2.0.0
MTK_SF_USE_PROCESSCALLSTACK := true
MTK_GPU_VERSION := mali utgard r8p0-00dev0
MTK_HWC_SUPPORT := yes

# Wifi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# MTK Hardware
BOARD_HAS_MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true
MTK_HARDWARE := true

# Charging
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/BOOT/BOOT/boot/boot_mode
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Recovery resources
TARGET_RECOVERY_FSTAB := device/retroid/pocket2/rootdir/etc/recovery.fstab
TARGET_PREBUILT_RECOVERY_KERNEL := device/retroid/pocket2/kernel

# Sepolicy
BOARD_SEPOLICY_DIRS := \
    device/retroid/pocket2/sepolicy

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/retroid/pocket2/bluetooth

# Bootanimation
TARGET_BOOTANIMATION_MULTITHREAD_DECODE := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# LineageOS Hardware
BOARD_USES_LINEAGE_HARDWARE := true
BOARD_HARDWARE_CLASS := device/retroid/pocket2/lineagehw    

# HIDL
DEVICE_MANIFEST_FILE := device/retroid/pocket2/configs/manifest.xml
DEVICE_MATRIX_FILE := device/retroid/pocket2/configs/compatibility_matrix.xml

# Seccomp policy
BOARD_SECCOMP_POLICY := device/retroid/pocket2/seccomp

# Headers
TARGET_SPECIFIC_HEADER_PATH := device/retroid/pocket2/include

# Gatekeeper
BOARD_USE_SOFT_GATEKEEPER := true

# Treble
PRODUCT_FULL_TREBLE_OVERRIDE := true
PRODUCT_VENDOR_MOVE_ENABLED := true
PRODUCT_COMPATIBILITY_MATRIX_LEVEL_OVERRIDE := 27
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

# MKE2FS
TARGET_USES_MKE2FS := true

# System Prop
TARGET_SYSTEM_PROP += device/retroid/pocket2/system.prop

# Vendor Prop
TARGET_VENDOR_PROP += device/retroid/pocket2/vendor.prop

# Exfat
TARGET_EXFAT_DRIVER := exfat

# Malloc_svelte
MALLOC_SVELTE := true

# Mediatek audio
BOARD_USES_MTK_AUDIO := true
USE_XML_AUDIO_POLICY_CONF := 1

# AAPT CONFIG
PRODUCT_AAPT_PREF_CONFIG := mdpi

