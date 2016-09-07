int cr = 0, dr = 0;
float cx = 0, cy = 0, cz = 0, sx = 0, sy = 0, a = 0, aa = 0.01;
color[] col = new color[16];
int ZOOM = 200;

void setup()
{
  size(800, 800);
  colorMode(HSB, 255);
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
  a += aa;
  if(cr < 2) dr = 2;
  if(cr > 400)
  {
    makecolors();
    dr = -dr;
    cr = 400;
    aa += 0.01;
    if(aa > 0.1) aa = 0;
  }
  cr += dr;
}
void d(float da)
{
  // 3d coords
  cx = cr*cos(a + da) + 400;
  cy = cr*sin(a - da) + 400;
  cz = cr*sin(a + da) + 400;
  // Project onto 2d surface
  sx = proj3d_x(cx, cy, cz);
  sy = proj3d_y(cx, cy, cz);
  // Draw
  ellipse(sx, sy, 25, 25);
}
float proj3d_x(float x, float y, float z)
{
    return ZOOM * x/z;
}
float proj3d_y(float x, float y, float z)
{
    return ZOOM * y/z;
}
void makecolors()
{
 for(int n = 0; n < 16; n++)
 {
   col[n] = color(255*n/16, 255, 255);
 } 
}