#!/bin/bash

export NDK_PATH=/home/hseo/Debug/Works/NDK/tools/android-ndk-r13b
export FFMPEG_EXT_PATH=/home/hseo/Backup/Works/ExoPlayer/extensions/ffmpeg/src/main


cd "${FFMPEG_EXT_PATH}/jni"
git clone git://source.ffmpeg.org/ffmpeg ffmpeg
cd ffmpeg
./configure \
	--libdir=android-libs/armeabi-v7a \
	--arch=arm \
	--cpu=armv7-a \
	--cross-prefix="${NDK_PATH}/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/arm-linux-androideabi-" \
	--target-os=android \
	--sysroot="${NDK_PATH}/platforms/android-9/arch-arm/" \
	--extra-cflags="-march=armv7-a -mfloat-abi=softfp" \
	--extra-ldflags="-Wl,--fix-cortex-a8" \
	--extra-ldexeflags=-pie \
	--disable-static \
	--enable-shared \
	--disable-doc \
	--disable-programs \
	--disable-everything \
	--disable-avdevice \
	--disable-avformat \
	--disable-swscale \
	--disable-postproc \
	--disable-avfilter \
	--disable-symver \
	--enable-avresample \
	--enable-decoder=vorbis \
	--enable-decoder=opus \
	--enable-decoder=flac \
	--enable-decoder=alac
make -j4
make install-libs


cd "${FFMPEG_EXT_PATH}"/jni
${NDK_PATH}/ndk-build APP_ABI=armeabi-v7a -j4


./configure \
	--libdir=android-libs/armeabi \
	--arch=arm \
	--cpu=armv5te \
	--cross-prefix="${NDK_PATH}/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/arm-linux-androideabi-" \
	--target-os=android \
	--sysroot="${NDK_PATH}/platforms/android-9/arch-arm/" \
	--extra-cflags="-march=armv5te -mfloat-abi=softfp" \
	--extra-ldflags="-Wl,--fix-cortex-a8" \
	--extra-ldexeflags=-pie \
	--disable-static \
	--enable-shared \
	--disable-doc \
	--disable-programs \
	--disable-everything \
	--disable-avdevice \
	--disable-avformat \
	--disable-swscale \
	--disable-postproc \
	--disable-avfilter \
	--disable-symver \
	--enable-avresample \
	--enable-decoder=vorbis \
	--enable-decoder=opus \
	--enable-decoder=flac \
	--enable-decoder=alac

armeabi, armeabi-v7a, arm64-v8a, x86, x86_64, mips, mips64


./configure \
	--libdir=android-libs/arm64-v8a \
	--arch=arm64 \
	--cross-prefix="${NDK_PATH}/toolchains/aarch64-linux-android-4.9/prebuilt/linux-x86_64/bin/aarch64-linux-android-" \
	--target-os=android \
	--sysroot="${NDK_PATH}/platforms/android-9/arch-arm/" \
	--extra-ldexeflags=-pie \
	--disable-static \
	--enable-shared \
	--disable-doc \
	--disable-programs \
	--disable-everything \
	--disable-avdevice \
	--disable-avformat \
	--disable-swscale \
	--disable-postproc \
	--disable-avfilter \
	--disable-symver \
	--enable-avresample \
	--enable-decoder=vorbis \
	--enable-decoder=opus \
	--enable-decoder=flac \
	--enable-decoder=alac

./configure \
	--libdir=android-libs/x86 \
	--arch=x86 \
	--cpu=x86 \
	--cross-prefix="${NDK_PATH}/toolchains/x86-4.9/prebuilt/linux-x86_64/bin/i686-linux-android-" \
	--target-os=android \
	--sysroot="${NDK_PATH}/platforms/android-9/arch-x86/" \
	--extra-ldflags="-Wl,--fix-cortex-a8" \
	--extra-ldexeflags=-pie \
	--disable-static \
	--enable-shared \
	--disable-doc \
	--disable-programs \
	--disable-everything \
	--disable-avdevice \
	--disable-avformat \
	--disable-swscale \
	--disable-postproc \
	--disable-avfilter \
	--disable-symver \
	--disable-x86asm \
	--enable-avresample \
	--enable-decoder=vorbis \
	--enable-decoder=opus \
	--enable-decoder=flac \
	--enable-decoder=alac
