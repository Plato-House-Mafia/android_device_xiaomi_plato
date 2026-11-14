#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from plato device.
$(call inherit-product, device/xiaomi/plato/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit keys.
ifndef ANDROID_PRIV_KEYS_MK_INCLUDED
$(call inherit-product-if-exists, vendor/lineage-priv/keys/keys.mk)
endif

PRODUCT_MAINLINE_BLUETOOTH_SEPOLICY_DEV_CERTIFICATES := vendor/lineage-priv/keys/

PRODUCT_NAME := lineage_plato
PRODUCT_DEVICE := plato
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 22071212AG

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=Xiaomi/plato_global/plato:15/AP3A.240905.015.A2/OS2.0.219.0.VLQMIXM:user/release-keys \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

EVO_BUILD_TYPE := Unofficial
WITH_GMS := true
TARGET_USES_MINI_GAPPS := false
TARGET_USES_PICO_GAPPS := false
BUILD_BCR := true
TARGET_HAS_UDFPS := true
TARGET_INCLUDE_BOOT_ANIMATIONS := true
TARGET_DISABLE_EPPE := true
TARGET_INCLUDE_GRAMOPHONE := false
TARGET_INCLUDE_VIPERFX := false
WITH_ADB_INSECURE := false
WITH_SU := false
BYPASS_CHARGE_SUPPORTED := false
TARGET_ENABLE_BLUR := true
PERF_ANIM_OVERRIDE := true
