void setup() 
{
  size(1920, 1080, P3D); 
  camera(0, 0, -(height/2) / tan(PI * 30/180), 0, 0, 0, 0, -1, 0);
  background(0);
}

Walker walker = new Walker();

void draw()
{
  walker.RandomWalk();
  walker.Render();
}
