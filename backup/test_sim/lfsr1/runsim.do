##################################################
#  Modelsim do file to run simuilation
#  MS 7/2015
##################################################

vlib work
vmap work work

# Include Netlist and Testbench
vlog -incr ../rtl/lfsr1/lfsr1.v 
vlog -incr const_tb.v
vlog -incr test_lfsr.v

# Run Simulator
vsim -t ns -lib work testbench
do waveformat.do
run -all
