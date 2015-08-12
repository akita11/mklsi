# usage: cp svg_header.svg ???.svg ; gawk -f gex2svg.awk gex.def ???.gex >> ???.svg
BEGIN{
    print "<g";
    id = 1;
    mag = 1;
}
{
    if (substr($1, 1, 2) == "$M"){
	layer = substr($1, 3, 2) * 1;
	color[layer] = $2;
    }
    if ($1 == "l"){
	c = color[$2];
	cb = c / 65536;
	cg = (c / 256) % 256;
	cr = c % 256;
	cur_color = cg;
#	printf("%06x %02x %02x %02x %06x\n", c, cb, cg, cr, cur_color);
    }
    if ($1 == "b"){
	x = $2; y = $3; width = $4; height = $5;
	printf("<rect\nstyle=\"fill:none;stroke:#%02x%02x%02x;stroke-width:1.34589994;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0\"\n", cr, cg, cb);
	printf("id=\"rect%d\"\nwidth=\"%f\"\nheight=\"%f\"\nx=\"%f\"\ny=\"%f\"/>\n", id, width, height, x, 100-y-height);
	id++;
# + y+height ---> -y
# |          
# + y        ---> -y-height

    }
}
END{
    print "</g>";
    print "</svg>";
}
