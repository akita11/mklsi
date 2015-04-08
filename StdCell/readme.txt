スタンダードセル(2015/1/20:akita)

セル仕様
・高さ=119um
・端子=ML1/ML2

セル一覧
inv1.gex  : インバータ
nand2.gex : 2NAND
nand3.gex : 3NAND
nand4.gex : 4NAND
and2.gex  : 2AND
and3.gex  : 3AND
and4.gex  : 4AND
nor2.gex  : 2NOR
nor3.gex  : 3NOR ※(2015/4/7)or3と逆になっていたので差し替え修正
nor4.gex  : 4NOR
or2.gex   : 2OR
or3.gex   : 3OR ※(2015/4/7)nor3と逆になっていたので差し替え修正
or4.gex   : 4OR
xor2.gex  : 2XOR
xnor2.gex : 2XNOR
dff.gex   : DFF(エッジトリガ)
dff_r.gex : DFF(エッジト・同期リセットつき) (2015/1/21追加)
mux2.gex  : マルチプレクサ(x2:S=1でY=A,S=0でY=B) (2015/1/21追加)
and2_or_inv.gex : AndOrInv("(a and b) nor c")ksmakoto氏作(2015/4/8追加)
or2_and_inv.gex : OrAndInv("(a or b) nand c")ksmakoto氏作(2015/4/8追加)
