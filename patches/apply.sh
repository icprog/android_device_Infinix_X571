#!/bin/sh

echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="build frameworks/av frameworks/base frameworks/native system/core system/netd packages/apps/FMRadio/jni/fmr packages/apps/Settings vendor/cm"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
        echo "\n${RED}Applying ${NC}$dir ${RED}patches...${NC}\n"
	git apply -v $rootdirectory/device/Infinix/X571/patches/$dir/*.patch
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
