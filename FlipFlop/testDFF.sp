* SPICE FET model
.lib 'mos_tt.lib'
mfet1 0 1 7 7 pch w=6u l=2u
mfet2 7 0 13 7 pch w=6u l=2u
mfet3 7 0 15 7 pch w=6u l=2u
mfet4 3 4 13 7 pch w=6u l=2u
mfet5 1 4 15 7 pch w=6u l=2u
mfet6 7 2 16 7 pch w=6u l=2u
mfet7 1 5 14 7 pch w=6u l=2u
mfet8 3 5 16 7 pch w=6u l=2u
mfet9 7 8 14 7 pch w=6u l=2u
mfet10 2 3 7 7 pch w=6u l=2u
mfet11 4 5 7 7 pch w=6u l=2u
mfet12 6 8 11 6 nch w=6u l=2u
mfet13 4 5 6 6 nch w=6u l=2u
mfet14 1 4 11 6 nch w=6u l=2u
mfet15 2 3 6 6 nch w=6u l=2u
mfet16 1 5 10 6 nch w=6u l=2u
mfet17 3 4 12 6 nch w=6u l=2u
mfet18 6 0 10 6 nch w=6u l=2u
mfet19 6 2 12 6 nch w=6u l=2u
mfet20 0 1 6 6 nch w=6u l=2u
mfet21 3 5 9 6 nch w=6u l=2u
mfet22 6 0 9 6 nch w=6u l=2u
c1 4 6 0.0244pF
c2 5 6 0.01pF
c3 1 6 0.0258pF
c4 6 8 0.0134pF
c5 0 6 0.0258pF
c6 3 6 0.0272pF
c7 2 6 0.0236pF
** Net name table **
*$ N2	0
*$ N1	1
*$ Q	2
*$ QB	3
*$ CKB	4
*$ CK	5
*$ GND	6
*$ VDD	7
*$ D	8
vs 7 6 dc 5v
vck 5 6 pwl 0n 0 10n 0 10.1n 5 20n 5 20.1n 0 30n 0 30.1n 5 40ns 5 
vd 8 6 pwl 0n 0 25n 0 25.1n 5 40n 5
.tran 1ns 40ns
.end

