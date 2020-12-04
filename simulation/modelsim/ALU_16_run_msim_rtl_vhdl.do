transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/19176/Desktop/ALU16bit/ALU16bit/ALU_16.vhd}
vcom -93 -work work {C:/Users/19176/Desktop/ALU16bit/ALU16bit/bkadder.vhd}
vcom -93 -work work {C:/Users/19176/Desktop/ALU16bit/ALU16bit/genb2.vhd}
vcom -93 -work work {C:/Users/19176/Desktop/ALU16bit/ALU16bit/xor2.vhd}
vcom -93 -work work {C:/Users/19176/Desktop/ALU16bit/ALU16bit/and_2.vhd}
vcom -93 -work work {C:/Users/19176/Desktop/ALU16bit/ALU16bit/genprop.vhd}
vcom -93 -work work {C:/Users/19176/Desktop/ALU16bit/ALU16bit/carrygen.vhd}
vcom -93 -work work {C:/Users/19176/Desktop/ALU16bit/ALU16bit/finalsum.vhd}
vcom -93 -work work {C:/Users/19176/Desktop/ALU16bit/ALU16bit/zerocheck.vhd}
vcom -93 -work work {C:/Users/19176/Desktop/ALU16bit/ALU16bit/bitwise_nand.vhd}
vcom -93 -work work {C:/Users/19176/Desktop/ALU16bit/ALU16bit/nand_2.vhd}
vcom -93 -work work {C:/Users/19176/Desktop/ALU16bit/ALU16bit/zerocheck_1.vhd}
vcom -93 -work work {C:/Users/19176/Desktop/ALU16bit/ALU16bit/bitwise_xor.vhd}
vcom -93 -work work {C:/Users/19176/Desktop/ALU16bit/ALU16bit/mux_42.vhd}
vcom -93 -work work {C:/Users/19176/Desktop/ALU16bit/ALU16bit/mux_out.vhd}
vcom -93 -work work {C:/Users/19176/Desktop/ALU16bit/ALU16bit/cout_calc.vhd}
vcom -93 -work work {C:/Users/19176/Desktop/ALU16bit/ALU16bit/zout_calc.vhd}

vcom -93 -work work {C:/Users/19176/Desktop/ALU16bit/ALU16bit/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
