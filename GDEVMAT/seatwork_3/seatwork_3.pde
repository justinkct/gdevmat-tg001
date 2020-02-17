void setup() 
{
  size(1920, 1080, P3D); 
  camera(0, 0, -(height/2) / tan(PI * 30/180), 0, 0, 0, 0, -1, 0);
  background(0);
}

  float r_t = 100;
  float g_t = 150;
  float b_t = 200;

PVector mousePos()
{
   float x = mouseX - Window.windowWidth;
   float y = -(mouseY - Window.windowHeight);
   return new PVector(x,y);
}


void draw()
{
  background(0);
  
  PVector mouse = mousePos();
  //PVector handle = handle();
  //handle.normalize();
  //handle.mult(100);
  mouse.normalize();
  mouse.mult(500);
  strokeWeight(14);
  stroke(map(noise(r_t), 0, 1, 0, 255), map(noise(g_t), 0, 1, 0, 255), map(noise(b_t), 0, 1, 0, 255), 245);
  line(-mouse.x, -mouse.y, mouse.x, mouse.y);
  strokeWeight(8);
  stroke(255, 255, 255);
  line(-mouse.x, -mouse.y, mouse.x, mouse.y);
  strokeWeight(15);
  stroke(150);
  mouse.normalize();
  mouse.mult(50);
  line(-mouse.x, -mouse.y, mouse.x, mouse.y);
  
  mouse.rotate(1.5708);
  mouse.normalize();
  mouse.mult(100);
  strokeWeight(14);
  stroke(map(noise(r_t), 0, 1, 0, 255), map(noise(g_t), 0, 1, 0, 255), map(noise(b_t), 0, 1, 0, 255), 245);
  line(-mouse.x, -mouse.y, mouse.x, mouse.y);
  strokeWeight(8);
  stroke(255, 255, 255);
  line(-mouse.x, -mouse.y, mouse.x, mouse.y);
  mouse.normalize();
  mouse.mult(40);
  strokeWeight(15);
  stroke(150);
  line(-mouse.x, -mouse.y, mouse.x , mouse.y);
  
  r_t += 0.01f;
  g_t += 0.01f;
  b_t += 0.01f;
}
