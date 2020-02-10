class Walker
{
  float x;
  float y;
  float r_t = 100;
  float g_t = 150;
  float b_t = 200;
  float x_t = 20;
  float y_t = 40;
  float s_t = 80;

  Walker()
  {
  r_t = 100;
  g_t = 150;
  b_t = 200;
  x_t = 20;
  y_t = 40;
  s_t = 80;
  }
  
  void Render()
  {
    circle(x, y, map(noise(s_t), 0, 1, 30, 200));
  }
  
  void RandomWalk()
  {
  x = map(noise(x_t), 0, 1, Window.left, Window.right);
  y = map(noise(y_t), 0, 1, Window.bottom, Window.top);
    
  //stroke(map(noise(r_t), 0, 1, 0, 255), map(noise(g_t), 0, 1, 0, 255), map(noise(b_t), 0, 1, 0, 255));
  noStroke();  
  fill(map(noise(r_t), 0, 1, 0, 255), map(noise(g_t), 0, 1, 0, 255), map(noise(b_t), 0, 1, 0, 255), 255);
  
  r_t += 0.1f;
  g_t += 0.1f;
  b_t += 0.1f;
  x_t += 0.01f;
  y_t += 0.01f;
  s_t += 0.01f;
  }
}
  
