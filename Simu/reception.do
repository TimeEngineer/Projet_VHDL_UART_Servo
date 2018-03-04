puts "Simulation script for ModelSim "

vlib work
vcom -93 ../Source/emissionreception.vhd
vcom -93 tb_reception.vhd

vsim -novopt tb_reception

add wave *

run -a
