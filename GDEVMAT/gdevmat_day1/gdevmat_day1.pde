void setup() 
{
  size(1080, 720, P3D); 
  camera(0, 0, -(height/2) / tan(PI * 30/180), 0, 0, 0, 0, -1, 0);
}

int frame;

void draw() 
{
  strokeWeight(1);
  stroke(0, 0, 0);
  line(300, 0, -300, 0);
  line(0, 300, 0 , -300);
  
  for (int i = -300; i <= 300; i+=10) 
  {
   line(i, -5, i, 5);
   line(-5, i, 5, i);
  }
  
  //drawLinearFunction();
  drawQuadraticFunction();
  //drawCircle();
  drawSineWave();
}

void drawLinearFunction()
{
  for (int x = -200; x <= 200; x++) 
  {
    stroke(255, 0, 0);
    circle(x, x * 2 - 3, 1);
  }
}

void drawQuadraticFunction()
{
  for (float x = -300; x <= 300; x+=0.1f)
  {
    stroke(0, 255, 0);
    circle(10 * x, (float)Math.pow(x,2), 1);
  }
}

float radius = 50;
void drawCircle()
{
 for (int i = 0; i < 360; i++)
 {
  stroke(255, 255, 0);
  circle((float)Math.cos(i) * radius, (float)Math.sin(i) * radius, 1); 
 }
}

float i = -300;
void drawSineWave()
{
 for (float x = -300; x < 300; x+= 0.1f)
 {
  stroke(0, 0, 255);
  circle((x * 10, 25 * (float)Math.sin(x--), 2); 
 }
}
