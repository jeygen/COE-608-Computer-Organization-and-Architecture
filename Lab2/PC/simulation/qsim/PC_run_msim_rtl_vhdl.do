transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/student2/s374ahme/coe608/Lab2/PC/add.vhd}
vcom -93 -work work {/home/student2/s374ahme/coe608/Lab2/PC/mux2to1.vhd}
vcom -93 -work work {/home/student2/s374ahme/coe608/Lab2/PC/register32.vhd}
vcom -93 -work work {/home/student2/s374ahme/coe608/Lab2/PC/pc.vhd}

