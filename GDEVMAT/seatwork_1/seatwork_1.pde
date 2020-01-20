void setup() 
{
  size(1080, 720, P3D); 
  camera(0, 0, -(height/2) / tan(PI * 30/180), 0, 0, 0, 0, -1, 0);
  background(255);
}

Walker walker = new Walker();
int frame;

void draw()
{
 walker.Render();
 walker.RandomWalk();
 float randomNumber = floor(random(5));
 println(randomNumber);
}

void
