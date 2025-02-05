# Android 5.1.1
## Download source
```shell
git clone https://github.com/7aGiven/bionic buildBionic
cd buildBionic
dash 22.sh
```
## Build bionic
cd to source dir, etc `cd android-5.1.1_r38`, then
```shell
rm -r out ; source build/envsetup.sh && lunch aosp_arm64-user && mmma bionic
```
## Output
out/target/product/generic_arm64/system/lib/libc.so
