# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

$(call inherit-product, device/LeEco/X526/full_X526.mk)

PRODUCT_NAME := omni_X526
