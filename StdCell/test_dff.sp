* SPICE FET model
.lib 'mos_tt.lib'
mfet1 5 11 16 5 pch w=18u l=2u
mfet2 5 11 15 5 pch w=18u l=2u
mfet3 1 10 16 5 pch w=18u l=2u
mfet4 5 4 14 5 pch w=18u l=2u
mfet5 5 2 13 5 pch w=18u l=2u
mfet6 5 3 10 5 pch w=18u l=2u
mfet7 1 3 13 5 pch w=18u l=2u
mfet8 5 6 11 5 pch w=18u l=2u
mfet9 6 10 15 5 pch w=18u l=2u
mfet10 6 3 14 5 pch w=18u l=2u
mfet11 2 1 5 5 pch w=18u l=2u
mfet12 6 10 7 0 nch w=6u l=2u
mfet13 1 10 8 0 nch w=6u l=2u
mfet14 6 3 9 0 nch w=6u l=2u
mfet15 0 1 2 0 nch w=6u l=2u
mfet16 0 6 11 0 nch w=6u l=2u
mfet17 0 2 8 0 nch w=6u l=2u
mfet18 0 3 10 0 nch w=6u l=2u
mfet19 0 11 12 0 nch w=6u l=2u
mfet20 0 4 7 0 nch w=6u l=2u
mfet21 1 3 12 0 nch w=6u l=2u
mfet22 0 11 9 0 nch w=6u l=2u
c1 0 3 0.0036pF
c2 0 10 0.0237pF
c3 0 6 0.0273pF
c4 0 4 0.0119pF
c5 0 11 0.0273pF
c6 0 1 0.0287pF
c7 0 2 0.0251pF
** Net name table **
*$ GND	0
*$ QB	1
*$ Q	2
*$ CK	3
*$ D	4
*$ VDD	5
vs 5 0 dc 5v
vck 3 0 pwl 0n 0 10n 0 10.1n 5 20n 5 20.1n 0 30n 0 30.1n 5 40ns 5 
vd 4 0 pwl 0n 0 25n 0 25.1n 5 40n 5
.tran 1ns 40ns
.end

