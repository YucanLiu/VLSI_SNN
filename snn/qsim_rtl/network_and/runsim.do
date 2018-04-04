##################################################
#  Modelsim do file to run simuilation
#  MS 7/2015
##################################################

vlib work
vmap work work

# Include Netlist
vlog -incr ../../rtl/network_and/neuron.v
vlog -incr ../../rtl/network_and/network_and.v
vlog -incr const_tb.v

# Testbench file
vlog -incr ../../rtl/network_and/network_and_tb.v

# Run Simulator
vsim -t ns -lib work network_and_tb
do waveformat.do
run -all
