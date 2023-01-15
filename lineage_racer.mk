#
# Copyright (C) 2017-2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from racer device
$(call inherit-product, device/motorola/racer/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_racer
PRODUCT_DEVICE := racer
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Motorola Edge
PRODUCT_MANUFACTURER := motorola

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Riced

RICE_CHIPSET := "Snapdragon765G5G"

RICE_MAINTAINER := "NivlaFX"

# GMS build flags, if none were defined the package build type will be AOSP (default: false)
WITH_GMS := true

SUSHI_BOOTANIMATION := 1080

# Graphene Camera
TARGET_BUILD_GRAPHENEOS_CAMERA := false

# Aperture Camera
TARGET_BUILD_APERTURE_CAMERA := true

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

# UDFPS ICONS/ANIMATIONS
TARGET_HAS_UDFPS := true

# Spoof build description/fingerprint as pixel device
TARGET_USE_PIXEL_FINGERPRINT := true

# NGA
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

# Google Telephony
TARGET_USE_GOOGLE_TELEPHONY := true

# Build info
BUILD_FINGERPRINT := "motorola/racer_retail/racer:11/RPDS31.Q4U-39-26-14-3/ee443b:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=racer_retail \
    PRIVATE_BUILD_DESC="racer_retail-user 11 RPDS31.Q4U-39-26-14-3 ee443b release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Google Pixel 6 Fingerprint
GOOGLE_BUILD_FINGERPRINT := google/oriole/oriole:13/TQ1A.230105.002/9325679:user/release-keys

# GMS FINGERPRINT OVERIDE
PRODUCT_OVERRIDE_GMS_FINGERPRINT=$(BUILD_FINGERPRINT)
