# Call AOSP packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Call tablet config
$(call inherit-product, vendor/lineage/config/common_mini_tablet_wifionly.mk)

# Call rp1 device
$(call inherit-product, device/retroid/pocket1/device.mk)

# Turtle extras
$(call inherit-product-if-exists, vendor/turtle/pocket1.mk)

# Device branding for AOSP
PRODUCT_BRAND := google
PRODUCT_DEVICE := pocket1
PRODUCT_MANUFACTURER := retroid
PRODUCT_MODEL := Retroid Pocket 1
PRODUCT_NAME := lineage_pocket1
PRODUCT_RELEASE_NAME := RetroidPocket1

# Lineage Overlay
DEVICE_PACKAGE_OVERLAYS += device/retroid/pocket2/overlay/lineage

# Remove extra apps
PRODUCT_PACKAGES += RemovePackages
