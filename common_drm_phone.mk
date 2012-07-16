# Blobs necessary for drm
PRODUCT_COPY_FILES +=  \
    vendor/primerunner/proprietary/common_drm/phone/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
    vendor/primerunner/proprietary/common_drm/phone/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar \
    vendor/primerunner/proprietary/common_drm/phone/lib/libfrsdk.so:system/lib/libfrsdk.so \
    vendor/primerunner/proprietary/common_drm/phone/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
    vendor/primerunner/proprietary/common_drm/phone/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
    vendor/primerunner/proprietary/common_drm/phone/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
    vendor/primerunner/proprietary/common_drm/phone/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so 

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true
