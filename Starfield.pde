Star[] stars = new Star[800];

float speed;

void setup()
{
  size(600, 600);
  
  for (int x = 0; x < stars.length; x++)
  {
    stars[x] = new Star();
  }
}

void draw()
{
  speed = map(mouseX, 0, width, 0, 50);
  
  background(0);
  translate(width / 2, height / 2);
  
  for (int x = 0; x < stars.length; x++)
  {
    stars[x].update();
    stars[x].show();
  }
}