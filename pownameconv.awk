# awk script to convert text of "VDD/GND" to "Vdd/Gnd" for CeX extraction
# 2015/3/16:akita
{
    gsub("VDD","Vdd",$0);
    gsub("GND","Gnd",$0);
    print $0;
}
