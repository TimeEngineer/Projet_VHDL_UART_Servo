puts "Simulation script for ModelSim "

vlib work
vcom -93 ../Source/diviseur_reception.vhd
vcom -93 ../Source/diviseur_emission.vhd
vcom -93 tb_diviseur.vhd

vsim -novopt tb_diviseur

add wave *

run -a
