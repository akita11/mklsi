* SPICE FET model
.lib 'mos_tt.lib'
mfet1 1 2 4 4 pch w=18u l=2u
mfet2 1 3 4 4 pch w=18u l=2u
mfet3 1 6 4 4 pch w=18u l=2u
mfet4 1 0 4 4 pch w=18u l=2u
mfet5 5 2 7 5 nch w=6u l=2u
mfet6 7 3 8 5 nch w=6u l=2u
mfet7 8 6 9 5 nch w=6u l=2u
mfet8 1 0 9 5 nch w=6u l=2u
c1 1 5 0.0415pF
** Net name table **
*$ D	0
*$ Y	1
*$ A	2
*$ B	3
*$ VDD	4
*$ GND	5
*$ C	6
vs 4 5 5v
va 0 5 pulse 0v 5v 10ns 0.1ns 0.1ns 10ns 20ns
vb 2 5 pulse 0v 5v 20ns 0.1ns 0.1ns 20ns 40ns
vc 3 5 pulse 0v 5v 40ns 0.1ns 0.1ns 40ns 80ns
vd 6 5 pulse 0v 5v 80ns 0.1ns 0.1ns 80ns 160ns
.tran 1ns 160ns
.end
