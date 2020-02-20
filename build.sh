cd os/usr/
make
cd ..
make mode=release
cd ..
cd riscv-pk
make
cd ..
cd ./wishbone_cyc10_os/bootloader_rom
make
cd ../config_string_rom
make
cd ..


