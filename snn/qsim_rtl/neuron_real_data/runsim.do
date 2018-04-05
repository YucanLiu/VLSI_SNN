##################################################
#  Modelsim do file to run simuilation
#  MS 7/2015
##################################################

vlib work
vmap work work

# Include Netlist
vlog -incr ../../rtl/neuron_real_data/neuron.v
vlog -incr ../../rtl/neuron_real_data/real_data_and.v

vlog -incr const_tb.v

# Testbench file
vlog -incr ../../rtl/neuron_real_data/real_data_and_tb.v

# Run Simulator
vsim -t ns -lib work real_data_and_tb
do waveformat.do
run -all
