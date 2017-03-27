//Create array of stars for the field
Star[] stars = new Star[800];

float speed;

/**
 * Method to set up the star field.
 */
void setup()
{
  size(600, 600);
  
  for (int x = 0; x < stars.length; x++)
  {
    stars[x] = new Star();
  }
}

/**
 * Method to draw the starfield.
 */
void draw()
{
  //Maps the mouse position to the speed of the stars
  speed = map(mouseX, 0, width, 0, 50);
  
  //Black background
  background(0);
  translate(width / 2, height / 2);
  
  //Update and show all of the stars on the field
  for (int x = 0; x < stars.length; x++)
  {
    stars[x].update();
    stars[x].show();
  }
}