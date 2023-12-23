#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

# ANGLE - Almost Native Graphics Layer Engine
PRODUCT_PACKAGES += \
    ANGLE

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml

# PowerShare
include hardware/google/pixel/powershare/device.mk

PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true
# PixelParts
include packages/apps/PixelParts/device.mk

# wireless_charger HAL service
include device/google/gs-common/wireless_charger/wireless_charger.mk

# Build necessary packages for vendor

# Audio
PRODUCT_PACKAGES += \
    libaudioroutev2.vendor \
    libtinycompress

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth-V1-ndk.vendor:64 \
    hardware.google.bluetooth.bt_channel_avoidance@1.0.vendor:64

# Camera
PRODUCT_PACKAGES += \
    libGralloc4Wrapper

# Codec2
PRODUCT_PACKAGES += \
    android.hardware.media.c2@1.0.vendor \
    android.hardware.media.c2@1.1.vendor:64 \
    android.hardware.media.c2@1.2.vendor:64 \
    libavservices_minijail.vendor \
    libcodec2_hidl@1.0.vendor \
    libcodec2_hidl@1.1.vendor:64 \
    libcodec2_hidl@1.2.vendor:64 \
    libcodec2_soft_common.vendor:64 \
    libcodec2_vndk.vendor \
    libexynosutils \
    libexynosv4l2 \
    libmedia_ecoservice.vendor \
    libsfplugin_ccodec_utils.vendor \
    libstagefright_bufferpool@2.0.1.vendor

# Confirmation UI
PRODUCT_PACKAGES += \
    android.hardware.confirmationui-V1-ndk.vendor:64 \
    android.hardware.confirmationui-lib.trusty:64 \
    android.hardware.confirmationui@1.0.vendor:64 \
    libteeui_hal_support.vendor:64

# Graphics
PRODUCT_PACKAGES += \
    libEGL_angle \
    libGLESv1_CM_angle \
    libGLESv2_angle

# HIDL
PRODUCT_PACKAGES += \
    libhidltransport.vendor \
    libhwbinder.vendor

# Identity credential
PRODUCT_PACKAGES += \
    android.hardware.identity-V5-ndk.vendor:64 \
    android.hardware.identity-support-lib.vendor:64 \
    android.hardware.identity_credential.xml

# Json
PRODUCT_PACKAGES += \
    libjson:64

# Nos
PRODUCT_PACKAGES += \
    libkeymaster4support.vendor:64 \
    libkeymint_support.vendor:64 \
    libnos:64 \
    libnosprotos:64 \
    libnos_client_citadel:64 \
    libnos_datagram:64 \
    libnos_datagram_citadel:64 \
    libnos_feature:64 \
    libnos_transport:64 \
    nos_app_avb:64 \
    nos_app_identity:64 \
    nos_app_keymaster:64 \
    nos_app_weaver:64 \
    pixelpowerstats_provider_aidl_interface-cpp.vendor:64

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0.vendor \
    android.hardware.sensors@2.0-ScopedWakelock.vendor \
    android.hardware.sensors@2.0.vendor \
    android.hardware.sensors@2.1.vendor \
    libsensorndkbridge \
    sensors.dynamic_sensor_hal

# Tether offload
PRODUCT_PACKAGES += \
    android.hardware.tetheroffload.config@1.0.vendor:64 \
    android.hardware.tetheroffload.control@1.0.vendor:64 \
    android.hardware.tetheroffload.control@1.1.vendor:64 \
    libnetfilter_conntrack:64 \
    libnfnetlink:64

# Trusty
PRODUCT_PACKAGES += \
    android.trusty.stats.nw.setter-cpp.vendor:64 \
    libbinder_trusty:64 \
    libtrusty_metrics:64

# Misc interfaces
PRODUCT_PACKAGES += \
    android.frameworks.stats-V1-cpp.vendor:64 \
    android.frameworks.stats-V1-ndk.vendor:32 \
    android.hardware.authsecret-V1-ndk.vendor:64 \
    android.hardware.biometrics.common-V2-ndk.vendor:64 \
    android.hardware.biometrics.fingerprint-V2-ndk.vendor:64 \
    android.hardware.gnss-V3-ndk.vendor:64 \
    android.hardware.health-V1-ndk.vendor \
    android.hardware.input.common-V1-ndk.vendor:64 \
    android.hardware.input.processor-V1-ndk.vendor:64 \
    android.hardware.keymaster@3.0.vendor:64 \
    android.hardware.keymaster@4.0.vendor:64 \
    android.hardware.keymaster@4.1.vendor:64 \
    android.hardware.neuralnetworks-V4-ndk.vendor:64 \
    android.hardware.neuralnetworks@1.0.vendor:64 \
    android.hardware.neuralnetworks@1.1.vendor:64 \
    android.hardware.neuralnetworks@1.2.vendor:64 \
    android.hardware.neuralnetworks@1.3.vendor:64 \
    android.hardware.oemlock-V1-ndk.vendor:64 \
    android.hardware.power@1.0.vendor:64 \
    android.hardware.power@1.1.vendor:64 \
    android.hardware.power@1.2.vendor:64 \
    android.hardware.radio.config@1.0.vendor \
    android.hardware.radio.config@1.1.vendor \
    android.hardware.radio.config@1.2.vendor \
    android.hardware.radio.deprecated@1.0.vendor \
    android.hardware.radio@1.2.vendor \
    android.hardware.radio@1.3.vendor \
    android.hardware.radio@1.4.vendor \
    android.hardware.radio@1.5.vendor \
    android.hardware.radio@1.6.vendor \
    android.hardware.thermal-V1-ndk.vendor:32 \
    android.hardware.thermal@1.0.vendor:32 \
    android.hardware.thermal@2.0.vendor:32 \
    android.hardware.weaver-V2-ndk.vendor:64 \
    android.hardware.wifi-V1-ndk.vendor:64 \
    com.google.hardware.pixel.display-V4-ndk.vendor:64

# Artifact path requirement allowlist
PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/etc/permissions/android.hardware.biometrics.face.xml \
    system/etc/permissions/privapp_whitelist_co.aospa.sense.xml \
    system/etc/default-permissions/default_permissions_co.aospa.sense.xml \
    system/lib64/faceunlock_vendor_dependencies.so \
    system/lib64/libFaceDetectCA.so \
    system/lib64/libMegviiUnlock-jni-1.2.so \
    system/lib64/libMegviiUnlock.so \
    system/lib64/libarcsoft-lib.so \
    system/lib64/libarcsoft_faceid.so \
    system/lib64/libarcsoftbase.so \
    system/lib64/libmegface.so \
    system/lib64/libmpbase.so \
    system/priv-app/FaceUnlock/FaceUnlock.apk \
    system/addon.d/70-velvet.sh \
    system/app/FlipendoPrebuilt/FlipendoPrebuilt.apk \
    system/app/GoogleExtShared/GoogleExtShared.apk \
    system/etc/permissions/privapp-permissions-google.xml \
    system/priv-app/GooglePackageInstaller/GooglePackageInstaller.apk \
    system/priv-app/DocumentsUIGoogle/DocumentsUIGoogle.apk \
    system/priv-app/NetworkPermissionConfigGoogle/NetworkPermissionConfigGoogle.apk \
    system/priv-app/NetworkStackGoogle/NetworkStackGoogle.apk \
    system/priv-app/TagGoogle/TagGoogle.apk \
    system/app/CaptivePortalLoginGoogle/CaptivePortalLoginGoogle.apk \
    system/app/GooglePrintRecommendationService/GooglePrintRecommendationService.apk \
    system/lib/libRSSupport.so \
    system/lib/libblasV8.so \
    system/lib/librsjni.so \
    system/lib64/libRSSupport.so \
    system/lib64/libblasV8.so \
    system/lib64/librsjni.so \
    system/addon.d/50-lineage.sh \
    system/app/NfcNci/NfcNci.apk \
    system/app/NfcNci/lib/arm64/libnfc_nci_jni.so \
    system/app/googleconf/googleconf.apk \
    system/app/wellbeingconf/wellbeingconf.apk \
    system/bin/backuptool_ab.functions \
    system/bin/backuptool_ab.sh \
    system/bin/backuptool_postinstall.sh \
    system/bin/curl \
    system/bin/getcap \
    system/bin/procmem \
    system/bin/scp \
    system/bin/setcap \
    system/bin/sftp \
    system/bin/ssh \
    system/bin/ssh-keygen \
    system/bin/sshd \
    system/bin/start-ssh \
    system/etc/hosts.spark_adblock \
    system/etc/init/lineage-ssh.rc \
    system/etc/init/lineage-system.rc \
    system/etc/init/lineage-updates.rc \
    system/etc/libnfc-nci.conf \
    system/etc/permissions/android.software.nfc.beam.xml \
    system/etc/permissions/android.software.sip.voip.xml \
    system/etc/sensitive_pn.xml \
    system/etc/ssh/sshd_config \
    system/etc/sysconfig/backup.xml \
    system/etc/sysconfig/hiddenapi-whitelist-co.aospa.sense.xml \
    system/lib/libsepol.so \
    system/lib64/android.hardware.nfc@1.0.so \
    system/lib64/android.hardware.nfc@1.1.so \
    system/lib64/android.hardware.nfc@1.2.so \
    system/lib64/libnfc-nci.so \
    system/lib64/libnfc_nci_jni.so \
    system/lib64/libsepol.so \
    system/lib64/libssh.so \
    system/priv-app/GoogleExtServices/GoogleExtServices.apk \
    system/usr/keylayout/Vendor_045e_Product_0719.kl
