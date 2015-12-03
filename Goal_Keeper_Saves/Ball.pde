// Created the class for the image of the ball and the speed of the ball 

class Ball
{
  //Setting the private functions for the class
  private int _x;
  private int _y;
  private PImage _img1; 
  
  //Setting up the default constructor
  Ball()
  {
    _x = 0;
    _y = 0;
    _img1 = null;
  }
  
  //Sets the position of each image on the screen
  public void SetPosition(int newX1, int newY1)
  {
    _x = newX1;
    _y = newY1;
  }
  
  public void SetImage(PImage img)
  {
    _img1 = img;
  }

  // Error Checking to see if the image is there for the ball
  public void Draw()
  {
    if(_img1 != null)
    {
      image(_img1, _x, _y);
    }
    else
    {
      println("ERROR: Ball has no image!");
    }
  }
  
  // Seeing if the image and the area of where the player will hit the "ball"
  public boolean IsColliding(Ball other)
  {
    return false;
  }
}