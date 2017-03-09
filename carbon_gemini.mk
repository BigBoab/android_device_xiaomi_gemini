# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit Carbon GSM telephony parts
$(call inherit-product, vendor/carbon/config/gsm.mk)

# Inherit Carbon product configuration
$(call inherit-product, vendor/carbon/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/gemini/aosp_gemini.mk)

DEVICE_PACKAGE_OVERLAYS += device/xiaomi/gemini/overlay-carbon


# Device identifier. This must come after all inclusions.
PRODUCT_NAME := carbon_gemini
PRODUCT_DEVICE := gemini
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 5
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="gemini" \
    PRODUCT_NAME="gemini" \
    BUILD_FINGERPRINT="Xiaomi/gemini/gemini:7.0/NRD90M/V8.2.1.0.NAACNEB:user/release-keys" \
    PRIVATE_BUILD_DESC="gemini-user 7.0 NRD90M V8.2.1.0.NAACNEB release-keys"

TARGET_VENDOR := Xiaomi
