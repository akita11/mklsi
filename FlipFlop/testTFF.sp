* SPICE FET model
.lib 'mos_tt.lib'
mfet1 0 1 7 7 pch w=6u l=2u
mfet2 7 0 12 7 pch w=6u l=2u
mfet3 7 0 14 7 pch w=6u l=2u
mfet4 3 4 12 7 pch w=6u l=2u
mfet5 1 4 14 7 pch w=6u l=2u
mfet6 7 2 15 7 pch w=6u l=2u
mfet7 1 5 13 7 pch w=6u l=2u
mfet8 3 5 15 7 pch w=6u l=2u
mfet9 7 3 13 7 pch w=6u l=2u
mfet10 2 3 7 7 pch w=6u l=2u
mfet11 4 5 7 7 pch w=6u l=2u
mfet12 6 3 10 6 nch w=6u l=2u
mfet13 4 5 6 6 nch w=6u l=2u
mfet14 1 4 10 6 nch w=6u l=2u
mfet15 2 3 6 6 nch w=6u l=2u
mfet16 1 5 9 6 nch w=6u l=2u
mfet17 3 4 11 6 nch w=6u l=2u
mfet18 6 0 9 6 nch w=6u l=2u
mfet19 6 2 11 6 nch w=6u l=2u
mfet20 0 1 6 6 nch w=6u l=2u
mfet21 3 5 8 6 nch w=6u l=2u
mfet22 6 0 8 6 nch w=6u l=2u
c1 4 6 0.0244pF
c2 5 6 0.01pF
c3 1 6 0.0258pF
c4 3 6 0.0406pF
c5 0 6 0.0258pF
c6 2 6 0.0236pF
** Net name table **
*$ N2	0
*$ N1	1
*$ Q	2
*$ QB	3
*$ CKB	4
*$ CK	5
*$ GND	6
*$ VDD	7
vs 7 6 dc 5v
vck 5 6 pulse 0v 5v 10ns 0.1ns 0.1ns 10ns 20ns 10
.ic v(0) 0v
.tran 1ns 100ns
.end

