#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
$(call inherit-product-if-exists, vendor/samsung/e5lte/e5lte-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS = $(LOCAL_PATH)/overlay

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# TWRP
PRODUCT_COPY_FILES = \
    $(LOCAL_PATH)/recovery/twrp.fstab:recovery/root/etc/twrp.fstab

# ETC
PRODUCT_PACKAGES = \
	init.crda.sh \
	init.qcom.bt.sh \
	init.qcom.coex.sh \
	init.qcom.fm.sh \

# Ramdisk
PRODUCT_PACKAGES = \
    fstab.qcom \
    init.target.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.target.rc \
    ueventd.qcom.rc \
#DTBTOOL
PRODUCT_PACKAGES += \
	dtbTooLCM
