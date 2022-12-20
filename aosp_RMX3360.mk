# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from RMX3360 device
$(call inherit-product, device/oplus/RMX3360/device.mk)

# Inherit some common Elixir Stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Official-ify
ELIXIR_MAINTAINER := X-R-P
ELIXIR_BUILD_TYPE := OFFICIAL
IS_PHONE := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_INCLUDE_STOCK_ACORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
EXTRA_UDFPS_ANIMATIONS := true
TARGET_FACE_UNLOCK_SUPPORTED := true

#Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := aosp_RMX3360
PRODUCT_DEVICE := RMX3360
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3360

PRODUCT_SYSTEM_NAME := RMX3360
PRODUCT_SYSTEM_DEVICE := RE54ABL1

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user-13-TQ1A.221205.011-9244662-release-keys" \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := google/redfin/redfin:13/TQ1A.221205.011/9244662:user/release-keys
PRODUCT_OVERRIDE_GMS_FINGERPRINT := google/redfin/redfin:13/TQ1A.221205.011/9244662:user/release-keys
