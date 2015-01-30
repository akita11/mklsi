* SPICE FET model
.lib 'mos_tt.lib'
mfet1 2 22 22 2 pch w=6u l=2u
mfet2 2 21 9 2 pch w=18u l=2u
mfet3 2 20 21 2 pch w=6u l=2u
mfet4 2 13 5 2 pch w=18u l=2u
mfet5 2 20 20 2 pch w=6u l=2u
mfet6 2 9 13 2 pch w=18u l=2u
mfet7 2 17 6 2 pch w=18u l=2u
mfet8 0 12 2 2 pch w=18u l=2u
mfet9 2 18 18 2 pch w=6u l=2u
mfet10 2 4 24 2 pch w=18u l=2u
mfet11 2 15 17 2 pch w=6u l=2u
mfet12 1 5 24 2 pch w=18u l=2u
mfet13 2 15 15 2 pch w=6u l=2u
mfet14 2 0 23 2 pch w=18u l=2u
mfet15 2 6 12 2 pch w=18u l=2u
mfet16 4 1 23 2 pch w=18u l=2u
mfet17 3 22 22 3 nch w=6u l=2u
mfet18 3 22 19 3 nch w=6u l=2u
mfet19 3 22 9 3 nch w=6u l=2u
mfet20 19 11 21 3 nch w=6u l=2u
mfet21 3 0 4 3 nch w=6u l=2u
mfet22 19 10 20 3 nch w=6u l=2u
mfet23 3 1 4 3 nch w=6u l=2u
mfet24 3 18 6 3 nch w=6u l=2u
mfet25 1 4 3 3 nch w=6u l=2u
mfet26 3 18 18 3 nch w=6u l=2u
mfet27 1 5 3 3 nch w=6u l=2u
mfet28 3 18 16 3 nch w=6u l=2u
mfet29 0 12 3 3 nch w=6u l=2u
mfet30 16 8 17 3 nch w=6u l=2u
mfet31 3 9 13 3 nch w=6u l=2u
mfet32 15 7 16 3 nch w=6u l=2u
mfet33 3 13 5 3 nch w=6u l=2u
mfet34 3 6 12 3 nch w=6u l=2u
mfet35 3 1 14 3 nch w=42u l=2u
c1 3 4 0.036pF
c2 3 14 0.0126pF
c3 1 3 0.0697pF
c4 3 12 0.0305pF
c5 3 13 0.0305pF
c6 0 3 0.0528pF
c7 3 5 0.0536pF
c8 3 11 0.0538pF
c9 3 10 0.0082pF
c10 3 6 0.0584pF
c11 3 20 0.009pF
c12 3 17 0.009pF
c13 3 22 0.0102pF
c14 3 21 0.009pF
c15 3 8 0.0082pF
c16 3 18 0.0102pF
c17 3 15 0.009pF
c18 3 7 0.03pF
c19 3 9 0.0585pF
** Net name table **
*$ VDD	2
*$ GND	3
*$ Q	4
*$ R	6
*$ CONT	7
*$ TH	8
*$ S	9
*$ TRG	10
*$ CONT2	11
*$ DIS	14
*
* internal bias resistors (inserted)
r1 2 7 5k
r2 7 11 5k
r3 11 3 5k
* external components
ra 2 14 1k
rb 14 10 10k
ca 10 3 1u
rs 10 8 1
* supply voltage
vs 2 3 5v
* initial condition (external capacitor discharged)
.ic v(10,3)=0v
.tran 1us 100ms
.end
