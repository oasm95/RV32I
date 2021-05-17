#!/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project ~/Documents/tesis/dev/qflow/pipelined4CSR
#-------------------------------------------

# /usr/share/qflow/scripts/yosys.sh ~/Documents/tesis/dev/qflow/pipelined4CSR RISCV32I ~/Documents/tesis/dev/qflow/pipelined4CSR/source/riscv32i.v || exit 1
# /usr/share/qflow/scripts/graywolf.sh -d ~/Documents/tesis/dev/qflow/pipelined4CSR RISCV32I || exit 1
/usr/share/qflow/scripts/vesta.sh  ~/Documents/tesis/dev/qflow/pipelined4CSR RISCV32I || exit 1
# /usr/share/qflow/scripts/qrouter.sh ~/Documents/tesis/dev/qflow/pipelined4CSR RISCV32I || exit 1
# /usr/share/qflow/scripts/vesta.sh  -d ~/Documents/tesis/dev/qflow/pipelined4CSR RISCV32I || exit 1
# /usr/share/qflow/scripts/magic_db.sh ~/Documents/tesis/dev/qflow/pipelined4CSR RISCV32I || exit 1
# /usr/share/qflow/scripts/magic_drc.sh ~/Documents/tesis/dev/qflow/pipelined4CSR RISCV32I || exit 1
# /usr/share/qflow/scripts/netgen_lvs.sh ~/Documents/tesis/dev/qflow/pipelined4CSR RISCV32I || exit 1
# /usr/share/qflow/scripts/magic_gds.sh ~/Documents/tesis/dev/qflow/pipelined4CSR RISCV32I || exit 1
# /usr/share/qflow/scripts/cleanup.sh ~/Documents/tesis/dev/qflow/pipelined4CSR RISCV32I || exit 1
# /usr/share/qflow/scripts/cleanup.sh -p ~/Documents/tesis/dev/qflow/pipelined4CSR RISCV32I || exit 1
# /usr/share/qflow/scripts/magic_view.sh ~/Documents/tesis/dev/qflow/pipelined4CSR RISCV32I || exit 1
