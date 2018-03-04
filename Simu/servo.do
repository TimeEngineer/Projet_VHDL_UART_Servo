puts "Simulation script for ModelSim "

vlib work
vcom -93 ../Source/MAE_servo.vhd
vcom -93 tb_servo.vhd

vsim -novopt tb_servo

add wave *

run -a
