# Android10
## Prerequirement
```shell
apt update && apt install repo
```
## Download source
```shell
repo init -u https://github.com/7aGiven/bionic -b bionic-10.0.0_r41
.repo/repo/repo sync
rm -r external/clang/Android.bp system/core/adb
```
## Build libc
```shell
rm -r out ; source build/envsetup.sh && lunch aosp_arm64-user && mmm bionic/libc
```
## Output
out/target/product/generic_arm64/system/lib64/bootstrap/libc.so
# Android7.1.2
## Prerequirement
The python2 in prebuilts is 32bit which can't run in 64 bit Ubuntu(no 32bit dependence).
```shell
apt update && apt install repo python2 openjdk-8-jdk-headless libncurses5
ln -s /bin/python2 /bin/python
```
## Download source
```shell
repo init -u https://github.com/7aGiven/bionic -b bionic-7.1.2_r36
.repo/repo/repo sync
```
## Build libc
```shell
rm -r out ; source build/envsetup.sh && lunch aosp_arm64-user && mmma bionic/libc
```
## Output
out/target/product/generic_arm64/system/lib64/libc.so