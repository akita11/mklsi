// ToDo: fill orthological corner

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define LAYER "Metal2"
#define STEP 6 // 6um

int Judge(int value, int th1, int th2)
{
  if (th2 == 0){
    if (value == th1) return(1); else return(0);
  }
  else{
    if (value >= th1 && value <= th2) return(1); else return(0);
  }
}

#define BLACK 0

int main(int ac, char **av)
{
  unsigned char **p;
  int X, Y;
  int x, y;
  char buf[256];
  FILE *fp;
  int xs, ys, xe, ye;
  int th1, th2;
  double mag = 25.4/90.0;
  int rid = 0;

  if (ac == 1){ fprintf(stderr, "usage: %s *.pgm\n", av[0]); exit(1);}
  fp = fopen(av[1], "rb");
  if (ac == 2){ th1 = BLACK; th2 = 0;}
  else if (ac == 3){ th1 = atoi(av[2]); th2 = 0;}
  else {th1 = atoi(av[2]); th2 = atoi(av[3]);}

  fgets(buf, 255, fp);
  fgets(buf, 255, fp);
  while(buf[0] == '#')
    fgets(buf, 255, fp);
  X = atoi(strtok(buf, " \t\n"));
  Y = atoi(strtok(NULL, " \t\n"));
  fgets(buf, 255, fp);
  p = (unsigned char **)malloc(sizeof(unsigned char *) * X);
  for (x = 0; x < X; x++)
    p[x] = (unsigned char *)malloc(sizeof(unsigned char) * Y);

  for (y = 0; y < Y; y++)
    for (x = 0; x < X; x++)
      p[x][y] = (unsigned char)fgetc(fp);

  for (y = 0; y < Y; y++){
    xs = -1;
    for (x = 0; x < X; x++){
      if (Judge(p[x][y], th1, th2) == 1 && xs == -1)	xs = x;
      if ((Judge(p[x][y], th1, th2) != 1 || x == X-1) && xs != -1){
	xe = x - 1;
	printf("<rect\n   style=\"opacity:0.5;fill:#000080;stroke:none\"\n");
	printf("   id=\"rect%d\"\n   width=\"%f\"\n   height=\"%f\"\n   x=\"%f\"\n   y=\"%f\"\n />\n", rid++, (double)((xe-xs+1)*STEP)/mag, (double)STEP/mag, (double)(xs*STEP)/mag, (double)(y*STEP)/mag);
	xs = -1;
      }
    }
  }
  fclose(fp);
  printf("</g>\n</svg>\n");
  return(0);
}

