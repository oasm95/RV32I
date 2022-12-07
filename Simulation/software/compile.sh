 
#riscv64-elf-gcc -march=rv32i -mabi=ilp32 -nostdlib $2 -Wl,-Ttext=0x0 -Tdata=0x1000 -Bstatic -o $1.o init.s intr.c $1.c
if [ $# -eq 2 ] 
then
    riscv64-elf-gcc -march=rv32i -mabi=ilp32 -Os $2 -Wl,-Ttext=0x0 -Bstatic -o $1.elf init.s intr.c $3 $1.c || exit 0
fi

riscv64-elf-objcopy  --dump-section .text=$1.text $1.elf
riscv64-elf-objcopy -S -O binary -R .text* -R .comment* -R .riscv* -g --gap-fill 0 $1.elf $1.data

BSSSIZE=$(riscv64-elf-size -G $1.elf | tail -n 1 | awk -F ' ' '{print $3}')

TXTSIZE=$(riscv64-elf-objdump -h $1.elf | sed -n '6p'| awk -F ' ' '{print $3}')
DATASTART=$(riscv64-elf-objdump -h $1.elf | sed -n '8p'| awk -F ' ' '{print $4}')
TXTSIZE=$(echo "obase=10; ibase=16; ${TXTSIZE^^}"| bc)
DATASTART=$(echo "obase=10; ibase=16; ${DATASTART^^}"| bc)

echo espacio entre secciones: $((DATASTART-TXTSIZE))

python dumpsoftware.py $1 $BSSSIZE $((DATASTART-TXTSIZE))
echo Imemdepth: $(wc -l programText.txt | cut -d ' ' -f 1)
echo Dmemdepth: $(wc -l programData.txt | cut -d ' ' -f 1)
echo bss:       $BSSSIZE
# riscv64-elf-objdump -D $1.elf
