
#Makefile
RTL="../RTL/MiniCoreX_design.v"
TB="../TB/MiniCoreX_tb.v"
TOP_MODULE="MiniCoreX_tb"
COV_EN=1
REPORT_DIR = MiniCoreX_code_coverage
lib:
	vlib work

ifeq ($(COV_EN),0)
cmp_cmd=vlog $(RTL) $(TB)
else
cmp_cmd=vlog -coveropt 3 +acc +cover $(RTL) $(TB)
endif


ifeq ($(COV_EN),0)
sim_cmd=vsim -voptargs=+acc $(TOP_MODULE) -c -do "run -all; exit"
else
sim_cmd=vsim -coverage -voptargs=+acc $(TOP_MODULE) -c -do "coverage save -onexit -directive -cvg -codeall MiniCoreX.ucdb;run -all; exit"
endif

cmp:
	$(cmp_cmd)

sim:
	$(sim_cmd)

gui:
	vsim -voptargs=+acc $(TOP_MODULE)

report:
	vcover report -detail -html -output $(REPORT_DIR) MiniCoreX.ucdb

ifeq ($(COV_EN),0)
runsim: lib cmp sim
else
runsim: lib cmp sim report
endif

