## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := e5lte

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/e5lte/device_e5lte.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := e5lte
PRODUCT_NAME := cm_e5lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := e5lte
PRODUCT_MANUFACTURER := samsung
