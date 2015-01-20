* SPICE FET model
.lib 'mos_tt.lib'
mfet1 2 3 1 1 pch w=10u l=2u
mfet2 2 3 0 0 nch w=6u l=2u
** Net name table **
vs 1 0 5v
vi 3 0 dc 0v
.dc vi 0 5 0.01
.end
