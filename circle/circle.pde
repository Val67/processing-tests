int r = 0, dr = 0;
float cx = 0, cy = 0, a = 0;

void setup()
{
  size(500, 500);
  loop();
}
void draw()
{ 
  background(0);
  for(float n = 0; n < 6.2; n += 0.4)
  {
    d(n);
  }
  a += 0.05;
  if(r < 2) dr = 2;
  if(r > 250) dr = -2;
  r += dr;
}
void d(float da)
{
  cx = r*cos(a + da) + 250;
  cy = r*sin(a + da) + 250;
  ellipse(cx, cy, 25, 25);
}
