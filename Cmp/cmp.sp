* SPICE FET model
.lib 'mos_tt.lib'
mfet1 3 7 6 3 pch w=6u l=2u
mfet2 3 5 5 3 pch w=6u l=2u
mfet3 3 7 7 3 pch w=6u l=2u
mfet4 3 6 4 3 pch w=18u l=2u
mfet5 2 5 8 2 nch w=6u l=2u
mfet6 6 0 8 2 nch w=6u l=2u
mfet7 2 5 5 2 nch w=6u l=2u
mfet8 7 1 8 2 nch w=6u l=2u
mfet9 2 5 4 2 nch w=6u l=2u
c1 2 4 0.0102pF
c2 1 2 0.0018pF
c3 2 6 0.0096pF
c4 0 2 0.0018pF
c5 2 7 0.009pF
c6 2 5 0.0198pF
** Net name table **
*$ Vp	0
*$ Vm	1
*$ GND	2
*$ VDD	3
*$ Vo	4
vs 3 2 5v
vp 0 2 dc 2.5v
vm 1 2 pwl 0us 0 10us 5
*vo1 4
.tran 1ns 10us
.end
