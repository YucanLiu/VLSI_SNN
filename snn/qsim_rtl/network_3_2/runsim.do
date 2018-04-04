##################################################
#  Modelsim do file to run simuilation
#  MS 7/2015
##################################################

vlib work
vmap work work

# Include Netlist
vlog -incr ../../rtl/network_3_2/network_3_2.v
vlog -incr ../../rtl/neuron/neuron.v
vlog -incr const_tb.v

# Testbench file
vlog -incr ../../rtl/network_3_2/network_3_2_tb.v

# Run Simulator
vsim -t ns -lib work network_3_2_tb
do waveformat.do
run -all
