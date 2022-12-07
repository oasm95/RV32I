onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+design_1_1 -L xilinx_vip -L xil_defaultlib -L xpm -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_1_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {design_1_1.udo}

run -all

endsim

quit -force
