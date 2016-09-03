int cr = 0, dr = 0;
float cx = 0, cy = 0, a = 0;
color[] col = new color[16];

void setup()
{
  size(500, 500);
  makecolors();
  loop();
}
void draw()
{ 
  background(0);
  for(int n = 0; n < 15; n++)
  {
    fill(col[n]);
    d(n * (6.2/15));
  }
  a += 0.05;
  if(cr < 2) dr = 2;
  if(cr > 400) { makecolors(); cr = 0; }
  cr += dr;
}
void d(float da)
{
  cx = cr*cos(a + da) + 250;
  cy = cr*sin(a + da) + 250;
  ellipse(cx, cy, 25, 25);
}
void makecolors()
{
 for(int n = 0; n < 16; n++)
 {
   col[n] = color(0, random(75, 255), random(200, 255));
 } 
}
