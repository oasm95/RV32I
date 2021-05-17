cacti_conf = """\
-size (bytes) {}
-Array Power Gating - "false"
-WL Power Gating - "false"
-CL Power Gating - "false"
-Bitline floating - "false"
-Interconnect Power Gating - "false"
-Power Gating Performance Loss 0.01
-block size (bytes) {}
-associativity {}
-read-write port 1
-exclusive read port 0
-exclusive write port 0
-single ended read ports 0
-UCA bank count 1
-technology (u) 0.180
-page size (bits) 8192 
-burst length 8
-internal prefetch width 8
-Data array cell type - "itrs-hp"
-Data array peripheral type - "itrs-hp"
-Tag array cell type - "itrs-hp"
-Tag array peripheral type - "itrs-hp"
-output/input bus width 32
-operating temperature (K) 360
-cache type "cache"
-tag size (b) "default"
-access mode (normal, sequential, fast) - "normal"
-design objective (weight delay, dynamic power, leakage power, cycle time, area) 0:0:0:100:0
-deviate (delay, dynamic power, leakage power, cycle time, area) 20:100000:100000:100000:100000
-NUCAdesign objective (weight delay, dynamic power, leakage power, cycle time, area) 100:100:0:0:100
-NUCAdeviate (delay, dynamic power, leakage power, cycle time, area) 10:10000:10000:10000:10000
-Optimize ED or ED^2 (ED, ED^2, NONE): "ED^2"
-Cache model (NUCA, UCA)  - "UCA"
-NUCA bank count 0
-Wire signaling (fullswing, lowswing, default) - "Global_30"
-Wire inside mat - "semi-global"
-Wire outside mat - "semi-global"
-Interconnect projection - "conservative"
-Core count 8
-Cache level (L2/L3) - "L3"
-Add ECC - "true"
-Print level (DETAILED, CONCISE) - "CONCISE"
-Print input parameters - "false"
-Force cache config - "false"
-Ndwl 1
-Ndbl 1
-Nspd 0
-Ndcm 1
-Ndsam1 0
-Ndsam2 0
-dram_type "DDR3"
-io state "WRITE"
-addr_timing 1.0
-mem_density 4 Gb
-bus_freq 800 MHz
-duty_cycle 1.0
-activity_dq 1.0
-activity_ca 0.5
-num_dq 72
-num_dqs 18
-num_ca 25
-num_clk  2
-num_mem_dq 2
-mem_data_width 8
-rtt_value 10000
-ron_value 34
-tflight_value
-num_bobs 1
-capacity 80	
-num_channels_per_bob 1	
-first metric "Cost"
-second metric "Bandwidth"
-third metric "Energy"	
-DIMM model "ALL"
-mirror_in_bob "F" """

outputtxt ="Size: {}\tBlockSize: {}\tWays: {}\tAcessTime: {}\n" 


import subprocess
from cachesim import Cache

class Accesstime(Cache):
	
	def __init__(self,cachetype,settings,replacepolicy = None):
		Cache.__init__(self,cachetype,settings,replacepolicy)
		assert self.lines > 8,"Cacti not valid config"
		

sizes = (128,256,512,1024,2048,4096,8192,16384,32768,65536)
blocks = (4,8,16,32,64,128,256,512,1024)
ways = (2,4,8,16,32)
with open("ouput.txt",'w') as sout:
	for size in sizes:
		for block in blocks:
			for way in ways:
				try:
					cfg = [size,block,way]
					Accesstime('setway',cfg,'random')
					with open("cacheaccess.cfg",'w') as f:
						f.write(cacti_conf.format(*cfg))
					a = subprocess.run(["./cacti","-infile","cacheaccess.cfg"],capture_output=True)
					if a.returncode == 0:
						lines = a.stdout.decode().strip().split('\n')
						for line in lines:
							if "Access time" in line:
								sout.write(outputtxt.format(*cfg,line.split(': ')[-1]))
								break
						
				except ValueError:
					pass
				except AssertionError:
					pass
