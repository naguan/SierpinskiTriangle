public int l = 100;
public boolean goBig = true;
public int r = 0;
public float s = 0;
public void setup() 
{
  background(255);
  size(500, 500);
}
public void draw()
{
  background(255);
  fill(123, 135, 235);
println(l);
  sierpinski(mouseX-l/2, mouseY-l/2, l);
}
public void mouseWheel(MouseEvent event)//optional
{
  int e = event.getAmount() * 25;
  
  if (  goBig == true )
  {
    l += e;
    if (l == 500)
    {
      goBig = false;
    }
  }
  if (goBig == false)
  {
    l -= e;
    if( l == 0 )
    {
      goBig = true;
    }
  }
}
public void sierpinski(int x, int y, int len) 
{
  if (len < 20)
  {
    triangle(x, y, x+len/2, y+len, x+len, y);
  } else {
    triangle(x, y, x+len/2, y+len, x+len, y);
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y+len/2, len/2);
  }
}
