v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1090 -2430 1090 -2310 {
lab=in}
N 1130 -2400 1130 -2340 {
lab=out}
N 1130 -2380 1180 -2380 {
lab=out}
N 1130 -2280 1130 -2270 {
lab=GND}
N 1130 -2480 1130 -2460 {
lab=VDD}
C {sky130_fd_pr/nfet3_01v8.sym} 1110 -2310 0 0 {name=M1
L=0.15
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1110 -2430 0 0 {name=M2
L=0.15
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/opin.sym} 1180 -2380 0 0 {name=p1 lab=out}
C {devices/ipin.sym} 1090 -2370 0 0 {name=p2 lab=in}
C {devices/iopin.sym} 1130 -2480 0 0 {name=p3 lab=VDD}
C {devices/iopin.sym} 1130 -2270 0 0 {name=p4 lab=GND}
