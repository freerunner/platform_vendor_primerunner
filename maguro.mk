# Inherit AOSP device configuration for maguro.
#$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit common product files.
$(call inherit-product, vendor/primerunner/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := primerunner_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

#PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=yakju BUILD_FINGERPRINT=google/yakju/maguro:4.0.4/IMM76D/299849:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.0.4 IMM76D 299849 release-keys" BUILD_NUMBER=299849

# Inherit common build.prop overrides
-include vendor/primerunner/common_versions.mk

# Extra maguro overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/primerunner/overlay/maguro

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/primerunner/proprietary/tuna/app/com.modaco.odexme.apk:system/app/com.modaco.odexme.apk \
    vendor/primerunner/proprietary/tuna/app/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/primerunner/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip

# Inherit media effect blobs
-include vendor/primerunner/common_media_effects.mk

# Inherit Face lock security blobs
-include vendor/primerunner/common_facelock.mk

# Inherit drm blobs
-include vendor/primerunner/common_drm_phone.mk

# Inherit root blobs
-include vendor/primerunner/common_root.mk

