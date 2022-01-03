# Call AOSP packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Call device.mk (shared between CM/LineageOS & AOSP)
$(call inherit-product, device/retroid/pocket1/device.mk)

# Call device-tablet.mk (Used for non-ATV builds)
$(call inherit-product, device/retroid/pocket2/device-tablet.mk)

# Device branding for AOSP
PRODUCT_BRAND := google
PRODUCT_DEVICE := pocket1
PRODUCT_MANUFACTURER := retroid
PRODUCT_MODEL := Retroid Pocket 1
PRODUCT_NAME := aosp_pocket1
PRODUCT_RELEASE_NAME := RetroidPocket1

