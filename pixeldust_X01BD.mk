#
# Copyright (C) 2018 The PixelDust Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common pixeldust stuff
$(call inherit-product, vendor/pixeldust/configs/pixeldust_phone.mk)

# Include optional stuff (e.g. prebuilt apps)
include vendor/pixeldust/configs/system_optional.mk

# Google Apps
$(call inherit-product, vendor/googleapps/googleapps.mk)

# Boot Animation
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080

# Official
SIGN_KEY := OFFICIAL

# Inherit from X01BD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := pixeldust_X01BD
PRODUCT_DEVICE := X01BD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M2
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

TARGET_VENDOR := asus
TARGET_VENDOR_PRODUCT_NAME := X01BD
TARGET_VENDOR_DEVICE_NAME := X01BD

PRODUCT_ENFORCE_RRO_TARGETS := \
    framework-res

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=X01BD PRODUCT_NAME=X01BD

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="jason-user 7.1.1 NMF26X V9.6.2.0.NCHMIFD release-keys"

BUILD_FINGERPRINT := "Xiaomi/jason/jason:7.1.1/NMF26X/V9.6.2.0.NCHMIFD:user/release-keys"

# Maintainer
PRODUCT_PROPERTY_OVERRIDES += \
    ro.pixeldust.maintainer="SonalSingh"

# Copy device specific prebuilt files
    vendor/pixeldust/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Use SDCLANG
TARGET_USE_SDCLANG := true

