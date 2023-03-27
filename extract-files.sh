#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

function blob_fixup() {
    case "${1}" in
	vendor/lib*/libexynosdisplay.so vendor/lib*/sensors.sensorhub.so vendor/lib*/hw/hwcomposer.exynos9611.so)
            "${PATCHELF}" --replace-needed libutils.so libutils-v32.so "${2}"
            ;;
    esac
}

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=m21
export DEVICE_COMMON=universal9611-common
export VENDOR=samsung

"./../../${VENDOR}/${DEVICE_COMMON}/extract-files.sh" "$@"
