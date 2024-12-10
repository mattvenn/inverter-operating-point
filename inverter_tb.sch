v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 760 -570 1560 -170 {flags=graph
y1=-0.022
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out
in"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
autoload=1
rawfile=$netlist_dir/inverter_tb.raw}
N 550 -180 620 -180 {
lab=GND}
N 550 -200 620 -200 {
lab=VDD}
N 330 -360 330 -340 {
lab=in}
C {inverter.sym} 400 -180 0 0 {name=x1}
C {devices/gnd.sym} 620 -180 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 130 -310 0 0 {name=Vdd value=1.8 savecurrent=false}
C {devices/gnd.sym} 130 -280 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 130 -340 0 0 {name=l3 lab=VDD}
C {devices/vdd.sym} 620 -200 0 0 {name=l4 lab=VDD}
C {devices/lab_pin.sym} 550 -160 0 1 {name=p1 lab=out}
C {devices/lab_pin.sym} 250 -200 0 0 {name=p2 lab=in}
C {devices/vsource.sym} 330 -310 0 0 {name=Vin value="pulse(0 1.8 1n 1n 1n 10n 20n)" savecurrent=false}
C {devices/gnd.sym} 330 -280 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 330 -360 0 1 {name=p3 lab=in}
C {sky130_fd_pr/corner.sym} 170 -570 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/simulator_commands_shown.sym} 350 -560 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value=".save all
.save @m.x1.xm1.msky130_fd_pr__nfet_01v8[id]
.save @m.x1.xm1.msky130_fd_pr__nfet_01v8[gm]
.save @m.x1.xm2.msky130_fd_pr__pfet_01v8[id]
.save @m.x1.xm2.msky130_fd_pr__pfet_01v8[gm]
.control
  op 
  write inverter_tb.raw
  set appendwrite
  tran 0.1ns 50ns
  write inverter_tb.raw
.endc"}
C {devices/launcher.sym} 820 -130 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/inverter_tb.raw tran"
}
