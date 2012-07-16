# Blobs necessary for media effects
PRODUCT_COPY_FILES +=  \
    vendor/primerunner/proprietary/common_media_effects/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/primerunner/proprietary/common_media_effects/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/primerunner/proprietary/common_media_effects/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
    vendor/primerunner/proprietary/common_media_effects/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/primerunner/proprietary/common_media_effects/media/PFFprec_600.emd:system/media/PFFprec_600.emd

$(call inherit-product-if-exists, frameworks/base/data/videos/VideoPackage2.mk)
