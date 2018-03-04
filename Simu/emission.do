puts "Simulation script for ModelSim "

vlib work
vcom -93 ../Source/emission.vhd
vcom -93 tb_emission.vhd

vsim -novopt tb_emission

add wave *

run -a
