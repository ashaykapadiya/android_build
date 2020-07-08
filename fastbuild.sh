#!/bin/bash
# This was taken from @AndroidBuildersHelp on telegram, I have no idea who authored it, so please excuse any mistakes regarding that.
# To use this, export DEVICE=(yourdevice), export VARIANT=(yourvariant) and then run the script

. build/envsetup.sh
lunch aosp_${DEVICE}-${VARIANT}

mka SystemUI
mka api-stubs-docs
mka hiddenapi-lists-docs 
mka system-api-stubs-docs 
mka test-api-stubs-docs 
mka bacon
