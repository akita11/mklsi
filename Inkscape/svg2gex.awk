# 1mm = 3.543307px
# 1px = 0.282222mm

# Layer GDS# #RGB(Fill/Stroke)
# NWL   1    ------/008000
# PWL   2    ------/808000
# ChStp 3                   : 2um inside NWL/PWL
# Act   4    FF00FF/------
# VthN  5                   : NSEL inside PWL Vth-n
# VthP  6                   : PSEL indide NWL Vth-p
# POL   7    FF0000/------
# NSEL  8    ------/00FF00
# PSEL  9    ------/FFFF00
# ACON  10   000000/------
# PCON  11   999999/------
# MET1  12   00FFFF/------
# VIA   13   FFFFFF/000000
# MET2  14   000080/------
# PASS  15   ------/000000 "PAS"
# Frame 16   404040/------ "Frame"
# Mark  21                 "MARKING"
# Text  21   808000/808000

BEGIN{f=0;l=0;FS="[=:; \"(),]+";
#    mg=0.282222;
    mg=25.4/90;
    YM= 3200;
#    mag = 2 / 5;
    mag = 1; # 1mm = 1um
    g = 0;
}
{
    gsub(" ","",$0);
    if ($1 == "<g"){
	if (g == 1) print "warning: nested group" > "/dev/stderr";
	g = 1;
    }
    if ($1=="<rect"){ l=1; t=0; }
    else if (l==1){
	if ($1~/style/){
	    st = "none"; fl = "none";
	    for (i = 2; i < NF; i++){
		if ($i == "fill") fl = tolower($(i+1));
		if ($i == "stroke") st = tolower($(i+1));
	    }
	}
	if ($1 == "width") w=$2;
	if ($1 == "height") h=$2;
	if ($1 == "x") x=$2;
	if ($1 == "y") y=$2;
	if ($1 == "id") id = $2;
	if ($1 == "transform"){
# |x'|   | ma mb mc | |x|
# |y'| = | md me mf |*|y|
# |1 |   |  0  0  1 | |1|
	    if ($2 == "scale"){
		t = 1;
		ma = $3; mb = 0; mc = 0; md = $4; me = 0; mf = 0;
	    }
	    else if ($2 == "matrix"){
		t = 1;
		ma = $3; mb = $4; mc = $5; md = $6; me = $7; mf = $8;
	    }
	    else if ($2 == "translate"){
		t = 2;
		ma = 1; mb = 0; mc = 0; md = 1; me = $3; mf = $4;
	    }
	}
	if ($0 ~ /\/>/){
#	    print id,t,x, y, w, h, ":",ma, mb, mc, md, me, mf;
	    if (t != 0){
		xx = ma * x + mc * y + me;
		yy = mb * x + md * y + mf;
		x = xx; y = yy;
		if (t == 1){
		    xx = ma * w + mc * h + me;
		    yy = mb * w + md * h + mf;
		    w = xx; h = yy;
		}
	    }
#	    w0 = int(w*mg+0.5)*mag;
#	    h0 = int(h*mg+0.5)*mag;
	    x0 = round(x*mg)*mag;
	    y0 = ((YM-round(y*mg))*mag) - 4103;
	    xe = round((x+w)*mg)*mag;
	    ye = ((YM-round((y+h)*mg))*mag) - 4103;
	    if (x0 > xe){ ttt = x0; x0 = xe; xe = ttt;}
	    if (y0 > ye){ ttt = y0; y0 = ye; ye = ttt;}

#  0--x-----------YM
#     <-H->
# YM------x-------0
#         
	    la = 0;
	    if (fl == "none" && st == "#008000") la = 1; # NWL 1
	    else if (fl == "none" && st == "#808000") la = 2; # PWL 2
	    else if (fl == "#ff00ff" && st == "none") la = 4; # Act 4
	    else if (fl == "#ff0000" && st == "none") la = 7; # POL 7
	    else if (fl == "none" && st == "#00ff00") la = 8; # NSEL 8
	    else if (fl == "none" && st == "#ffff00") la = 9; # PSEL 9
	    else if (fl == "#000000" && st == "none") la = 10; # ACON 10
	    else if (fl == "#999999" && st == "none") la = 11; # PCON 11
	    else if (fl == "#00ffff" && st == "none") la = 12; # MET1 12
	    else if (fl == "#ffffff" && st == "#000000") la = 13; # VIA 13
	    else if (fl == "#000080" && st == "none") la = 14; # MET2 14
	    else if (fl == "none" && st == "#000000") la = 15; # Passivation 15
	    else if (fl == "#404040" && st == "none") la = 16; # Frame 16
#	    else if (fl == "#808000" && st == "#808000") la = "TEXT";
	    else{
		print"warning: undefined layer (fill=",fl",stroke=",st,"at(",x0,y0,")" > "/dev/stderr"
	    }
	    if (la != 0){
		print "l",la;
		print "B",x0, y0, xe, ye;
		if (la == 1 || la == 2){
		    print "l",3; # Chan-stop
		    print "B", x0+2, y0+2, xe-2, ye-2;
		}
	    }
	    l = 0;
	    t = 0;
	}
    }
}

END{
}

function round(d){
    if (d > 0) return(int(d + 0.5));
    else return(int(d - 0.5));
}
