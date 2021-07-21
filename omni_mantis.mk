# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our TWRP configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_NAME := omni_mantis
PRODUCT_DEVICE := mantis
PRODUCT_BRAND := Android
PRODUCT_MANUFACTURER := Amazon
