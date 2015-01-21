* SPICE FET model
.lib 'mos_tt.lib'
mfet1 3 5 4 1 pch w=18u l=2u
mfet2 1 5 6 1 pch w=18u l=2u
mfet3 2 6 3 1 pch w=18u l=2u
mfet4 3 6 4 0 nch w=6u l=2u
mfet5 2 5 3 0 nch w=6u l=2u
mfet6 0 5 6 0 nch w=6u l=2u
c1 0 2 0.0209pF
c2 0 3 0.0209pF
c3 0 4 0.0209pF
c4 0 6 0.0381pF
** Net name table **
*$ GND	0
*$ VDD	1
*$ A	2
*$ Y	3
*$ B	4
*$ S	5
vs 1 0 5v
va 2 0 pulse 0v 5v 10ns 0.1ns 0.1ns 10ns 20ns
vb 4 0 pulse 0v 5v 20ns 0.1ns 0.1ns 20ns 40ns
vsl 5 0 pulse 0v 5v 40ns 0.1ns 0.1ns 40ns 80ns
.tran 1ns 160ns
.end
