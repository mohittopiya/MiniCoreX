WindowType IncrementalSchematic
DesignChecksum IaZ2HU7U8ol:8o^Zgh=W<2
RoutedNets {/MiniCoreX_tb/shift_sel_dumy 3 /MiniCoreX_tb/file 3 /MiniCoreX_tb/i 3 /MiniCoreX_tb/OUTPUT 3 /MiniCoreX_tb/j 3 /MiniCoreX_tb/MEM_SEL 3 /MiniCoreX_tb/CLK 3 /MiniCoreX_tb/INPUT_SEL 3 /MiniCoreX_tb/expected1 3 /MiniCoreX_tb/k 3 /MiniCoreX_tb/ADDR 3 /MiniCoreX_tb/barrel_sel 3 /MiniCoreX_tb/data_size 3 /MiniCoreX_tb/addr_size 3 /MiniCoreX_tb/SHIFT_AMT 3 /MiniCoreX_tb/INPUT_1 3 /MiniCoreX_tb/shift_val 3 /MiniCoreX_tb/LOAD 3 /MiniCoreX_tb/input_a 3 /MiniCoreX_tb/INPUT_2 3 /MiniCoreX_tb/SHIFT_SEL 3 /MiniCoreX_tb/a 3 /MiniCoreX_tb/input_b 3 /MiniCoreX_tb/op_sel 3 /MiniCoreX_tb/OP_SEL 3 /MiniCoreX_tb/expected 3 /MiniCoreX_tb/RESET 3 /MiniCoreX_tb/usr_sel 3 /MiniCoreX_tb/alu_sel 3 /MiniCoreX_tb/ALU_SEL 3 /MiniCoreX_tb/USR_SEL 3 /MiniCoreX_tb/shift_amt_dumy 3 /MiniCoreX_tb/temp 3}
RoutedInst {}
WindowPreferences {showhierarchy 1 showacttime 1 inoutlocation 1 selequivnets 0 hidebuffers 0 hidecells 1 hideinverters 0 selectenv 1 autowave 1 lognets 1 popupenabled 1 mouseoverenabled 1 showdunames 0 showinstnames 1 shownetnames 0 shownetnamestyle corner shownetstate 0 showpinnames 1 showripindices 1 showvalues 1 verticaltext 1 netxFollowsControlLogic 0 netxMaxGates 1024 netxMaxLevels 32 use_code_preview 1 time0_warning 1 depth_warning 1 add_error_warning 1 diverge_warning 1}
EndOfStateInfo
# File saved with Nlview version 6.8.69_0 (04/08/25-18:45:38 bk=1.779)
#
property -reset
property autobundle 20
property boxcolor0 #00ffff
property boxcolor1 #999999
property boxinstcolor #ffffff
property boxpincolor #00ffff
property buscolor #ffff00
property closeenough 3
property enablebufferchaincollapsing 1
property enablescrollrect 1
property evaluateattrvalue 1
property extractsequentiallogic 2
property gatepinname 1
property inferbundlename 1
property instattrmax 50
property objecthighlight3 #008000
property objecthighlight4 #ff00ff
property objecthighlight5 #ffd700
property objecthighlight6 #0000ff
property objecthighlight9 #fa8072
property outboxcolor1 #a52a2a
property outboxcolor2 #000000
property outboxcolor4 #000000
property picksubnet 1
property pinattrmax 50
property pinorder 2
property recursivecallerrorlen 10
property searchvisibleobjects 1
property selectbycolor9 1
property showcellname 0
property showmarks 1
property shownetattr 4
property showripindex 3
property timelimit 50

module new v {} -nosplit
load symbol work.MiniCoreX_design(fast) v HIERGEN portBus INPUT_1 input.left 8 {INPUT_1[0]} {INPUT_1[1]} {INPUT_1[2]} {INPUT_1[3]} {INPUT_1[4]} {INPUT_1[5]} {INPUT_1[6]} {INPUT_1[7]} portBus OUTPUT output.right 16 {OUTPUT[0]} {OUTPUT[1]} {OUTPUT[2]} {OUTPUT[3]} {OUTPUT[4]} {OUTPUT[5]} {OUTPUT[6]} {OUTPUT[7]} {OUTPUT[8]} {OUTPUT[9]} {OUTPUT[10]} {OUTPUT[11]} {OUTPUT[12]} {OUTPUT[13]} {OUTPUT[14]} {OUTPUT[15]} portBus INPUT_2 input.left 8 {INPUT_2[0]} {INPUT_2[1]} {INPUT_2[2]} {INPUT_2[3]} {INPUT_2[4]} {INPUT_2[5]} {INPUT_2[6]} {INPUT_2[7]} portBus SHIFT_SEL input.left 3 {SHIFT_SEL[0]} {SHIFT_SEL[1]} {SHIFT_SEL[2]} port RESET input.left portBus ADDR input.left 8 {ADDR[0]} {ADDR[1]} {ADDR[2]} {ADDR[3]} {ADDR[4]} {ADDR[5]} {ADDR[6]} {ADDR[7]} portBus ALU_SEL input.left 5 {ALU_SEL[0]} {ALU_SEL[1]} {ALU_SEL[2]} {ALU_SEL[3]} {ALU_SEL[4]} portBus USR_SEL input.left 2 {USR_SEL[0]} {USR_SEL[1]} port LOAD input.left port MEM_SEL input.left port CLK input.left portBus OP_SEL input.left 2 {OP_SEL[0]} {OP_SEL[1]} port INPUT_SEL input.left portBus SHIFT_AMT input.left 3 {SHIFT_AMT[0]} {SHIFT_AMT[1]} {SHIFT_AMT[2]} boxcolor 1
load inst /MiniCoreX_tb/dut work.MiniCoreX_design(fast) v -autohide -attr acc +acc=<full> -attr @name dut -attr @cell work.MiniCoreX_design(fast) -x 118 -y 20 -pg 1
load net {/MiniCoreX_tb/dut/OUTPUT[3]} -attr @simnet 48 -attr @name {OUTPUT[3]} -attr @attrvalue 0 -attr @attr 0 -hierPin /MiniCoreX_tb/dut {OUTPUT[3]}
load net {/MiniCoreX_tb/INPUT_2[1]} -attr @simnet 13 -attr @name {INPUT_2[1]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {INPUT_2[1]}
load net {/MiniCoreX_tb/dut/INPUT_2[3]} -attr @simnet 15 -attr @name {INPUT_2[3]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {INPUT_2[3]}
load net {/MiniCoreX_tb/INPUT_1[2]} -attr @simnet 6 -attr @name {INPUT_1[2]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {INPUT_1[2]}
load net {/MiniCoreX_tb/ALU_SEL[3]} -attr @simnet 23 -attr @name {ALU_SEL[3]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {ALU_SEL[3]}
load net {/MiniCoreX_tb/ADDR[5]} -attr @simnet 37 -attr @name {ADDR[5]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {ADDR[5]}
load net {/MiniCoreX_tb/dut/INPUT_1[4]} -attr @simnet 8 -attr @name {INPUT_1[4]} -attr @attrvalue 1'h0 -attr @attr 1'h0 -hierPin /MiniCoreX_tb/dut {INPUT_1[4]}
load net {/MiniCoreX_tb/OUTPUT[10]} -attr @simnet 55 -attr @name {OUTPUT[10]} -attr @attrvalue 1'h0 -attr @attr 1'h0 -pin /MiniCoreX_tb/dut {OUTPUT[10]}
load net {/MiniCoreX_tb/SHIFT_SEL[2]} -attr @simnet 27 -attr @name {SHIFT_SEL[2]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {SHIFT_SEL[2]}
load net {/MiniCoreX_tb/dut/OUTPUT[12]} -attr @simnet 57 -attr @name {OUTPUT[12]} -attr @attrvalue 0 -attr @attr 0 -hierPin /MiniCoreX_tb/dut {OUTPUT[12]}
load net {/MiniCoreX_tb/dut/ADDR[0]} -attr @simnet 32 -attr @name {ADDR[0]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {ADDR[0]}
load net {/MiniCoreX_tb/OUTPUT[7]} -attr @simnet 52 -attr @name {OUTPUT[7]} -attr @attrvalue 1'h0 -attr @attr 1'h0 -pin /MiniCoreX_tb/dut {OUTPUT[7]}
load net {/MiniCoreX_tb/SHIFT_AMT[0]} -attr @simnet 41 -attr @name {SHIFT_AMT[0]} -attr @attrvalue 0 -attr @attr 0 -pin /MiniCoreX_tb/dut {SHIFT_AMT[0]}
load net {/MiniCoreX_tb/dut/OUTPUT[4]} -attr @simnet 49 -attr @name {OUTPUT[4]} -attr @attrvalue 0 -attr @attr 0 -hierPin /MiniCoreX_tb/dut {OUTPUT[4]}
load net {/MiniCoreX_tb/INPUT_2[2]} -attr @simnet 14 -attr @name {INPUT_2[2]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {INPUT_2[2]}
load net /MiniCoreX_tb/CLK -attr @simnet 1 -attr @name CLK -attr @attrvalue 1'h0 -attr @attr 1'h1->1'h0 -pin /MiniCoreX_tb/dut CLK
load net {/MiniCoreX_tb/dut/INPUT_2[4]} -attr @simnet 16 -attr @name {INPUT_2[4]} -attr @attrvalue 1'h0 -attr @attr 1'h0 -hierPin /MiniCoreX_tb/dut {INPUT_2[4]}
load net {/MiniCoreX_tb/INPUT_1[3]} -attr @simnet 7 -attr @name {INPUT_1[3]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {INPUT_1[3]}
load net {/MiniCoreX_tb/ALU_SEL[4]} -attr @simnet 24 -attr @name {ALU_SEL[4]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {ALU_SEL[4]}
load net {/MiniCoreX_tb/ADDR[6]} -attr @simnet 38 -attr @name {ADDR[6]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {ADDR[6]}
load net {/MiniCoreX_tb/dut/INPUT_1[5]} -attr @simnet 9 -attr @name {INPUT_1[5]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {INPUT_1[5]}
load net {/MiniCoreX_tb/dut/SHIFT_AMT[0]} -attr @simnet 41 -attr @name {SHIFT_AMT[0]} -attr @attrvalue 1'h0 -attr @attr 1'h0 -hierPin /MiniCoreX_tb/dut {SHIFT_AMT[0]}
load net {/MiniCoreX_tb/OUTPUT[11]} -attr @simnet 56 -attr @name {OUTPUT[11]} -attr @attrvalue 1'h0 -attr @attr 1'h0 -pin /MiniCoreX_tb/dut {OUTPUT[11]}
load net {/MiniCoreX_tb/dut/OUTPUT[13]} -attr @simnet 58 -attr @name {OUTPUT[13]} -attr @attrvalue 0 -attr @attr 0 -hierPin /MiniCoreX_tb/dut {OUTPUT[13]}
load net {/MiniCoreX_tb/dut/ADDR[1]} -attr @simnet 33 -attr @name {ADDR[1]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {ADDR[1]}
load net {/MiniCoreX_tb/OUTPUT[8]} -attr @simnet 53 -attr @name {OUTPUT[8]} -attr @attrvalue 1'h0 -attr @attr 1'h0 -pin /MiniCoreX_tb/dut {OUTPUT[8]}
load net {/MiniCoreX_tb/SHIFT_AMT[1]} -attr @simnet 42 -attr @name {SHIFT_AMT[1]} -attr @attrvalue 0 -attr @attr 0 -pin /MiniCoreX_tb/dut {SHIFT_AMT[1]}
load net /MiniCoreX_tb/dut/LOAD -attr @simnet 40 -attr @name LOAD -attr @attrvalue 1'h0 -attr @attr 1'h0 -hierPin /MiniCoreX_tb/dut LOAD
load net {/MiniCoreX_tb/dut/OUTPUT[5]} -attr @simnet 50 -attr @name {OUTPUT[5]} -attr @attrvalue 0 -attr @attr 0 -hierPin /MiniCoreX_tb/dut {OUTPUT[5]}
load net {/MiniCoreX_tb/dut/ALU_SEL[0]} -attr @simnet 20 -attr @name {ALU_SEL[0]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {ALU_SEL[0]}
load net {/MiniCoreX_tb/INPUT_2[3]} -attr @simnet 15 -attr @name {INPUT_2[3]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {INPUT_2[3]}
load net {/MiniCoreX_tb/dut/INPUT_2[5]} -attr @simnet 17 -attr @name {INPUT_2[5]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {INPUT_2[5]}
load net {/MiniCoreX_tb/INPUT_1[4]} -attr @simnet 8 -attr @name {INPUT_1[4]} -attr @attrvalue 0 -attr @attr 0 -pin /MiniCoreX_tb/dut {INPUT_1[4]}
load net {/MiniCoreX_tb/ADDR[7]} -attr @simnet 39 -attr @name {ADDR[7]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {ADDR[7]}
load net {/MiniCoreX_tb/dut/INPUT_1[6]} -attr @simnet 10 -attr @name {INPUT_1[6]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {INPUT_1[6]}
load net {/MiniCoreX_tb/dut/SHIFT_AMT[1]} -attr @simnet 42 -attr @name {SHIFT_AMT[1]} -attr @attrvalue 1'h0 -attr @attr 1'h0 -hierPin /MiniCoreX_tb/dut {SHIFT_AMT[1]}
load net {/MiniCoreX_tb/dut/SHIFT_SEL[0]} -attr @simnet 25 -attr @name {SHIFT_SEL[0]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {SHIFT_SEL[0]}
load net {/MiniCoreX_tb/OUTPUT[12]} -attr @simnet 57 -attr @name {OUTPUT[12]} -attr @attrvalue 1'h0 -attr @attr 1'h0 -pin /MiniCoreX_tb/dut {OUTPUT[12]}
load net /MiniCoreX_tb/LOAD -attr @simnet 40 -attr @name LOAD -attr @attrvalue 1'h0 -attr @attr 1'h0 -pin /MiniCoreX_tb/dut LOAD
load net {/MiniCoreX_tb/dut/OUTPUT[14]} -attr @simnet 59 -attr @name {OUTPUT[14]} -attr @attrvalue 0 -attr @attr 0 -hierPin /MiniCoreX_tb/dut {OUTPUT[14]}
load net {/MiniCoreX_tb/dut/ADDR[2]} -attr @simnet 34 -attr @name {ADDR[2]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {ADDR[2]}
load net {/MiniCoreX_tb/OUTPUT[9]} -attr @simnet 54 -attr @name {OUTPUT[9]} -attr @attrvalue 1'h0 -attr @attr 1'h0 -pin /MiniCoreX_tb/dut {OUTPUT[9]}
load net {/MiniCoreX_tb/SHIFT_AMT[2]} -attr @simnet 43 -attr @name {SHIFT_AMT[2]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {SHIFT_AMT[2]}
load net {/MiniCoreX_tb/dut/OUTPUT[6]} -attr @simnet 51 -attr @name {OUTPUT[6]} -attr @attrvalue 0 -attr @attr 0 -hierPin /MiniCoreX_tb/dut {OUTPUT[6]}
load net {/MiniCoreX_tb/dut/ALU_SEL[1]} -attr @simnet 21 -attr @name {ALU_SEL[1]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {ALU_SEL[1]}
load net {/MiniCoreX_tb/INPUT_2[4]} -attr @simnet 16 -attr @name {INPUT_2[4]} -attr @attrvalue 0 -attr @attr 0 -pin /MiniCoreX_tb/dut {INPUT_2[4]}
load net /MiniCoreX_tb/MEM_SEL -attr @simnet 44 -attr @name MEM_SEL -attr @attrvalue 1'h0 -attr @attr 1'h0 -pin /MiniCoreX_tb/dut MEM_SEL
load net {/MiniCoreX_tb/dut/INPUT_2[6]} -attr @simnet 18 -attr @name {INPUT_2[6]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {INPUT_2[6]}
load net {/MiniCoreX_tb/INPUT_1[5]} -attr @simnet 9 -attr @name {INPUT_1[5]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {INPUT_1[5]}
load net {/MiniCoreX_tb/dut/INPUT_1[7]} -attr @simnet 11 -attr @name {INPUT_1[7]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {INPUT_1[7]}
load net {/MiniCoreX_tb/dut/SHIFT_AMT[2]} -attr @simnet 43 -attr @name {SHIFT_AMT[2]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {SHIFT_AMT[2]}
load net {/MiniCoreX_tb/dut/SHIFT_SEL[1]} -attr @simnet 26 -attr @name {SHIFT_SEL[1]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {SHIFT_SEL[1]}
load net {/MiniCoreX_tb/OUTPUT[13]} -attr @simnet 58 -attr @name {OUTPUT[13]} -attr @attrvalue 1'h0 -attr @attr 1'h0 -pin /MiniCoreX_tb/dut {OUTPUT[13]}
load net {/MiniCoreX_tb/OUTPUT[0]} -attr @simnet 45 -attr @name {OUTPUT[0]} -attr @attrvalue 1'h0 -attr @attr 1'h0 -pin /MiniCoreX_tb/dut {OUTPUT[0]}
load net {/MiniCoreX_tb/dut/OUTPUT[15]} -attr @simnet 60 -attr @name {OUTPUT[15]} -attr @attrvalue 0 -attr @attr 0 -hierPin /MiniCoreX_tb/dut {OUTPUT[15]}
load net {/MiniCoreX_tb/dut/ADDR[3]} -attr @simnet 35 -attr @name {ADDR[3]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {ADDR[3]}
load net {/MiniCoreX_tb/USR_SEL[0]} -attr @simnet 28 -attr @name {USR_SEL[0]} -attr @attrvalue 0 -attr @attr 0 -pin /MiniCoreX_tb/dut {USR_SEL[0]}
load net {/MiniCoreX_tb/dut/OUTPUT[7]} -attr @simnet 52 -attr @name {OUTPUT[7]} -attr @attrvalue 0 -attr @attr 0 -hierPin /MiniCoreX_tb/dut {OUTPUT[7]}
load net {/MiniCoreX_tb/dut/ALU_SEL[2]} -attr @simnet 22 -attr @name {ALU_SEL[2]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {ALU_SEL[2]}
load net {/MiniCoreX_tb/INPUT_2[5]} -attr @simnet 17 -attr @name {INPUT_2[5]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {INPUT_2[5]}
load net {/MiniCoreX_tb/dut/INPUT_2[7]} -attr @simnet 19 -attr @name {INPUT_2[7]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {INPUT_2[7]}
load net {/MiniCoreX_tb/INPUT_1[6]} -attr @simnet 10 -attr @name {INPUT_1[6]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {INPUT_1[6]}
load net {/MiniCoreX_tb/dut/SHIFT_SEL[2]} -attr @simnet 27 -attr @name {SHIFT_SEL[2]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {SHIFT_SEL[2]}
load net {/MiniCoreX_tb/OUTPUT[14]} -attr @simnet 59 -attr @name {OUTPUT[14]} -attr @attrvalue 1'h0 -attr @attr 1'h0 -pin /MiniCoreX_tb/dut {OUTPUT[14]}
load net {/MiniCoreX_tb/OUTPUT[1]} -attr @simnet 46 -attr @name {OUTPUT[1]} -attr @attrvalue 1'h0 -attr @attr 1'h0 -pin /MiniCoreX_tb/dut {OUTPUT[1]}
load net {/MiniCoreX_tb/dut/ADDR[4]} -attr @simnet 36 -attr @name {ADDR[4]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {ADDR[4]}
load net {/MiniCoreX_tb/dut/OP_SEL[0]} -attr @simnet 30 -attr @name {OP_SEL[0]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {OP_SEL[0]}
load net {/MiniCoreX_tb/USR_SEL[1]} -attr @simnet 29 -attr @name {USR_SEL[1]} -attr @attrvalue 0 -attr @attr 0 -pin /MiniCoreX_tb/dut {USR_SEL[1]}
load net {/MiniCoreX_tb/dut/OUTPUT[8]} -attr @simnet 53 -attr @name {OUTPUT[8]} -attr @attrvalue 0 -attr @attr 0 -hierPin /MiniCoreX_tb/dut {OUTPUT[8]}
load net {/MiniCoreX_tb/dut/ALU_SEL[3]} -attr @simnet 23 -attr @name {ALU_SEL[3]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {ALU_SEL[3]}
load net {/MiniCoreX_tb/INPUT_2[6]} -attr @simnet 18 -attr @name {INPUT_2[6]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {INPUT_2[6]}
load net {/MiniCoreX_tb/ADDR[0]} -attr @simnet 32 -attr @name {ADDR[0]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {ADDR[0]}
load net {/MiniCoreX_tb/INPUT_1[7]} -attr @simnet 11 -attr @name {INPUT_1[7]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {INPUT_1[7]}
load net {/MiniCoreX_tb/OUTPUT[15]} -attr @simnet 60 -attr @name {OUTPUT[15]} -attr @attrvalue 1'h0 -attr @attr 1'h0 -pin /MiniCoreX_tb/dut {OUTPUT[15]}
load net {/MiniCoreX_tb/OUTPUT[2]} -attr @simnet 47 -attr @name {OUTPUT[2]} -attr @attrvalue 1'h0 -attr @attr 1'h0 -pin /MiniCoreX_tb/dut {OUTPUT[2]}
load net /MiniCoreX_tb/INPUT_SEL -attr @simnet 3 -attr @name INPUT_SEL -attr @attrvalue 1'h1 -attr @attr 1'h1 -pin /MiniCoreX_tb/dut INPUT_SEL
load net {/MiniCoreX_tb/dut/ADDR[5]} -attr @simnet 37 -attr @name {ADDR[5]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {ADDR[5]}
load net {/MiniCoreX_tb/dut/OP_SEL[1]} -attr @simnet 31 -attr @name {OP_SEL[1]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {OP_SEL[1]}
load net {/MiniCoreX_tb/dut/OUTPUT[9]} -attr @simnet 54 -attr @name {OUTPUT[9]} -attr @attrvalue 0 -attr @attr 0 -hierPin /MiniCoreX_tb/dut {OUTPUT[9]}
load net {/MiniCoreX_tb/dut/ALU_SEL[4]} -attr @simnet 24 -attr @name {ALU_SEL[4]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {ALU_SEL[4]}
load net {/MiniCoreX_tb/INPUT_2[7]} -attr @simnet 19 -attr @name {INPUT_2[7]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {INPUT_2[7]}
load net {/MiniCoreX_tb/ADDR[1]} -attr @simnet 33 -attr @name {ADDR[1]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {ADDR[1]}
load net {/MiniCoreX_tb/dut/INPUT_1[0]} -attr @simnet 4 -attr @name {INPUT_1[0]} -attr @attrvalue 1'h0 -attr @attr 1'h0 -hierPin /MiniCoreX_tb/dut {INPUT_1[0]}
load net {/MiniCoreX_tb/OUTPUT[3]} -attr @simnet 48 -attr @name {OUTPUT[3]} -attr @attrvalue 1'h0 -attr @attr 1'h0 -pin /MiniCoreX_tb/dut {OUTPUT[3]}
load net {/MiniCoreX_tb/dut/ADDR[6]} -attr @simnet 38 -attr @name {ADDR[6]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {ADDR[6]}
load net {/MiniCoreX_tb/dut/OUTPUT[0]} -attr @simnet 45 -attr @name {OUTPUT[0]} -attr @attrvalue 0 -attr @attr 0 -hierPin /MiniCoreX_tb/dut {OUTPUT[0]}
load net {/MiniCoreX_tb/dut/INPUT_2[0]} -attr @simnet 12 -attr @name {INPUT_2[0]} -attr @attrvalue 1'h0 -attr @attr 1'h0 -hierPin /MiniCoreX_tb/dut {INPUT_2[0]}
load net {/MiniCoreX_tb/ALU_SEL[0]} -attr @simnet 20 -attr @name {ALU_SEL[0]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {ALU_SEL[0]}
load net {/MiniCoreX_tb/ADDR[2]} -attr @simnet 34 -attr @name {ADDR[2]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {ADDR[2]}
load net {/MiniCoreX_tb/dut/INPUT_1[1]} -attr @simnet 5 -attr @name {INPUT_1[1]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {INPUT_1[1]}
load net /MiniCoreX_tb/dut/CLK -attr @simnet 1 -attr @name CLK -attr @attrvalue 1'h0 -attr @attr 1'h0 -hierPin /MiniCoreX_tb/dut CLK
load net {/MiniCoreX_tb/OUTPUT[4]} -attr @simnet 49 -attr @name {OUTPUT[4]} -attr @attrvalue 1'h0 -attr @attr 1'h0 -pin /MiniCoreX_tb/dut {OUTPUT[4]}
load net {/MiniCoreX_tb/dut/ADDR[7]} -attr @simnet 39 -attr @name {ADDR[7]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {ADDR[7]}
load net {/MiniCoreX_tb/dut/OUTPUT[1]} -attr @simnet 46 -attr @name {OUTPUT[1]} -attr @attrvalue 0 -attr @attr 0 -hierPin /MiniCoreX_tb/dut {OUTPUT[1]}
load net {/MiniCoreX_tb/dut/INPUT_2[1]} -attr @simnet 13 -attr @name {INPUT_2[1]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {INPUT_2[1]}
load net {/MiniCoreX_tb/INPUT_1[0]} -attr @simnet 4 -attr @name {INPUT_1[0]} -attr @attrvalue 0 -attr @attr 0 -pin /MiniCoreX_tb/dut {INPUT_1[0]}
load net {/MiniCoreX_tb/ALU_SEL[1]} -attr @simnet 21 -attr @name {ALU_SEL[1]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {ALU_SEL[1]}
load net {/MiniCoreX_tb/ADDR[3]} -attr @simnet 35 -attr @name {ADDR[3]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {ADDR[3]}
load net {/MiniCoreX_tb/dut/INPUT_1[2]} -attr @simnet 6 -attr @name {INPUT_1[2]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {INPUT_1[2]}
load net {/MiniCoreX_tb/SHIFT_SEL[0]} -attr @simnet 25 -attr @name {SHIFT_SEL[0]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {SHIFT_SEL[0]}
load net {/MiniCoreX_tb/dut/OUTPUT[10]} -attr @simnet 55 -attr @name {OUTPUT[10]} -attr @attrvalue 0 -attr @attr 0 -hierPin /MiniCoreX_tb/dut {OUTPUT[10]}
load net {/MiniCoreX_tb/OP_SEL[0]} -attr @simnet 30 -attr @name {OP_SEL[0]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {OP_SEL[0]}
load net /MiniCoreX_tb/dut/MEM_SEL -attr @simnet 44 -attr @name MEM_SEL -attr @attrvalue 1'h0 -attr @attr 1'h0 -hierPin /MiniCoreX_tb/dut MEM_SEL
load net {/MiniCoreX_tb/OUTPUT[5]} -attr @simnet 50 -attr @name {OUTPUT[5]} -attr @attrvalue 1'h0 -attr @attr 1'h0 -pin /MiniCoreX_tb/dut {OUTPUT[5]}
load net {/MiniCoreX_tb/dut/USR_SEL[0]} -attr @simnet 28 -attr @name {USR_SEL[0]} -attr @attrvalue 1'h0 -attr @attr 1'h0 -hierPin /MiniCoreX_tb/dut {USR_SEL[0]}
load net {/MiniCoreX_tb/dut/OUTPUT[2]} -attr @simnet 47 -attr @name {OUTPUT[2]} -attr @attrvalue 0 -attr @attr 0 -hierPin /MiniCoreX_tb/dut {OUTPUT[2]}
load net /MiniCoreX_tb/dut/INPUT_SEL -attr @simnet 3 -attr @name INPUT_SEL -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut INPUT_SEL
load net /MiniCoreX_tb/dut/RESET -attr @simnet 2 -attr @name RESET -attr @attrvalue 1'h0 -attr @attr 1'h0 -hierPin /MiniCoreX_tb/dut RESET
load net {/MiniCoreX_tb/INPUT_2[0]} -attr @simnet 12 -attr @name {INPUT_2[0]} -attr @attrvalue 0 -attr @attr 0 -pin /MiniCoreX_tb/dut {INPUT_2[0]}
load net {/MiniCoreX_tb/dut/INPUT_2[2]} -attr @simnet 14 -attr @name {INPUT_2[2]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {INPUT_2[2]}
load net {/MiniCoreX_tb/INPUT_1[1]} -attr @simnet 5 -attr @name {INPUT_1[1]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {INPUT_1[1]}
load net {/MiniCoreX_tb/ALU_SEL[2]} -attr @simnet 22 -attr @name {ALU_SEL[2]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {ALU_SEL[2]}
load net /MiniCoreX_tb/RESET -attr @simnet 2 -attr @name RESET -attr @attrvalue 1'h0 -attr @attr 1'h0 -pin /MiniCoreX_tb/dut RESET
load net {/MiniCoreX_tb/ADDR[4]} -attr @simnet 36 -attr @name {ADDR[4]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {ADDR[4]}
load net {/MiniCoreX_tb/dut/INPUT_1[3]} -attr @simnet 7 -attr @name {INPUT_1[3]} -attr @attrvalue 1'h1 -attr @attr 1'h1 -hierPin /MiniCoreX_tb/dut {INPUT_1[3]}
load net {/MiniCoreX_tb/SHIFT_SEL[1]} -attr @simnet 26 -attr @name {SHIFT_SEL[1]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {SHIFT_SEL[1]}
load net {/MiniCoreX_tb/dut/OUTPUT[11]} -attr @simnet 56 -attr @name {OUTPUT[11]} -attr @attrvalue 0 -attr @attr 0 -hierPin /MiniCoreX_tb/dut {OUTPUT[11]}
load net {/MiniCoreX_tb/OP_SEL[1]} -attr @simnet 31 -attr @name {OP_SEL[1]} -attr @attrvalue 1 -attr @attr 1 -pin /MiniCoreX_tb/dut {OP_SEL[1]}
load net {/MiniCoreX_tb/OUTPUT[6]} -attr @simnet 51 -attr @name {OUTPUT[6]} -attr @attrvalue 1'h0 -attr @attr 1'h0 -pin /MiniCoreX_tb/dut {OUTPUT[6]}
load net {/MiniCoreX_tb/dut/USR_SEL[1]} -attr @simnet 29 -attr @name {USR_SEL[1]} -attr @attrvalue 1'h0 -attr @attr 1'h0 -hierPin /MiniCoreX_tb/dut {USR_SEL[1]}
greymode off
show 1
zoom 1.55163
scrollpos -285 -31

