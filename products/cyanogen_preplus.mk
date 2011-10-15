# Inherit AOSP device configuration for preplus.
$(call inherit-product, device/palm/preplus/preplus.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_preplus
PRODUCT_BRAND := palm
PRODUCT_DEVICE := preplus
PRODUCT_MODEL := Palm Pre Plus
PRODUCT_MANUFACTURER := Palm

# Release name and versioning
PRODUCT_RELEASE_NAME := PrePlus
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
