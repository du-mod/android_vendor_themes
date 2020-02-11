#
# Copyright (C) 2019 The Dirty Unicorns Project
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

DU_DEVICE := $(patsubst %f,%,$(subst du_,,$(TARGET_PRODUCT)))

ifneq ($(filter oneplus3,$(DU_DEVICE)),)
DEVICE_PACKAGE_OVERLAYS += vendor/themes/wallpapers/1080x1920/
else ifneq ($(filter blueline bonito,$(DU_DEVICE)),)
DEVICE_PACKAGE_OVERLAYS += vendor/themes/wallpapers/1080x2280/
else ifneq ($(filter marlin sailfish wahoo,$(DU_DEVICE)),)
DEVICE_PACKAGE_OVERLAYS += vendor/themes/wallpapers/1440x2560/
else ifneq ($(filter coral crosshatch dragon emulator flame taimen,$(DU_DEVICE)),)
DEVICE_PACKAGE_OVERLAYS += vendor/themes/wallpapers/1440x2960/
else
DEVICE_PACKAGE_OVERLAYS += vendor/themes/wallpapers/1080x1920/
endif

DEVICE_PACKAGE_OVERLAYS += vendor/themes/overlay/common/
