# Android10
## Download source
```shell
apt update && apt install repo
repo init -u https://github.com/7aGiven/bionic -b android-10.0.0_r41
.repo/repo/repo sync
rm -r external/clang/Android.bp system/core/adb
```
## Build libc
```shell
rm -r out ; source build/envsetup.sh && lunch aosp_arm64-user && mmm bionic/libc
```
## Output
out/target/product/generic_arm64/system/lib64/bootstrap/libc.so