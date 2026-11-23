# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\gilst\Documents\ECE520\mult_and_fifo_soc\mult_and_fifo_soc_vitis\mult_and_fifo_plat\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\gilst\Documents\ECE520\mult_and_fifo_soc\mult_and_fifo_soc_vitis\mult_and_fifo_plat\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {mult_and_fifo_plat}\
-hw {C:\Users\gilst\Documents\ECE520\mult_and_fifo_soc\mult_and_fifo_bd_gg_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/Users/gilst/Documents/ECE520/mult_and_fifo_soc/mult_and_fifo_soc_vitis}

platform write
platform generate -domains 
platform active {mult_and_fifo_plat}
domain active {zynq_fsbl}
bsp reload
bsp setdriver -ip mult_16_bit_0 -driver none -ver {}
bsp write
bsp reload
catch {bsp regenerate}
domain active {standalone_domain}
bsp reload
bsp setdriver -ip mult_16_bit_0 -driver none -ver {}
bsp write
bsp reload
catch {bsp regenerate}
domain active {zynq_fsbl}
bsp reload
bsp setdriver -ip mult_16_bit_0 -driver mult_16_bit -ver 1.0
bsp write
bsp reload
catch {bsp regenerate}
bsp setdriver -ip mult_16_bit_0 -driver none -ver {}
bsp write
bsp reload
catch {bsp regenerate}
bsp setdriver -ip sc_fifo_axi_0 -driver none -ver {}
bsp write
bsp reload
catch {bsp regenerate}
domain active {standalone_domain}
bsp setdriver -ip sc_fifo_axi_0 -driver none -ver {}
bsp write
bsp reload
catch {bsp regenerate}
platform generate
