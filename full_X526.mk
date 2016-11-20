# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.mk
$(call inherit-product, device/LeEco/X526/device.mk)

# Specifying timezone
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.timezone=Asia/Kolkata

# USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
	persist.service.adb.enable=1 \
	persist.service.debuggable=1 \
	ro.debuggable=1

# Setting Build UTC Date in build.prop to 0
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device identifier. This must come after all inclusions
PRODUCT_NAME := Le 2
PRODUCT_DEVICE := X526
PRODUCT_BRAND := LeEco
PRODUCT_MANUFACTURER := LeMobile
PRODUCT_MODEL := LeEco Le 2 X526