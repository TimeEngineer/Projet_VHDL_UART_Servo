puts "Simulation script for ModelSim "

vlib work
vcom -93 ../Source/emissionreceptionservo.vhd
vcom -93 tb_IP.vhd

vsim -novopt tb_IP

add wave *

run -a
