BR_BINARIES_DIR=/root/PokePiOS/buildroot/output/images KCFLAGS=-Wno-attribute-alias DTC_FLAGS=-@ PKG_CONFIG_PATH="" /usr/bin/make -j9 -C /root/PokePiOS/buildroot/output/build/linux-custom HOSTCC=/usr/bin/gcc HOSTCC="/usr/bin/gcc -O2 -I/root/PokePiOS/buildroot/output/host/include -L/root/PokePiOS/buildroot/output/host/lib -Wl,-rpath,/root/PokePiOS/buildroot/output/host/lib" ARCH=arm64 INSTALL_MOD_PATH=/root/PokePiOS/buildroot/output/target CROSS_COMPILE="$(pwd)/output/host/bin/aarch64-buildroot-linux-uclibc-" DEPMOD=$(pwd)/output/host/sbin/depmod INSTALL_MOD_STRIP=1 HOSTCC="/usr/bin/gcc" menuconfig