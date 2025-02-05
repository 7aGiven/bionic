branch=android-5.1.1_r38
projects='build bionic external/compiler-rt external/jemalloc external/libcxx external/stlport prebuilts/clang/linux-x86/host/3.5 prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9 prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.8 prebuilts/gcc/linux-x86/host/x86_64-linux-glibc2.11-4.6 system/core'

rm -rf $branch
mkdir $branch
cd $branch
set -x
for project in $projects
do
	git clone -c advice.detachedHead=false --depth 1 -b $branch https://android.googlesource.com/platform/$project $project
done
