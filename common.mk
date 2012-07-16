# Generic product
PRODUCT_NAME := primerunner
PRODUCT_BRAND := primerunner
PRODUCT_DEVICE := generic

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/primerunner/overlay/common

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enterprise_mode=1

# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/primerunner/proprietary/common/app/Books.apk:system/app/Books.apk \
    vendor/primerunner/proprietary/common/app/BrowserGoogle.apk:system/app/BrowserGoogle.apk \
    vendor/primerunner/proprietary/common/app/CalendarGoogle.apk:system/app/CalendarGoogle.apk \
    vendor/primerunner/proprietary/common/app/ChromeBookmarksSyncAdapter.apk:system/app/ChromeBookmarksSyncAdapter.apk \
    vendor/primerunner/proprietary/common/app/GalleryGoogle.apk:system/app/GalleryGoogle.apk \
    vendor/primerunner/proprietary/common/app/GenieWidget.apk:system/app/GenieWidget.apk \
    vendor/primerunner/proprietary/common/app/Gmail.apk:system/app/Gmail.apk \
    vendor/primerunner/proprietary/common/app/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
    vendor/primerunner/proprietary/common/app/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
    vendor/primerunner/proprietary/common/app/GoogleEars.apk:system/app/GoogleEars.apk \
    vendor/primerunner/proprietary/common/app/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
    vendor/primerunner/proprietary/common/app/GoogleLoginService.apk:system/app/GoogleLoginService.apk \
    vendor/primerunner/proprietary/common/app/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
    vendor/primerunner/proprietary/common/app/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
    vendor/primerunner/proprietary/common/app/GoogleTTS.apk:system/app/GoogleTTS.apk \
    vendor/primerunner/proprietary/common/app/LatinImeDictionaryPack.apk:system/app/LatinImeDictionaryPack.apk \
    vendor/primerunner/proprietary/common/app/LatinImeGoogle.apk:system/app/LatinImeGoogle.apk \
    vendor/primerunner/proprietary/common/app/Maps.apk:system/app/Maps.apk \
    vendor/primerunner/proprietary/common/app/MediaUploader.apk:system/app/MediaUploader.apk \
    vendor/primerunner/proprietary/common/app/Music2.apk:system/app/Music2.apk \
    vendor/primerunner/proprietary/common/app/NetworkLocation.apk:system/app/NetworkLocation.apk \
    vendor/primerunner/proprietary/common/app/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
    vendor/primerunner/proprietary/common/app/Phonesky.apk:system/app/Phonesky.apk \
    vendor/primerunner/proprietary/common/app/PlusOne.apk:system/app/PlusOne.apk \
    vendor/primerunner/proprietary/common/app/SetupWizard.apk:system/app/SetupWizard.apk \
    vendor/primerunner/proprietary/common/app/Street.apk:system/app/Street.apk \
    vendor/primerunner/proprietary/common/app/Talk.apk:system/app/Talk.apk \
    vendor/primerunner/proprietary/common/app/talkback.apk:system/app/talkback.apk \
    vendor/primerunner/proprietary/common/app/Velvet.apk:system/app/Velvet.apk \
    vendor/primerunner/proprietary/common/app/VideoEditorGoogle.apk:system/app/VideoEditorGoogle.apk \
    vendor/primerunner/proprietary/common/app/VoiceDialer.apk:system/app/VoiceDialer.apk \
    vendor/primerunner/proprietary/common/app/VoiceSearchStub.apk:system/app/VoiceSearchStub.apk \
    vendor/primerunner/proprietary/common/app/YouTube.apk:system/app/YouTube.apk \
    vendor/primerunner/proprietary/common/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/primerunner/proprietary/common/etc/permissions/features.xml:system/etc/permissions/features.xml \
    vendor/primerunner/proprietary/common/etc/updatecmds/google_generic_update.txt:system/etc/updatecmds/google_generic_update.txt \
    vendor/primerunner/proprietary/common/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    vendor/primerunner/proprietary/common/lib/libgcomm_jni.so:system/lib/libgcomm_jni.so \
    vendor/primerunner/proprietary/common/lib/libgoogle_recognizer_jni.so:system/lib/libgoogle_recognizer_jni.so \
    vendor/primerunner/proprietary/common/lib/libjni_eglfence.so:system/lib/libjni_eglfence.so \
    vendor/primerunner/proprietary/common/lib/libjni_mosaic.so:system/lib/libjni_mosaic.so \
    vendor/primerunner/proprietary/common/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \
    vendor/primerunner/proprietary/common/lib/libttscompat.so:system/lib/libttscompat.so \
    vendor/primerunner/proprietary/common/lib/libttspico.so:system/lib/libttspico.so \
    vendor/primerunner/proprietary/common/lib/libvideochat_jni.so:system/lib/libvideochat_jni.so \
    vendor/primerunner/proprietary/common/lib/libvideochat_stabilize.so:system/lib/libvideochat_stabilize.so \
    vendor/primerunner/proprietary/common/lib/libvoicesearch.so:system/lib/libvoicesearch.so \
    vendor/primerunner/proprietary/common/lib/libvorbisencoder.so:system/lib/libvorbisencoder.so 

ifneq ($(filter maguro crespo toro,$(TARGET_PRODUCT)),)
# Blobs common to all devices except emulator and tablets
PRODUCT_COPY_FILES += \
    vendor/primerunner/proprietary/common/app/CarHome.apk:system/app/CarHome.apk \
    vendor/primerunner/proprietary/common/app/GenieWidget.apk:system/app/GenieWidget.apk \
    vendor/primerunner/proprietary/common/app/SetupWizard.apk:system/app/SetupWizard.apk
endif

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

