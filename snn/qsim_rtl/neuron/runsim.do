##################################################
#  Modelsim do file to run simuilation
#  MS 7/2015
##################################################

vlib work
vmap work work

# Include Netlist
vlog -incr ../../rtl/neuron/neuron.v
vlog -incr const_tb.v

# Testbench file
vlog -incr ../../rtl/neuron/neuron_tb.v

# Run Simulator
vsim -t ns -lib work neuron_tb
do waveformat.do
run -all
