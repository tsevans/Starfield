/**
 * Class to represent a star in the starfield.
 */
class Star
{
  //Three dimensional coordinates of the star in the field
  float x;
  float y;
  float z;
  float pz;
  
  /**
   * Default constructor for a star.
   */
  Star()
  {
    x = random(-width/2, width/2);
    y = random(-height/2, height/2);
    z = random(width/2);
    pz = z;
  }
  
  /**
   * Method to update the appearance of a star as it moves.
   */
  void update()
  {
    z = z - speed;
    
    if (z < 1)
    {
      z = width/2;
      x = random(-width/2, width/2);
      y = random(-height/2, height/2);
      pz = z;
    }
  }
  
  /**
   * Method to display the star.
   */
  void show()
  {
    //Makes the star white
    fill(255);
    noStroke();
    
    //Determines speed in the x and y directions according to the z axis
    float sx = map(x / z, 0, 1, 0, width/2);
    float sy = map(y / z, 0, 1, 0, height/2);
    
    float r = map(z, 0, width/2, 16, 0);
    ellipse(sx, sy, r, r);
    
    float px = map(x / pz, 0, 1, 0, width/2);
    float py = map(y / pz, 0, 1, 0, height/2);
    
    pz = z;
    
    stroke(255);
    line(px, py, sx, sy);
  }
}