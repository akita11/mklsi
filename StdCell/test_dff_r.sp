* SPICE FET model
.lib 'mos_tt.lib'
mfet1 8 6 15 5 pch w=18u l=2u
mfet2 5 8 18 5 pch w=18u l=2u
mfet3 5 8 17 5 pch w=18u l=2u
mfet4 0 9 18 5 pch w=18u l=2u
mfet5 5 4 16 5 pch w=18u l=2u
mfet6 5 1 14 5 pch w=18u l=2u
mfet7 5 3 9 5 pch w=18u l=2u
mfet8 0 3 14 5 pch w=18u l=2u
mfet9 5 13 15 5 pch w=18u l=2u
mfet10 13 9 17 5 pch w=18u l=2u
mfet11 13 3 16 5 pch w=18u l=2u
mfet12 1 0 5 5 pch w=18u l=2u
mfet13 12 9 13 2 nch w=6u l=2u
mfet14 10 3 13 2 nch w=6u l=2u
mfet15 0 9 11 2 nch w=6u l=2u
mfet16 2 13 8 2 nch w=6u l=2u
mfet17 1 0 2 2 nch w=6u l=2u
mfet18 2 3 9 2 nch w=6u l=2u
mfet19 2 1 11 2 nch w=6u l=2u
mfet20 2 4 12 2 nch w=6u l=2u
mfet21 2 8 7 2 nch w=6u l=2u
mfet22 2 8 10 2 nch w=6u l=2u
mfet23 0 3 7 2 nch w=6u l=2u
mfet24 2 6 8 2 nch w=6u l=2u
c1 2 3 0.0036pF
c2 2 9 0.0237pF
c3 2 13 0.0273pF
c4 2 4 0.0119pF
c5 0 2 0.0287pF
c6 1 2 0.0251pF
c7 2 8 0.0345pF
** Net name table **
*$ QB	0
*$ Q	1
*$ GND	2
*$ CK	3
*$ D	4
*$ VDD	5
*$ R	6
vs 5 2 dc 5v
vck 3 2 pulse 0v 5v 10ns 0.1ns 0.1ns 10ns 20ns
vd 4 2 pwl 0n 0 25n 0 25.1n 5 75n 5 75.1n 0 95ns 0 95.1ns 5 115ns 5 115.1ns 0
vr 6 2 pwl 0n 0 65ns 0 65.1ns 5 75ns 5 75.1ns 0
.ic v(1)=5
.tran 1ns 200ns
.end

