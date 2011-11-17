# Inherit AOSP device configuration for TCC8902GB.
$(call inherit-product, device/telechips/tcc8902gb/full_tcc8902gb.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Include extra dictionaries for LatinIME
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/dictionaries

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_concorde71gb
PRODUCT_BRAND := telechips
PRODUCT_DEVICE := tcc8902gb
PRODUCT_MODEL := ConCorde tab 7.1 GB
PRODUCT_MANUFACTURER := ConCorde
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=concorde71gb BUILD_ID=GRK39F BUILD_FINGERPRINT=google/soju/crespo:2.3.6/GRK39F/189904:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.6 GRK39F 189904 release-keys" BUILD_NUMBER=189904

# Extra TCC8902GB overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/telechips/tcc8902gb/overlay

# Accelerometer hacks
PRODUCT_PROPERTY_OVERRIDES += \
    accelerometer.flip_xy=1 \
    accelerometer.invert_x=1 \
    accelerometer.invert_z=1

# Release name and versioning
PRODUCT_RELEASE_NAME := TCC8902GB
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy TCC8902GB specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
