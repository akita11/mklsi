* SPICE FET model
* ref: http://www.geocities.jp/a_story_of_circuits/html/advanced_exp/1_11_comp_basic.html
.lib 'mos_tt.lib'
*mfet1 1 4 5 1 pch w=18u l=2u
*mfet2 1 4 4 1 pch w=18u l=2u
mfet1 1 4 5 1 pch w=6u l=2u
mfet2 1 4 4 1 pch w=6u l=2u
mfet4 5 2 6 0 nch w=6u l=2u
mfet5 4 3 6 0 nch w=6u l=2u
*mfet6 6 7 0 0 nch w=18u l=2u
mfet6 6 7 0 0 nch w=6u l=2u
mfet3 1 5 8 1 pch w=18u l=2u
mfet8 8 7 0 0 nch w=6u l=2u
mfet9 1 7 7 1 pch w=6u l=2u
mfet7 7 7 0 0 nch w=6u l=2u
** Net name table **
vs 1 0 5v
vp 2 0 dc 2.5v
vm 3 0 pwl 0us 0 10us 5
*vo1 8
.tran 1ns 10us
.end
