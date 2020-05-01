#sr/bin/bash

echo "compile..."
echo ""

cd ./boot
nasm boot.asm -o boot.bin
mv boot.bin ../bin/

cd ../bin/
dd if=boot.bin of=boot.img bs=512 count=1 conv=notrunc

echo ""
echo "run bochs..."
echo ""

bochs -f ./bochsrc.txt
