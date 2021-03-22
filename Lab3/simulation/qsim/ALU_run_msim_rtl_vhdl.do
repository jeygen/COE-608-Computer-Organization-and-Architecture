transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/student2/s374ahme/coe608/Lab3/fulladd.vhd}
vcom -93 -work work {/home/student2/s374ahme/coe608/Lab3/adder4.vhd}
vcom -93 -work work {/home/student2/s374ahme/coe608/Lab3/adder16.vhd}

