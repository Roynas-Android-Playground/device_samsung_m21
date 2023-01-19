#
# Copyright (C) 2023 The LineageOS Project
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

# Inherit device configuration
$(call inherit-product, device/samsung/m21/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
## Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# Client-id base
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Build fingerprint
BUILD_FINGERPRINT := "samsung/m21nsxx/m21:12/SP1A.210812.016/M215FXXU3CWB1:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRIVATE_BUILD_DESC="m21nsxx-user 12 SP1A.210812.016 M215FXXU3CWB1 release-keys"

## Device configuration
PRODUCT_NAME := lineage_m21
PRODUCT_DEVICE := m21
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M215F
PRODUCT_MANUFACTURER := samsung

TARGET_BOOT_ANIMATION_RES := 1080
